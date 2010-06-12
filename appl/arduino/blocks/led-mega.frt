\ let the led blink

$25 constant PORTB
$24 constant DDRB

\ change to output mode
 128 DDRB c!

\ turn the led on
: led-on
  128  PORTB c!
;

: led-off
  0 PORTB c!
;

: led-blink
  led-on 500 ms led-off 500 ms
;


: blink
    ." press any key to stop "
    begin
	led-blink
	key?
    until
    key drop \ we do not want to keep this key stroke
;

