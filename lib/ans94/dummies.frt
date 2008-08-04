\ following words are stupid placeholders
\ 

\ we do not have any environment
: environment? ( addr n -- f )
    drop drop 0 ;

\ we do not evaluate strings
: evaluate ( *ix uaddr n -- *jx )
    drop drop
;
