\ defines a word which resets the dictionary when called 
\ better then forget but has still limitations

: marker ( c<chars> -- )
    head e@
    dp   e@
    edp  e@
    heap e@
    create , , , ,
    does>
    dup i@ heap e!
    1+ dup i@ edp  e!
    1+ dup i@ dp   e!
    1+ i@ head e!
;
