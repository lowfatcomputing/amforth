\ always compile the next word
\ Implementation by Ulrich Hoffmann

: postpone ( -- )
    bl word find dup 0< 
    if 
	drop compile compile , exit 
    then
    if 
	, exit 
    then
    drop
    [ base @ decimal ] -13 [ base ! ] throw 
; immediate
