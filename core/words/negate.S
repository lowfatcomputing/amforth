; ( n1 -- n2 ) 
; Logic
; 2-complement
VE_NEGATE:
    .word 0xff06
    .ascii "negate"
    .word VE_HEAD
    .set VE_HEAD, VE_NEGATE
XT_NEGATE:
    .word DO_COLON
PFA_NEGATE:
    .word XT_INVERT
    .word XT_1PLUS
    .word XT_EXIT
