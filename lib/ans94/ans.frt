\ some words missing for ans compatability

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


\ atmegas are always aligned
: align ;
: aligned ;

\ flash is 2 characters
: c, , ;

\  converts the address of the xt into the parameter field address
: >body ( xt -- pfa )
    1+
;

\ displays the value of the given address with current base
: ? ( addr -- )
    @ . ;

\ milliseconds
: ms ( ms -- )
    0 ?do 1ms loop
;

: tuck ( n1 n2 -- n2 n1 n2 )
  swap over 
;

: nip ( n1 n2 -- n2 )
  swap drop
;


: blank  ( addr n -- )
  bl fill
;
