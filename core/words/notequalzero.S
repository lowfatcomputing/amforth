; ( n -- flag ) 
; Compare
; true if n is not zero
VE_NOTEQUALZERO:
    .word 0xff03
    .string "0<>"
    .word VE_HEAD
    .set VE_HEAD, VE_NOTEQUALZERO
XT_NOTEQUALZERO:
    .word DO_COLON
PFA_NOTEQUALZERO:
    .word XT_EQUALZERO
    .word XT_EQUALZERO
    .word XT_EXIT
