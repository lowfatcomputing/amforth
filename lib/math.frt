marker -math

\ Paul E Bennet comp.arch.embedded 4 May 2008
: sqrt  -1 swap over do  2 +  dup +loop  2/ ;

\ was part of the core
: u*/mod
  >r um* r>
  um/mod
;

\ dnegate  d1 -- d2          32 bit negate
: dnegate
  swap invert swap invert 1 m+
;

\ ?dnegate d1 n -- d2  negate d1 if n is negative
: ?dnegate
  0< if dnegate then
;

\ ?negate  n1 n -- n2  negate d1 if n is negative
: ?negate
  0< if negate then
;

\ dabs   d1 -- +d2     32 bit absolute value
: dabs
  dup ?dnegate
;

: sm/rem ( d1 n1 -- n2 n3 )
  2dup xor >r
  over >r
  abs >r dabs r> um/mod
  swap r> ?negate
  swap r> ?negate
;

: fm/mod ( d1 n1 -- n2 n3 )
  dup >r
  2dup xor >r
  >r
  dabs r@ abs um/mod
  swap r> ?negate swap
  r> 0< if
    negate
    over if
      r@ rot - swap 1-
    then
  then
  r> drop
;
