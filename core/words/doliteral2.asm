; ( -- x1 x2 )
; System
; runtime of 2literal
;VE_DOLITERAL2:
;    .dw $ff0a
;    .db "(2literal)"
;    .dw VE_HEAD
;    .set VE_HEAD = VE_DOLITERAL2
XT_DOLITERAL2:
    .dw PFA_DOLITERAL2
PFA_DOLITERAL2:
    savetos
    movw zl, xl
    readflashcell temp0,temp1
    movw zl, xl
    adiw zl, 1
    readflashcell tosl,tosh
    savetos
    movw tosl, temp0
    adiw xl, 2
    jmp_ DO_NEXT

