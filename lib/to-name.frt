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
