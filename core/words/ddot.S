; ( d -- ) 
; Numeric IO
; singed PNO with double cell numbers
VE_DDOT:
    .word 0xff02
    .ascii "d."
    .word VE_HEAD
    .set VE_HEAD, VE_DDOT
XT_DDOT:
    .word DO_COLON
PFA_DDOT:
    .word XT_ZERO
    .word XT_DDOTR
    .word XT_SPACE
    .word XT_EXIT
; : d.        ( d -- )    0 d.r space ;
