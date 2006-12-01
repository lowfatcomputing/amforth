\ some useful definitions

\ stack operations
: nib 
    swap drop 
;
: tuck 
    swap over 
;
: peek 1+ cells sp@ + @ ;
: -rot rot rot ;

\ part of the core wordset

: cells 2* ;
: cell+ 2+ ;

\ eeprom management, similiar to 
\ flash related words (prefix e)
: ehere ( -- n )
    eheap e@ 
;

: eallot ( n -- )
    eheap e@ + eheap e!
;

\ ram management, similiar to
\ flash and eeprom (prefix r)
: rhere ( -- n )
    heap e@
;

: rallot ( n -- )
    heap e@ + heap e! 
;
