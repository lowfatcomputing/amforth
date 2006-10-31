; ( n1 n2 -- n3)
VE_RSHIFT:
    .db $06, "rshift",0
    .dw VE_HEAD
    .set VE_HEAD = VE_RSHIFT
XT_RSHIFT:
    .dw PFA_RSHIFT
PFA_RSHIFT:
    ld zh, Y+
    ld zl, Y+
    ld temp1, Y+
    ld temp0, Y+
PFA_RSHIFT1:
    sbiw zl, 1
    brmi PFA_RSHIFT2
    lsr temp1
    ror temp0
    rjmp PFA_RSHIFT1
PFA_RSHIFT2:
    st -Y, temp0
    st -Y, temp1
    rjmp DO_NEXT

