; ( -- -1 ) 
; Arithmetics
; leaves the value -1 (true) on TOS
VE_TRUE:
    .word 0xff04
    .ascii "true"
    .word VE_HEAD
    .set VE_HEAD, VE_TRUE
XT_TRUE:
    .word PFA_TRUE
PFA_TRUE:
    savetos
PFA_TRUE1:
    ser tosl
    ser tosh
    jmp_ DO_NEXT
