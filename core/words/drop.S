; ( n -- ) 
; Stack
; drop TOS
VE_DROP:
    .word 0xff04
    .ascii "drop"
    .word VE_HEAD
    .set VE_HEAD, VE_DROP
XT_DROP:
    .word PFA_DROP
PFA_DROP:
    loadtos
    jmp_ DO_NEXT
