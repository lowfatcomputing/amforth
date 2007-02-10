; ( -- n1 )
; R( -- )
;VE_DOLITERAL:
;    .db $09, "(literal)"
;    .dw VE_HEAD
;    .set VE_HEAD = VE_DOLITERAL
XT_DOLITERAL:
    .dw PFA_DOLITERAL
PFA_DOLITERAL:
    movw zl, xl
    lsl zl
    rol zh
    lpm temp0, Z+
    st -Y, temp0
    lpm temp1, Z
    st -Y, temp1
    adiw xl, 1
    rjmp DO_NEXT
