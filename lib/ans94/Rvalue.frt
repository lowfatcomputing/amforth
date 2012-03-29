\ ***************************
\ RAM values: Useful for not-so-seldom
\ changing values.
\ ***************************
: Rvalue ( n "name" -- )
    (create) get-current !e
    ['] (value) ,
    here ,
    ['] @ ,
    ['] ! ,
    here 2 allot !
;

