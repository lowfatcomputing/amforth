\ defines a word which resets the dictionary when called 
\ better then forget but has still limitations

: marker ( c<chars> -- )
    head 
    here 
    edp  
    heap 
    \ maybe save turnkey as well
    create , , , ,
    does>
       dup i@ to heap
    1+ dup i@ to edp 
    1+ dup i@ to here
    1+     i@ to head 
;
