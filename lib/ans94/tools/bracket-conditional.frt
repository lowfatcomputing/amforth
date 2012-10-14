
: [else]     \ ( -- )
    1
    begin
        begin
            parse-name 
            dup
        while
            2dup s" [if]" icompare 0=
            if
                2drop 1+
            else
                2dup s" [else]" icompare 0=
                if
                    2drop 1- dup
                    if 1+ then
                else
                    s" [then]" icompare 0=
                    if 1- then
                then
            then
            ?dup 0=
            if exit then
        repeat 2drop
        refill 0=
    until
    drop
; immediate

: [if]     \ ( flag -- )
    0= if postpone [else] then
; immediate

: [then] ; immediate
