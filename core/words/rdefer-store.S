; ( xt1 xt2 -- ) 
; System
; does the real defer! for ram defers
;VE_RDEFERSTORE:
;    .word 0xff07
;    .ascii "Rdefer!"
;    .word VE_HEAD
;    .set VE_HEAD, VE_RDEFERSTORE
XT_RDEFERSTORE:
    .word DO_COLON
PFA_RDEFERSTORE:
    .word XT_1PLUS
    .word XT_FETCHI
    .word XT_STORE
    .word XT_EXIT

