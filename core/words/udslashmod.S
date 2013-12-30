; ( d1 n -- rem ud2 ) 
; Arithmetics
; unsigned double cell division with remainder
VE_UDSLASHMOD:
    .word 0xff06
    .ascii "ud/mod"
    .word VE_HEAD
    .set VE_HEAD, VE_UDSLASHMOD
XT_UDSLASHMOD:
    .word DO_COLON
PFA_UDSLASHMOD:
    .word XT_TO_R
    .word XT_ZERO
    .word XT_R_FETCH
    .word XT_UMSLASHMOD
    .word XT_R_FROM
    .word XT_SWAP
    .word XT_TO_R
    .word XT_UMSLASHMOD
    .word XT_R_FROM
    .word XT_EXIT
; : ud/mod    ( ud1 n -- rem ud2 ) >r 0 r@ um/mod r> swap >r um/mod r> ; 
