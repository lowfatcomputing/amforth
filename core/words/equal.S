; ( n1 n2 -- flag )
; Compare
; compares two values for equality
VE_EQUAL:
    .word 0xff01
    .string "="
    .word VE_HEAD
    .set VE_HEAD, VE_EQUAL
XT_EQUAL:
    .word DO_COLON
PFA_EQUAL:
    .word XT_MINUS
    .word XT_EQUALZERO
    .word XT_EXIT
