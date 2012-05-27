\ basic twi/I2C operations

\ _twi_
\ marker _twi_

hex

\ enable twi
: +twi ( prescaler bitrate  -- )
    TWBR c! 
    03 and TWSR c!
;

\ some random initialization. Works fine with 8 MHz
: twi.default
    7f 3 +twi ;

\ turn off twi
: -twi ( -- )
    0 TWCR c!
;
\ wait for twi finish
: twi.wait ( -- )
    begin
	TWCR c@ 80 and
    until
;

\ send start condition
: twi.start ( -- )
    [ 1 7 lshift
      1 5 lshift or 
      1 2 lshift or ] literal
    TWCR c!
    twi.wait
;

\ send stop condition
: twi.stop ( -- )
    [ 1 7 lshift
      1 4 lshift or 
      1 2 lshift or ] literal
    TWCR c!
    \ no wait for completion.
;
\ process the data 
: twi.action
    [
	1 7 lshift 
	1 2 lshift or
    ] literal or
    TWCR c!
    twi.wait
;

\ send 1 byte via twi
: twi.tx ( c -- )
    TWDR c!
    0 twi.action
;

\ receive 1 byte, send ACK
: twi.rx ( -- c )
    1 6 lshift  \ TWEA
    twi.action
    TWDR c@
;

\ receive 1 byte, send NACK
: twi.rxn ( -- c )
    0 twi.action
    TWDR c@
;

\ get twi status
: twi.status ( -- n )
    TWSR c@
    f8 and
;

\ compare twi status with desired result, throw
\ an exception if not met
: twi.status? ( -- )
    twi.status over <> 
    if 
	u. -14 throw \ decimal -20, write to read-only location
    else
	drop
    then

;

\ detect presence of a device on the bus
: twi.ping?   ( addr -- f )
    twi.start 
    twi.tx
    twi.status 
    18 =
    twi.stop 
;

\ detect presence of all possible devices on I2C bus
\ only the 7 bit address schema is supported
: twi.scan   ( -- )
    ff 0 do
	i dup          \ Test even addressess: write action only.
        twi.ping? if            \ does device respond?
            u. ."   found" cr
	else
	    drop 
        then
    2
    +loop 
;
