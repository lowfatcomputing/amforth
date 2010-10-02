; ( d1 d2 -- d2 d1 ) Stack
; R( -- )
; swaps the two top level double cells
VE_2SWAP:
    .dw $ff05
    .db "2swap",0
    .dw VE_HEAD
    .set VE_HEAD = VE_2SWAP
XT_2SWAP:
    .dw DO_COLON
PFA_2SWAP:
    .dw XT_ROT
    .dw XT_TO_R
    .dw XT_ROT
    .dw XT_R_FROM
    .dw XT_EXIT
