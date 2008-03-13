
\ #include twi.frt

\ _twieeprom_
\ marker _twieeprom_

hex

A0 value twi.ee-addr    \ twi address of the eeprom
40 value twi.ee-b/blk   \ bytes per block
 
: set-rw
    1 or
;

\ directly address a single byte
: twi.ee-c! ( c addr -- )
    \ send device address
    twi.ee-addr
    twi.start
    twi.tx 18 twi.status?
    \ send eeprom cell address, high part first
    dup ><
    twi.tx 28 twi.status?
    twi.tx 28 twi.status?
    \ send data byte 
    twi.tx 28 twi.status?
    twi.stop
;

: twi.ee-c@ ( addr -- c )
    twi.ee-addr
    twi.start
    twi.tx 18 twi.status?
    dup ><
    twi.tx 28 twi.status?
    twi.tx 28 twi.status?
    \ repeated start to read the data bye
    twi.start 10 twi.status?
    twi.ee-addr set-rw twi.tx 40 twi.status?
    twi.rxn 58 twi.status?
    twi.stop
;

\ work on a page. a page is the operational unit
\ the eeprom works with internally. It's size is
\ defined in twi.ee-b/blk. The pages are numbered
\ from 0 upward. page 1 has the starting address 
\ twi.ee-b/blk.

: block2addr ( pagenumber -- pageaddress )
    twi.ee-b/blk log2 lshift ;
;

: twi.ee-saveblock ( ramaddr pagenumber -- )
    twi.ee-addr
    twi.start    
    twi.tx 18 twi.status?
    block2addr
    twi.ee-b/blk 1- invert and \ mask the lower bits
    dup ><
    twi.tx 28 twi.status?
    twi.tx 28 twi.status?
    twi.ee-b/blk 0 ?do
	dup 
	c@ twi.tx 28 twi.status?
	1+
    loop
    drop
    twi.stop
;

: twi.ee-loadblock ( addr pagenumber -- )
    twi.ee-addr
    twi.start    
    twi.tx 18 twi.status?
    block2addr
    twi.ee-b/blk 1- invert and \ mask the lower bits
    dup ><
    twi.tx 28 twi.status?
    twi.tx 28 twi.status?
    \ repeated start to receive the data bytes
    twi.start 10 twi.status?
    twi.ee-addr set-rw twi.tx 40 twi.status?
    twi.ee-b/blk 1- 0 ?do
	twi.rx 50 twi.status?
	over c! 1+
    loop
    twi.rxn 58 twi.status? swap c!
    twi.stop
;
