; ( -- ) 
; Tools
; stack dump
VE_DOTS:
    .word 0xff02
    .ascii ".s"
    .word VE_HEAD
    .set VE_HEAD, VE_DOTS
XT_DOTS:
    .word DO_COLON
PFA_DOTS:
    .word XT_SP0
    .word XT_SP_FETCH
    .word XT_CELLPLUS
    .word XT_DOQDO
    .word PFA_DOTS2
PFA_DOTS1:
    .word XT_I
    .word XT_FETCH 
    .word XT_UDOT
    .word XT_DOLITERAL
    .word 2
    .word XT_DOPLUSLOOP
    .word PFA_DOTS1
PFA_DOTS2:
    .word XT_EXIT
