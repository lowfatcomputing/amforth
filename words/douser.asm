; ( -- addr )
; R( -- )
;VE_DOUSER:
;    .db $06, "(user)", 0
;    .dw VE_HEAD
;    .set VE_HEAD = VE_DOUSER
XT_DOUSER:
    .dw PFA_DOUSER
PFA_DOUSER:
    movw zl, wl
    adiw zl, 1
    lsl zl
    rol zh
    lpm temp0, Z+
    lpm temp1, Z
    add temp0, upl
    adc temp1, uph
    st -Y, temp0
    st -Y, temp1
    rjmp DO_NEXT
