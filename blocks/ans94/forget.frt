\ forget ccc resets dictionary to the word given
\ the following code does not do a complete restore
\ 
: forget ( c<chars> -- )
    bl word find if
	1-
	dup 
	i@ head e!
	dp e!
    else
        drop
    then
;
