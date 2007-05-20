; ( addr -- ) Control Structure
; R( -- )
; resolved backward jumps
;VE_GRESOLVE:
;    .db 8, ">resolve",0
;    .dw VE_HEAD
;    .set VE_HEAD = VE_GRESOLVE
XT_GRESOLVE:
    .dw DO_COLON
PFA_GRESOLVE:
    .dw XT_HERE
    .dw XT_SWAP
    .dw XT_ISTORE
    .dw XT_EXIT
