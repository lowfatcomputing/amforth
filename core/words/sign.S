; ( n -- ) 
; Numeric IO
; place a - in HLD if n is negative
VE_SIGN:
    .word 0xff04
    .ascii "sign"
    .word VE_HEAD
    .set VE_HEAD, VE_SIGN
XT_SIGN:
    .word DO_COLON
PFA_SIGN:
    .word XT_LESSZERO
    .word XT_DOCONDBRANCH
    .word PFA_SIGN1
    .word XT_DOLITERAL
    .word 0x2d
    .word XT_HOLD
PFA_SIGN1:
    .word XT_EXIT
