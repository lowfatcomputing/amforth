; ( xt1 -- xt2 ) 
; Systemm
; does the real defer@ for ram defers
;VE_RDEFERFETCH:
;    .word 0xff07
;    .ascii "Rdefer@"
;    .word VE_HEAD
;    .set VE_HEAD, VE_RDEFERFETCH
XT_RDEFERFETCH:
    .word DO_COLON
PFA_RDEFERFETCH:
    .word XT_1PLUS ; >body
    .word XT_FETCHI
    .word XT_FETCH
    .word XT_EXIT
