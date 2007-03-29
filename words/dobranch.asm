; ( -- )
; R( -- )
; runtime portion of branch
;VE_DOBRANCH:
;    .db $08, "(branch)",0
;    .dw VE_HEAD
;    .set VE_HEAD = VE_DOBRANCH
XT_DOBRANCH:
    .dw PFA_DOBRANCH
PFA_DOBRANCH:
    movw zl, xl
    lsl zl
    rol zh
    lpm xl, Z+
    lpm xh, Z
    rjmp DO_NEXT
