; ( n1 -- d1 ) 
; Conversion
; extend (signed) single cell value to double cell
VE_S2D:
    .word 0xff03
    .string "s>d"
    .word VE_HEAD
    .set VE_HEAD, VE_S2D
XT_S2D:
    .word DO_COLON
PFA_S2D:
    .word XT_DUP
    .word XT_LESSZERO
    .word XT_EXIT
