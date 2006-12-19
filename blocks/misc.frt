\ some useful definitions

\ stack operations
: nip ( a b -- b )
    swap drop 
;
: tuck ( a b -- b a b )
    swap over
;

\ part of the core wordset

: cells 2* ;
: cell+ 2 + ;


: peek 1+ cells sp@ + @ ;
: -rot rot rot ;

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

