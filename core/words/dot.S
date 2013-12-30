; ( n -- ) 
; Numeric IO
; singed PNO with single cell numbers
VE_DOT:
    .word 0xff01
    .string "."
    .word VE_HEAD
    .set VE_HEAD, VE_DOT
XT_DOT:
    .word DO_COLON
PFA_DOT:
    .word XT_S2D
    .word XT_DDOT
    .word XT_EXIT
; : .         ( s -- )    s>d d. ; 
