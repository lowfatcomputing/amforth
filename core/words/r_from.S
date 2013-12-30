; ( -- n ) (R: n --)
; Stack
; move TOR to TOS
VE_R_FROM:
    .word 0xff02
    .ascii "r>"
    .word VE_HEAD
    .set VE_HEAD, VE_R_FROM
XT_R_FROM:
    .word PFA_R_FROM
PFA_R_FROM:
    savetos
    pop tosl
    pop tosh
    jmp_ DO_NEXT
