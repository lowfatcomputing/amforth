; ( addr -- ) Compiler
; R( -- )
; resolved backward jumps
;VE_GRESOLVE:
;    .dw $ff08
;    .db ">resolve"
;    .dw VE_HEAD
;    .set VE_HEAD = VE_GRESOLVE
XT_GRESOLVE:
    .dw DO_COLON
PFA_GRESOLVE:
    .dw XT_DP
    .dw XT_SWAP
    .dw XT_ISTORE
    .dw XT_EXIT
