; ( -- n ) (R: loop-sys -- loop-sys)
; Compiler
; current loop counter
VE_I:
    .dw $FF01
    .db "i",0
    .dw VE_HEAD
    .set VE_HEAD = VE_I
XT_I:
    .dw DO_COLON
PFA_I:
    .dw XT_R_FETCH
    .dw XT_EXIT
