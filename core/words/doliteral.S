; ( -- n1 )
; System
; runtime of literal
;VE_DOLITERAL:
;    .word 0xff09
;    .ascii "(literal)"
;    .word VE_HEAD
;    .set VE_HEAD, VE_DOLITERAL
XT_DOLITERAL:
    .word PFA_DOLITERAL
PFA_DOLITERAL:
    savetos
    movw ZL, XL
    readflashcell tosl,tosh
    adiw XL, 1
    jmp_ DO_NEXT

