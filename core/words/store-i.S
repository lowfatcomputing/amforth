; ( n addr -- ) 
; Memory
; Deferred action to write a single 16bit cell to flash
VE_STOREI:
    .word 0xff02
    .ascii "!i"
    .word VE_HEAD
    .set VE_HEAD, VE_STOREI
XT_STOREI:
    .word PFA_DODEFER
PFA_STOREI:
    .word EE_STOREI
    .word XT_EDEFERFETCH
    .word XT_EDEFERSTORE
