; ( f -- )
; System
; runtime of ?branch
;VE_DOCONDBRANCH:
;    .word 0xff09
;    .ascii "(?branch)"
;    .word  VE_HEAD
;    .set VE_HEAD, VE_DOCONDBRANCH
XT_DOCONDBRANCH:
    .word PFA_DOCONDBRANCH
PFA_DOCONDBRANCH:
    or tosh, tosl
    loadtos
    brbs 1, PFA_DOBRANCH ; 1 is z flag; if tos is zero (false), do the branch
    adiw XL, 1
    jmp_ DO_NEXT
