\
\ enrich the serial IO with XON/XOFF
\  this is not a complete and fool-proof 
\  implementation it requires cooperation 
\  from accept
\

hex
11 constant XON
13 constant XOFF

variable xonxoff

0 xonxoff !

\ when asking for a character we want them.
: x-key?
    XON emit
    rx0?
;

\ we no longer want characters. Stop remote sender.
\ the input buffer from usart0 may get outstanding characters
: x-/key
    XOFF emit
;

\ fetch character, check if we receive a XON/XOFF and set state for x-emit
: x-key
    rx0
    dup XOFF = if
	\ set flag to stop emits
	1 xonxoff !
	\ replace control code with blank
	drop bl 
    then
    dup XON = if
	\ clear flag for emit
	0 xonxoff !
	drop bl
    then
;

: x-emit
    \ wait for clear-to-send and send a character
    begin
        xonxoff @ 0= 
	if 
	    tx0 exit
	then
    again
;

: x-emit?
    tx0? 
    xonxoff @ 0=
    and
;

\ activate xonxoff 
: +xonxoff
    ['] x-key? is key?
    ['] x-key  is key 
    ['] x-/key is /key
    
    ['] x-emit? is emit?
    ['] x-emit  is emit 
;

\ restore default settings
: -xonxoff
    ['] rx0? is key?
    ['] rx0  is key 
    ['] noop is /key
    
    ['] tx0? is emit?
    ['] tx0  is emit !
;
