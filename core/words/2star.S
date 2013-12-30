; ( n1 -- n2 ) 
; Arithmetics
; arithmetic shift left, filling with zero
VE_2STAR:
    .word 0xff02
    .ascii "2*"
    .word VE_HEAD
    .set VE_HEAD, VE_2STAR
XT_2STAR:
    .word PFA_2STAR
PFA_2STAR:
    lsl tosl
    rol tosh
    jmp_ DO_NEXT
