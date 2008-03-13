\ Sinus table                        21feb88 ck
decimal
create sintab
   0 ,  349 ,  698 , 1045 , 1392 , 1736 , 2079 , 2419 ,
2765 , 3090 , 3420 , 3746 , 4067 , 4384 , 4695 , 5000 ,
5299 , 5592 , 5878 , 6157 , 6428 , 6691 , 6947 , 7193 ,
7431 , 7660 , 7880 , 8090 , 8290 , 8480 , 8660 , 8829 ,
8988 , 9135 , 9272 , 9397 , 9511 , 9613 , 9703 , 9781 ,
9848 , 9903 , 9945 , 9976 , 9994 , 10000 ,

\ interpolate sintab
: sin0-90 ( n1 - n2 )
    dup dup 2/ 2* =
    if
        2/ sintab + i@
    else
        2/ sintab + dup i@ swap 1+ i@ + 2/
    then 
;

: sin0-360 ( n 1 -- n 2 )
    dup 180 > if 180 - -1 else 0 then
    swap dup 90 > if negate 180 + then
    sin0-90
    swap 
    if negate then ;

\ Sinus, Cosinus                     21feb88 ck
: sin ( n l - - n 2 )
    dup 0<    if begin 360 + dup   0>  until then
    dup 360 > if begin 360 - dup 360 < until then
    sin0-360 
;

: cos ( n 1 - n 2 )
    90 + sin 
;

\ : tan dup sin 10000 rot cos */ ;
