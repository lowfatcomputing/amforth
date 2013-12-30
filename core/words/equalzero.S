; ( n -- flag )
; Compare
; compare with 0 (zero)
VE_EQUALZERO:
    .word 0xff02
    .ascii "0="
    .word VE_HEAD
    .set VE_HEAD, VE_EQUALZERO
XT_EQUALZERO:
    .word PFA_EQUALZERO
PFA_EQUALZERO:
    or tosh, tosl
    brne PFA_ZERO1
    rjmp PFA_TRUE1
