; ( dest -- ) 
; Compiler
; resolve backward jumps
;VE_GRESOLVE:
;    .word 0xff08
;    .ascii ">resolve"
;    .word VE_HEAD
;    .set VE_HEAD, VE_GRESOLVE
XT_GRESOLVE:
    .word DO_COLON
PFA_GRESOLVE:
    .word XT_QSTACK
    .word XT_DP
    .word XT_SWAP
    .word XT_STOREI
    .word XT_EXIT
