; ( flag -- flag' ) 
; Logic
; identical to 0=
VE_NOT:
    .word 0xff03
    .string "not"
    .word VE_HEAD
    .set VE_HEAD, VE_NOT
XT_NOT:
    .word DO_COLON
PFA_NOT:
    .word XT_EQUALZERO
    .word XT_EXIT
