; ( -- addr )
VE_DOVARIABLE:
    .db $0a, "(variable)", 0
    .dw VE_HEAD
    .set VE_HEAD = VE_DOVARIABLE
XT_DOVARIABLE:
    .dw PFA_DOVARIABLE
PFA_DOVARIABLE:
    movw zl, wl
    adiw zl,1
    lsl zl
    rol zh
    lpm temp0, Z+
    st -Y, temp0
    lpm temp1, Z
    st -Y, temp1
    rjmp DO_NEXT
