; ( -- n1 )
; R( -- )
; runtime of 2literal
;VE_DOLITERAL:
;    .dw $ff09
;    .db "(literal)"
;    .dw VE_HEAD
;    .set VE_HEAD = VE_DOLITERAL
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
    rjmp DO_NEXT

