; ( -- dest ) 
; Compiler
; places current dictionary position for backward resolves
;VE_GMARK:
;    .word 0xff05
;    .ascii ">mark"
;    .word VE_HEAD
;    .set VE_HEAD, VE_GMARK
XT_GMARK:
    .word DO_COLON
PFA_GMARK:
    .word XT_DP
    .word XT_COMPILE
    .word -1           ; ffff does not erase flash
    .word XT_EXIT
    
