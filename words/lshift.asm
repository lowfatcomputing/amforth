; ( n1 n2 -- n3)
; R( -- )
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
    sbiw zl, 1
    brmi PFA_LSHIFT2
    lsl temp0
    rol temp1
    rjmp PFA_LSHIFT1
PFA_LSHIFT2:
    st -Y, temp0
    st -Y, temp1
    rjmp DO_NEXT

