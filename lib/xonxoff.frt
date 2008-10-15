\
\ enrich the serial IO with XON/XOFF
\  this is not a complete and fool-proof 
\  implementation it requires cooperation 
\  from accept
\

hex
11 constant XON
13 constant XOFF

\ state of communication flow
variable xonxoff

\ store the XT of the underlying IO words
variable o-key 
variable o-key?
variable o-/key

variable o-emit
variable o-emit?
 

\ when asking for a character we want them.
: x-key?
    XON emit
    o-key? @ execute
;

\ we no longer want characters. Stop remote sender.
\ the input buffer from usart0 may get outstanding characters
: x-/key
    XOFF emit
;

\ fetch character, check if we receive a XON/XOFF and set state for x-emit
: x-key
    o-key @ execute
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
	    o-emit @ execute exit
	else
	    pause
	then
    again
;

: x-emit?
    o-emit? @ execute
    xonxoff @ 0=
    and
;

\ activate xonxoff mode
: +xonxoff
    0 xonxoff !
    key? defer@ o-key? ! ['] x-key? is key?
    key  defer@ o-key  ! ['] x-key  is key 
    /key defer@ o-/key ! ['] x-/key is /key
    
    emit? defer@ o-emit? ! ['] x-emit? is emit?
    emit  defer@ o-emit  ! ['] x-emit  is emit 
;

\ restore default settings
: -xonxoff
    o-key? @ is key?
    o-key  @ is key 
    o-/key @ is /key
    
    o-emit? @ is emit?
    o-emit  @ is emit
;
