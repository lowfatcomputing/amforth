\ ******************************************
\ some exceptions 
\ ******************************************
: ?comp  ( -- )
    state @ 0= 
    if [ base @ decimal ] -14 [ base ! ] throw then ;

: ?pairs ( n1 n2 -- ) 
    - 
    if [ base @ decimal ] -22  [ base ! ] throw then ;

: ?stack ( -- )
    depth 0< if [ base @ decimal ] -4  [ base ! ] throw then
;
