; ( n1 -- flag)
; Compare
; compare with zero
VE_LESSZERO:
    .word 0xff02
    .ascii "0<"
    .word VE_HEAD
    .set VE_HEAD, VE_LESSZERO
XT_LESSZERO:
    .word PFA_LESSZERO
PFA_LESSZERO:
    sbrc tosh,7
    rjmp PFA_TRUE1
    rjmp PFA_ZERO1
