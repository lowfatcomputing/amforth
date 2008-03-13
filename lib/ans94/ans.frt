\ some words missing for ans compatability

: true ( -- true )
    -1
;

\  converts the address of the xt into the parameter field address
: >body ( xt -- pfa )
    1+
;

\ displays the value of the given address with current base
: ? ( addr -- )
    @ . ;

: u.r ( u w -- )
      >r s>d  <# #s #>  r> over - 0 max spaces type ;

\ milliseconds
: ms ( ms -- )
    0 ?do 1ms loop
;
