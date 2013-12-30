; ( n1 n2 -- n3) 
; Arithmetics
; logically shift n1 left n2 times
VE_LSHIFT:
    .word 0xff06
    .ascii "lshift"
    .word VE_HEAD
    .set VE_HEAD, VE_LSHIFT
XT_LSHIFT:
    .word PFA_LSHIFT
PFA_LSHIFT:
    movw ZL, tosl
    loadtos
PFA_LSHIFT1:
    sbiw ZL, 1
    brmi PFA_LSHIFT2
    lsl tosl
    rol tosh
    rjmp PFA_LSHIFT1
PFA_LSHIFT2:
    jmp_ DO_NEXT

