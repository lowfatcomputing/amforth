; ( -- addr n ) 
; System
; address and current length of the input buffer
VE_SOURCE:
    .word 0xFF06
    .ascii "source"
    .word VE_HEAD
    .set VE_HEAD, VE_SOURCE
XT_SOURCE:
    .word PFA_DODEFER
PFA_SOURCE:
    .word USER_SOURCE
    .word XT_UDEFERFETCH
    .word XT_UDEFERSTORE


