; ( n1 -- n2)
VE_INVERT:
    .db $06, "invert",0
    .dw VE_LATEST
    .set VE_LATEST = VE_INVERT
XT_INVERT:
    .dw PFA_INVERT
PFA_INVERT:
    ld temp1, Y+
    ld temp0, Y+
    com temp0
    com temp1
    st -Y, temp0
    st -Y, temp1
    rjmp DO_NEXT
