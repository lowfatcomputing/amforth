; ( xt i -- )  
; Interrupt
; stores XT as interrupt vector i
VE_INTSTORE:
    .word 0xff04
    .ascii "int!"
    .word VE_HEAD
    .set VE_HEAD, VE_INTSTORE
XT_INTSTORE:
    .word DO_COLON
PFA_INTSTORE:
    .word XT_DOLITERAL
    .word intvec
    .word XT_PLUS
    .word XT_STORE
    .word XT_EXIT
