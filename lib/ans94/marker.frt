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
       dup i@ is heap
    1+ dup i@ is edp 
    1+ dup i@ is here
    1+     i@ is head 
;
