; ( n1 n2 -- flag)
; Compare
; true if n1 is less than n2
    VE_LESS:
    .word 0xff01
    .string "<"
    .word VE_HEAD
    .set VE_HEAD, VE_LESS
XT_LESS:
    .word DO_COLON
PFA_LESS:
    .word XT_MINUS
    .word XT_LESSZERO
    .word XT_EXIT
