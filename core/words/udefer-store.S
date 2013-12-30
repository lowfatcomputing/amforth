; ( xt1 xt2 -- ) 
; System
; does the real defer! for user based defers
;VE_UDEFERSTORE:
;    .word 0xff07
;    .ascii "Udefer!"
;    .word VE_HEAD
;    .set VE_HEAD, VE_UDEFERSTORE
XT_UDEFERSTORE:
    .word DO_COLON
PFA_UDEFERSTORE:
    .word XT_1PLUS
    .word XT_FETCHI
    .word XT_UP_FETCH
    .word XT_PLUS
    .word XT_STORE
    .word XT_EXIT

