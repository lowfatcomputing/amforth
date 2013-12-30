; ( i -- xt ) 
; Interrupt
; fetches XT from interrupt vector i
VE_INTFETCH:
    .word 0xff04
    .ascii "int@"
    .word VE_HEAD
    .set VE_HEAD, VE_INTFETCH
XT_INTFETCH:
    .word DO_COLON
PFA_INTFETCH:
    .word XT_DOLITERAL
    .word intvec
    .word XT_PLUS
    .word XT_FETCH
    .word XT_EXIT
