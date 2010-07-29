\ some definitions that may be useful

: erase  ( addr n -- )
  0 fill
;

: .(  \ (s -- )
   [char] ) word count type
; immediate

\ dump free ressources
: .res ( -- ) 
    base @ >r
    decimal
	." free FLASH cells      " unused u. cr
	." free RAM bytes        " sp@ here - u. cr
	." used EEPROM bytes     " edp u. cr
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
