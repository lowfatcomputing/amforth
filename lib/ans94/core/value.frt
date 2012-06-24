\ *******************************************
\ values operate in EEPROM. Usage pattern
\ write seldom read often fits perfectly to it
\ *******************************************

: value ( n -- )
    (create) get-current !e
    ['] (value) ,
    edp dup , dup cell+ to edp !e
    ['] @e ,
    ['] !e ,
;
