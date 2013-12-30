; ( xt1 -- xt2 ) 
; System
; does the real defer@ for user based defers
;VE_UDEFERFETCH:
;    .word 0xff07
;    .ascii "Udefer@"
;    .word VE_HEAD
;    .set VE_HEAD, VE_UDEFERFETCH
XT_UDEFERFETCH:
    .word DO_COLON
PFA_UDEFERFETCH:
    .word XT_1PLUS ; >body
    .word XT_FETCHI
    .word XT_UP_FETCH
    .word XT_PLUS
    .word XT_FETCH
    .word XT_EXIT
