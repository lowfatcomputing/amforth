; (S: n1 -- n2 )
; Arithmetics
; optimized decrement
VE_1MINUS:
    .word 0xff02 
    .ascii "1-"
    .word VE_HEAD
    .set VE_HEAD, VE_1MINUS
XT_1MINUS:
    .word PFA_1MINUS
PFA_1MINUS:
    sbiw tosl, 1
    jmp_ DO_NEXT
