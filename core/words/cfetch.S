; ( a-addr - c1 ) 
; Memory
; fetch a single byte from memory mapped locations
VE_CFETCH:
    .word 0xff02
    .ascii "c@"
    .word VE_HEAD
    .set VE_HEAD , VE_CFETCH
XT_CFETCH:
    .word PFA_CFETCH
PFA_CFETCH:
    movw ZL, tosl
    clr tosh
    ld tosl, Z
    jmp_ DO_NEXT
