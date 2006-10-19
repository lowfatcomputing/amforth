; ( n1 n2 -- n3)
VE_LSHIFT:
    .db $06, "lshift",0
    .dw VE_HEAD
    .set VE_HEAD = VE_LSHIFT
XT_LSHIFT:
    .dw PFA_LSHIFT
PFA_LSHIFT:
    ld zh, Y+
    ld zl, Y+
    ld temp1, Y+
    ld temp0, Y+
PFA_LSHIFT1:
    lsl temp0
    rol temp1
    sbiw zl, 1
    brbc 1, PFA_LSHIFT1
    st -Y, temp0
    st -Y, temp1
    rjmp DO_NEXT

