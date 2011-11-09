\ some words missing for ans compatability

: source-id ( -- f )
    0 \ always user input device
;

\ atmegas are always aligned
: align ;
: aligned ;

\ flash is 2 characters
: c, , ;

: char+ 1+ ;
: chars ;

\  converts the address of the xt into the parameter field address
: >body ( xt -- pfa )
    1+
;

\ go from the XT backwards to get the Name field
: >name ( xt -- nfa )
    1- \ link address
    \ tricky: we look for the flash cell whose address + it content & 0x00ff is
    \ this address
    dup 1- >r ( -- lfa)
    begin
	1- dup ( -- fla fla )
	@i $00ff and 1+ 2/ ( -- fla len )
	over + ( fla lfa? )
	r@ = ( fla lfa? )
    until
    r> drop
;


\ displays the value of the given address with current base
: ? ( addr -- )
    @ . ;

: tuck ( n1 n2 -- n2 n1 n2 )
  swap over 
;

: blank  ( addr n -- )
  bl fill
;

: move
  >r 2dup u< if r> cmove> else r> cmove then ;
