; ( -- dest ) 
; Compiler
; place destination for backward branch
;VE_LMARK:
;    .word 0xff05
;    .ascii "<mark"
;    .word VE_HEAD
;    .set VE_HEAD, VE_LMARK
XT_LMARK:
    .word DO_COLON
PFA_LMARK:
    .word XT_DP
    .word XT_EXIT
