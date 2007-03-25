\ always compile the next word
\ Implementation by Ulrich Hoffmann

: postpone ( -- )
    bl word find dup 0< if compile compile , exit then
    if , exit then
    [ decimal ] -13 throw ; immediate
