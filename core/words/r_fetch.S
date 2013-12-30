; ( -- n) (R: n -- n )
; Stack
; fetch content of TOR
VE_R_FETCH:
    .word 0xff02
    .ascii "r@"
    .word VE_HEAD
    .set VE_HEAD, VE_R_FETCH
XT_R_FETCH:
    .word PFA_R_FETCH
PFA_R_FETCH:
    savetos
    pop tosl
    pop tosh
    push tosh
    push tosl
    jmp_ DO_NEXT
