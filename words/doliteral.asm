; ( -- n1 )
; R( -- )
; runtime of literal
;VE_DOLITERAL:
;    .db $09, "(literal)"
;    .dw VE_HEAD
;    .set VE_HEAD = VE_DOLITERAL
XT_DOLITERAL:
    .dw PFA_DOLITERAL
PFA_DOLITERAL:
    savetos
    movw zl, xl
    lsl zl
    rol zh
    lpm tosl, Z+
    lpm tosh, Z
    adiw xl, 1
    rjmp DO_NEXT
