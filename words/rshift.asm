; ( n1 n2 -- n3)
VE_RSHIFT:
    .db $06, "rshift",0
    .dw VE_LATEST
    .set VE_LATEST = VE_RSHIFT
XT_RSHIFT:
    .dw PFA_RSHIFT
PFA_RSHIFT:
    ld zh, Y+
    ld zl, Y+
    ld temp1, Y+
    ld temp0, Y+
PFA_RSHIFT1:
    lsr temp1
    ror temp0
    sbiw zl, 1
    brbc 1, PFA_RSHIFT1
    st -Y, temp0
    st -Y, temp1
    rjmp DO_NEXT

