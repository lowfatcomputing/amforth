\ some words missing for ans compatability

\ forget ccc resets dictionary to the word given
: forget
    bl word find if
	1-
	dup 
	i@ head e!
	dp e!
    else
        drop
    then
;

\ defines a word which resets the dictionary when called 
: marker
    head e@
    dp   e@
    edp  e@
    heap e@
    create , , , ,
    does>
    dup i@ heap e!
    1+ dup i@ edp  e!
    1+ dup i@ dp   e!
    1+ i@ head e!
;


\ a cell is 16 bit in amforth
: cell+ 2 + ;
: cells 2* ;

\ atmegas are always aligned
: align ;
: aligned ;

\ we do not have any environment
: environment?
    drop drop 0 ;

\ not really ans, but often used
: nip ( a b -- b )
    swap drop 
;
: tuck ( a b -- b a b )
    swap over
;

\ a stack is an array too
: peek 1+ cells sp@ + @ ;

: -rot rot rot ;

\ +! ( n addr -- )
: +! 
  tuck @ + swap ! ;

\ some double cell words, mostly taken from gforth

\ 2drop	( w1 w2 -- )		core	two_drop
: 2drop
 drop drop ;

\ 2dup	( w1 w2 -- w1 w2 w1 w2 )	core	two_dupe
: 2dup
 over over ;

\ 2over	( w1 w2 w3 w4 -- w1 w2 w3 w4 w1 w2 )	core	two_over
: 2over
  >r >r
  over over
  r>
  rot rot
  r>
  rot rot ;
  
\ 2swap	( w1 w2 w3 w4 -- w3 w4 w1 w2 )	core	two_swap
: 2swap
 rot >r rot r> ;

\ 2rot	( w1 w2 w3 w4 w5 w6 -- w3 w4 w5 w6 w1 w2 )	double-ext	two_rote
: 2rot
 >r >r 2swap r> r> 2swap ;

\ 2nip	( w1 w2 w3 w4 -- w3 w4 )	gforth	two_nip
: 2nip
 2swap 2drop ;

\ 2tuck	( w1 w2 w3 w4 -- w3 w4 w1 w2 w3 w4 )	gforth	two_tuck
: 2tuck
 2swap 2over ;

\ 2rot	( w1 w2 w3 w4 w5 w6 -- w3 w4 w5 w6 w1 w2 )	double-ext	two_rote
: 2rot
 >r >r 2swap r> r> 2swap ;

\ 2@ ( addr -- n1 n2 )
: 2@
  dup cell+ @ swap @ ;
  
\ 2! ( n1 n2 addr -- )
: 2!
  swap over ! cell+ ! ;
  
