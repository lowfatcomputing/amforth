; ( -- ) 
; Character IO
; cause subsequent output appear at the beginning of the next line
VE_CR:
    .word 0xff02
    .ascii "cr"
    .word VE_HEAD
    .set VE_HEAD, VE_CR
XT_CR:
    .word DO_COLON
PFA_CR:
    .word XT_DOLITERAL
    .word 13
    .word XT_EMIT
    .word XT_DOLITERAL
    .word 10
    .word XT_EMIT
    .word XT_EXIT
