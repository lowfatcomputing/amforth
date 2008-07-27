\ some definitions that may be useful

: within? ( n lo hi -- f )
    >r 1- over < swap r> 1+ < and 
;

: tuck ( n1 n2 -- n2 n1 n2 )
  swap over 
;

: nip ( n1 n2 -- n2 )
  swap drop
;

: [undefined] bl word find swap drop 0= ; immediate


: erase  ( addr n -- )
  0 fill
;

: blanks  ( addr n -- )
  bl fill
;

: .(  \ (s -- )
   [char] ) word count type
; immediate

\ dump free ressources
: .res ( -- ) 
    base @ >r
    decimal
	." free FLASH cells      " unused u. cr
	." free RAM cells        " sp@ heap - u. cr
	." used EEPROM cells     " edp u. cr
	." used data stack cells " depth u. cr
	." used return stack     " rp0 rp@ - 1- 1- u. cr
	." free return stack     " rp@ sp0 - 1+ 1+ u. cr
    r> base !
;


\ calculates the baudrate register values
\ the two bytes of the result should be
\ transferred in high - low order

\ ( baudrate -- baud-rate-register)
: calc-baudrate
    f_cpu
    d2/ d2/ d2/ d2/
    rot um/mod
    swap drop 1-
;

\ print current BASE in decimal, keep BASE intact
: .base ( -- )
    base @ dup decimal . base !
;  
