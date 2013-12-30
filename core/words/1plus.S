; ( n1|u1 -- n2|u2 ) 
; Arithmetics
; optimized increment
VE_1PLUS:
    .word 0xff02
    .ascii "1+"
    .word VE_HEAD
    .set VE_HEAD, VE_1PLUS
XT_1PLUS:
    .word PFA_1PLUS
PFA_1PLUS:
    adiw tosl,1
    jmp_ DO_NEXT
