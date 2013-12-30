; ( -- n ) (R: loop-sys -- loop-sys)
; Compiler
; current loop counter
VE_I:
    .word 0xFF01
    .string "i"
    .word VE_HEAD
    .set VE_HEAD, VE_I
XT_I:
    .word PFA_R_FETCH

