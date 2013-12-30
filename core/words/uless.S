; ( u1 u2 -- flasg) 
; Compare
; true if u1 < u2 (unsigned)
VE_ULESS:
    .word 0xff02
    .ascii "u<"
    .word VE_HEAD
    .set VE_HEAD, VE_ULESS
XT_ULESS:
    .word PFA_ULESS
PFA_ULESS:
    ld temp2, Y+
    ld temp3, Y+
    cp tosl, temp2
    cpc tosh, temp3
    brlo PFA_ZERO1
    brbs 1, PFA_ZERO1
    jmp_ PFA_TRUE1
