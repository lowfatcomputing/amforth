; (addr-from addr-to n -- )
VE_CMOVE_G:
    .db $06, "cmove>",0
    .dw VE_LATEST
    .set VE_LATEST  = VE_CMOVE_G
XT_CMOVE_G:
    .dw PFA_CMOVE_G
PFA_CMOVE_G:
    push xl
    push xh
    ld wh, Y+
    ld wl, Y+ ; n
    ld zh, Y+
    ld zl, Y+ ; addr-to
    ld xh, Y+
    ld xl, Y+ ; addr-from
    mov temp0, wh
    or temp0, wl
    brbs 1, PFA_CMOVE_G1
    add zl, wl
    adc zh, wh
    add xl, wl
    adc xh, wh
PFA_CMOVE_G2:
    ld temp1, -X
    st -Z, temp1
    sbiw wl, 1
    brbc 1, PFA_CMOVE_G2
PFA_CMOVE_G1:
    pop xh
    pop xl
    rjmp DO_NEXT
