; ( n1 n2 -- flag )
; Compare
; compares two double cell values
VE_DEQUAL:
    .word 0xff02
    .ascii "d="
    .word VE_HEAD
    .set VE_HEAD, VE_DEQUAL
XT_DEQUAL:
    .word DO_COLON
PFA_DEQUAL:
    .word XT_DMINUS
    .word XT_OR
    .word XT_EQUALZERO
    .word XT_EXIT
