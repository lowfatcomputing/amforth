; ( -- n1 )
; R( -- )
; runtime of literal
;VE_DOLITERAL:
;    .dw $ff09
;    .db "(literal)"
;    .dw VE_HEAD
;    .set VE_HEAD = VE_DOLITERAL
XT_DOLITERAL:
    .dw PFA_DOLITERAL
PFA_DOLITERAL:
    savetos
    movw zl, xl
    readflashcell tosl,tosh
    adiw xl, 1
    rjmp DO_NEXT

