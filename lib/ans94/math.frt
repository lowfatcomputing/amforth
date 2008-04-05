
: dnegate dinvert 1 s>d d+ ;

: dabs dup 0< if dnegate then ;

\ from gforth

: fm/mod  ( d1 n1 -- n2 n3 )
 dup >r dup 0< if  negate >r dnegate r>  then
 over       0< if  swap over + swap  then
 um/mod
 r> 0< if  swap negate swap  then 
;

: sm/rem  ( d1 n1 -- n2 n3 )
 over >r dup >r abs rot rot
 dabs rot um/mod
 r> r@ xor 0< if       negate       then
 r>        0< if  swap negate swap  then 
;

