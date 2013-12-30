; ( n1 -- n2) 
; Arithmetics
; 1-complement of TOS
VE_INVERT:
    .word 0xff06
    .ascii "invert"
    .word VE_HEAD
    .set VE_HEAD, VE_INVERT
XT_INVERT:
    .word PFA_INVERT
PFA_INVERT:
    com tosl
    com tosh
    jmp_ DO_NEXT
