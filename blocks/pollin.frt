( test routines for the atmel evaluation )
( boards from www.pollin.de )

( needs the device register definitions loaded )

decimal

\ wait some milliseconds
: ms 1- 0 do 1ms loop ;
: blinkdelay 250 ms ;

hex

\ port and bit number combined
PORTD 8 lshift 20 or constant led1
PORTD 8 lshift 40 or constant led2

\ could be part of a library
: on  dup 8 rshift swap ff and 
    over c@ or swap c! 
;

: off dup 8 rshift swap ff and 
    over c@ swap invert and swap 
    c! 
;

: blink 
    led1 on blinkdelay 
    led2 on blinkdelay
    led2 off blinkdelay
    led1 off blinkdelay
;

: portinit 
    E0 DDRD c! 
;

\ all tests run until a terminal-key is pressed
\ simple light on/off
: led 
    begin 
	blink 
	key? 
    until 
    key drop \ we do not want to keep this key stroke
;

\ as long as a key on the board is pressed the
\ corresponding led/buzzer is turned on as long as
\ the key is pressed
: keys 
    begin
        PIND c@ 
	fc and
	3 lshift
	PORTD c!
    key? until
    key drop \ we do not want to keep this key stroke
;

\ autoconfig the i/o ports
' portinit turnkey e!
