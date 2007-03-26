\ following words are stupid placeholders
\ 
: source-id ( -- f )
    0 \ always user input device
;

\ provide some kind of rewind
: save-input ( -- x1 1 )
    >in @ 1 
;


: restore-input ( x1 1 -- )
    drop >in !
;

: refill ( -- f )
    -1
;


\ atmegas are always aligned
: align ;
: aligned ;

\ we do not have any environment
: environment? ( addr n -- f )
    drop drop 0 ;

\ we do not evaluate strings
: evaluate? ( *ix uaddr n -- *jx )
    drop drop
;
