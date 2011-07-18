\ always compile the next word
\ Implementation by Ulrich Hoffmann

: postpone ( -- )
    parse-name find-name dup 0< 
    if 
	drop compile compile , exit 
    then
    if 
	, exit 
    then
    drop
    -&13 throw 
; immediate
