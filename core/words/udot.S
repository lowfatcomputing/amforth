; ( u -- ) 
; Numeric IO
; unsigned PNO with single cell numbers
VE_UDOT:
    .word 0xff02
    .ascii "u."
    .word VE_HEAD
    .set VE_HEAD, VE_UDOT
XT_UDOT:
    .word DO_COLON
PFA_UDOT:
    .word XT_ZERO
    .word XT_UDDOT
    .word XT_EXIT
; : u.        ( us -- )    0 ud. ;
