\ *******************************************
\ defer operates in EEPROM. See proposal
\ *******************************************

\ include "postpone.frt"

: defer ( "name" -- )
      create  
      edp e@ 
      dup ,             \ save in dictionary
      dup 1+ 1+ edp e!  \ allot 1 cell in EEPROM
      ['] abort swap e! \ default action is abort
   does> ( i*x -- j*x ) i@ e@ execute 
; 

: defer@ ( xt1 -- xt2 )
    1+ i@ e@
;

: defer! ( xt2 xt1 -- )
    1+ i@ e!
;

: is ( x <name> -- )
    state @   
    if 
	postpone ['] postpone defer!
    else
	' defer!
    then
; immediate 

: action-of
    state @
    if
	postpone ['] postpone defer@
    else
	' defer@
    then
; immediate
