; ( c -- ) 
; Character IO
; fetch the emit vector and execute it. should emit a character from TOS
VE_EMIT:
    .word 0xff04
    .ascii "emit"
    .word VE_HEAD
    .set VE_HEAD, VE_EMIT
XT_EMIT:
    .word PFA_DODEFER
PFA_EMIT:
    .word USER_EMIT
    .word XT_UDEFERFETCH
    .word XT_UDEFERSTORE
