( test routines for the atmel evaluation )
( boards from www.pollin.de )
( needs the device register definitions loaded )
forget ms
decimal

\ wait some milliseconds

: ms 0 do 1ms loop ;
: blinkdelay 250 ms ;

hex

\ port and bit number combined
: portpin create swap 8 lshift or , does> i@ ;

PORTD 20 portpin led1
PORTD 40 portpin led2

\ could be part of a library
: on ( n -- )
    dup 8 rshift swap ff and 
    over c@ or swap c! 
;

: off ( n -- ) 
    dup 8 rshift swap ff and 
    over c@ swap invert and swap 
    c! 
;


: portinit 
    E0 DDRD c! 
;

\ test runs until a terminal-key is pressed

\ as long as a key on the board is pressed the
\ corresponding led/buzzer is turned on 
: keys 
    begin
        PIND c@ 
	fc and
	3 lshift
	PORTD c!
    key? until
    key drop \ we do not want to keep this key stroke
;


: blink ( -- )
  led1 on blinkdelay
  led2 on blinkdelay
  led2 off blinkdelay
  led1 off blinkdelay
;

\ simple lights on/off
: led 
    begin 
	blink 
	key? 
    until 
    key drop \ we do not want to keep this key stroke
;

\ autoconfig the i/o ports
' portinit 'turnkey e!
