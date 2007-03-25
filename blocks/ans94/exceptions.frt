\ ******************************************
\ some exceptions 
\ ******************************************
: ?comp  ( -- )
    state @ 0= 
    if [ decimal ] -14 throw then ;

: ?pairs ( n1 n2 -- ) 
    - 
    if [ decimal ] -22 throw then ;

: ?stack ( -- )
    depth 0< if -4 throw then
;
