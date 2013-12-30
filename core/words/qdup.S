; ( n1 -- [ n1 n1 ] | 0) 
; Stack
; duplicate TOS if non-zero
VE_QDUP:
    .word 0xff04
    .ascii "?dup"
    .word VE_HEAD
    .set VE_HEAD, VE_QDUP
XT_QDUP:
    .word PFA_QDUP
PFA_QDUP:
    mov temp0, tosl
    or temp0, tosh
    breq PFA_QDUP1
    savetos
PFA_QDUP1:
    jmp_ DO_NEXT
