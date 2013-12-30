; ( dest -- ) 
; Compiler
; resolve backward branch
;VE_LRESOLVE:
;    .word 0xff08
;    .ascii "<resolve"
;    .word VE_HEAD
;    .set VE_HEAD, VE_LRESOLVE
XT_LRESOLVE:
    .word DO_COLON
PFA_LRESOLVE:
    .word XT_QSTACK
    .word XT_COMMA
    .word XT_EXIT
