\ some useful definitions

: peek 1+ cells sp@ + @ ;
: -rot rot rot ;

\ eeprom management, similiar to 
\ flash related words (prefix e)
: ehere ( -- n )
    edp e@ 
;

: eallot ( n -- )
    edp e@ + edp e!
;

\ ram management, similiar to
\ flash and eeprom (prefix r)
: rhere ( -- n )
    heap e@
;

: rallot ( n -- )
    heap e@ + heap e! 
;

