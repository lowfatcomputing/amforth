\ test routines for the atmel evaluation
\ boards from www.pollin.de
\ needs the device register definitions loaded

decimal
\ wait some milliseconds

: blinkdelay 250 0 do 1ms loop ;

hex

\ port and bit number combined
\ runtime of the defined words
\   ( -- portaddr pinmask )
: portpin create
    swap 8 lshift or ,
  does> i@
    dup 8 rshift swap ff and over c@
;

: on ( n -- )
    or swap c!
;

: off ( n -- )
    swap invert and swap c!
;

PORTD 20 portpin led1
PORTD 40 portpin led2

: portinit
    E0 DDRD  c! \ io direction
    05 MCUCR c! \ int0/1
    C0 GICR  c! \ enable int0/1
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

: led1blink
  led1 on
  blinkdelay
  led1 off
;

\ simple lights on/off
: led
    begin
	blink
	key?
    until
    key drop \ we do not want to keep this key stroke
;

\ interrupt processing takes a long time, do not
\ press the key while it runs...
' led1blink 1 int!
' noop 2 int!

\ autoconfig the i/o ports
\ ' portinit 'turnkey e!
