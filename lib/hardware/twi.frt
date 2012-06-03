\ basic twi/I2C operations

\ requires
\   in the application master file
\  .set WANT_TWI = 1
\
\ provides
\  twi.init          -- initialize TWI subsystem
\  twi.init.default -- some default settings
\  twi.off           -- turns off TWI subsystem
\
\  twi.wait          -- wait for the current TWI transaction
\  twi.start         -- send start condition
\  twi.stop          -- send stop condition
\  twi.tx            -- send one byte
\  twi.rx            -- receive one byte with ACK
\  twi.rxn           .. receive one byte with NACK
\  twi.status        -- get the last TWI status
\  twi.is-status?    -- compares the status with preset
\  twi.ping?         -- checks if addr is a device
\  twi.scan          -- prints a small list of devices
\

\ enable twi
: twi.init ( prescaler bitrate  -- )
    0 TWCR c! \ stop TWI
    TWBR c!   \ set bitrate register
    03 and TWSR c! \ the prescaler has only 2 bits
;

\ some random initialization.
\ on 16MHz devices use 40kHz twi clock speed
: twi.init.default
    3 3 twi.init ;

\ turn off twi
: twi.off ( -- )
    0 TWCR c!
;
\ wait for twi finish
: twi.wait ( -- )
    begin
       TWCR c@ $80 and
    until
;

\ send start condition
: twi.start ( -- )
    %10100100 TWCR c!
    twi.wait
;

\ send stop condition
: twi.stop ( -- )
    %10010100 TWCR c!
    \ no wait for completion.
;
\ process the data
: twi.action
    %10000100 or TWCR c! \ _BV(TWINT)|_BV(TWEN)
    twi.wait
;

\ send 1 byte
: twi.tx ( c -- )
    TWDR c!
    0 twi.action
;

\ receive 1 byte, send ACK
: twi.rx ( -- c )
    %01000000 \ TWEA
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
    $f8 and
;

\ detect presence of a device on the bus
: twi.ping?   ( addr -- f )
    twi.start 
    twi.tx
    twi.status $18 =
    twi.stop 
;

\ detect presence of all possible devices on I2C bus
\ only the 7 bit address schema is supported
: twi.scan   ( -- )
    $ff 0 do
      i dup          \ Test even addressess: write action only.
      twi.ping? if            \ does device respond?
            u. ."   found" cr
      else
        drop 
      then
    2
    +loop 
;
