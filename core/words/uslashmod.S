; (u1 u2 -- rem quot)
; Arithmetics
; unsigned division with remainder
VE_USLASHMOD:
    .word 0xff05
    .string "u/mod"
    .word VE_HEAD
    .set VE_HEAD, VE_USLASHMOD
XT_USLASHMOD:
    .word DO_COLON
PFA_USLASHMOD:
    .word XT_TO_R
    .word XT_ZERO
    .word XT_R_FROM
    .word XT_UMSLASHMOD
    .word XT_EXIT
