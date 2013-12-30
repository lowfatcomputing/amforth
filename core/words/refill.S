; ( -- f ) 
; System
; refills the input buffer
VE_REFILL:
    .word 0xff06
    .ascii "refill"
    .word VE_HEAD
    .set VE_HEAD, VE_REFILL
XT_REFILL:
    .word PFA_DODEFER
PFA_REFILL:
    .word USER_REFILL
    .word XT_UDEFERFETCH
    .word XT_UDEFERSTORE

