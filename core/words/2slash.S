; ( n1 -- n2 ) 
; Arithmetics
; arithmetic shift right
VE_2SLASH:
    .word 0xff02
    .ascii "2/"
    .word VE_HEAD
    .set VE_HEAD, VE_2SLASH
XT_2SLASH:
    .word PFA_2SLASH
PFA_2SLASH:
    asr tosh
    ror tosl
    jmp_ DO_NEXT
