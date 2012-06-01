\ basic twi/I2C operations

\ requires
\   in the application master file
\  .set WANT_TWI = 1
\
\ provides
\  twi::init          -- initialize TWI subsystem
\  twi::init::default -- some default settings
\  twi::off           -- turns off TWI subsystem
\
\  twi::wait          -- wait for the current TWI transaction
\  twi::start         -- send start condition
\  twi::stop          -- send stop condition
\  twi::tx            -- send one byte
\  twi::rx            -- receive one byte with ACK
\  twi::rxn           .. receive one byte with NACK
\  twi::status        -- get the last TWI status
\  twi::is-status?    -- compares the status with preset
\  twi::ping?         -- checks if addr is a device
\  twi::scan          -- prints a small list of devices
\

\ enable twi
: twi::init ( prescaler bitrate  -- )
    TWBR c! 
    03 and TWSR c!
;

\ some random initialization. Works fine with 8 MHz
: twi::init::default
    $7f 3 twi::init ;

\ turn off twi
: twi::off ( -- )
    0 TWCR c!
;
\ wait for twi finish
: twi::wait ( -- )
    begin
	TWCR c@ $80 and
    until
;

\ send start condition
: twi::start ( -- )
    %10100100 TWCR c!
    twi::wait
;

\ send stop condition
: twi::stop ( -- )
    %10010100 TWCR c!
    \ no wait for completion.
;
\ process the data 
: twi::action
    %10000100 or TWCR c!
    twi::wait
;

\ send 1 byte via twi
: twi::tx ( c -- )
    TWDR c!
    0 twi::action
;

\ receive 1 byte, send ACK
: twi::rx ( -- c )
    %01000000 \ TWEA
    twi::action
    TWDR c@
;

\ receive 1 byte, send NACK
: twi::rxn ( -- c )
    0 twi::action
    TWDR c@
;

\ get twi status
: twi::status ( -- n )
    TWSR c@
    $f8 and
;

\ compare twi status with desired result, throw
\ an exception if not met
: twi::is-status? ( n -- )
    twi::status over <> 
    if 
      u. -&20 throw \ "write to read-only location"
    else
      drop
    then

;

\ detect presence of a device on the bus
: twi::ping?   ( addr -- f )
    twi::start 
    twi::tx
    twi::status $18 =
    twi::stop 
;

\ detect presence of all possible devices on I2C bus
\ only the 7 bit address schema is supported
: twi::scan   ( -- )
    $ff 0 do
      i dup          \ Test even addressess: write action only.
      twi::ping? if            \ does device respond?
            u. ."   found" cr
      else
        drop 
      then
    2
    +loop 
;
