; ( n w -- ) 
; Numeric IO
; singed PNO with single cell numbers, right aligned in width w
VE_DOTR:
    .word 0xff02
    .ascii ".r"
    .word VE_HEAD
    .set VE_HEAD, VE_DOTR
XT_DOTR:
    .word DO_COLON
PFA_DOTR:
    .word XT_TO_R
    .word XT_S2D
    .word XT_R_FROM
    .word XT_DDOTR
    .word XT_EXIT
; : .r        ( s n -- )  >r s>d r> d.r ;
