; (addr-from addr-to n -- ) Memory
; R( -- )
; copy data in RAM
VE_CMOVE_G:
    .db $06, "cmove>",0
    .dw VE_HEAD
    .set VE_HEAD  = VE_CMOVE_G
XT_CMOVE_G:
    .dw PFA_CMOVE_G
PFA_CMOVE_G:
    push xh
    push xl
    movw wl, tosl
    ld zl, Y+
    ld zh, Y+ ; addr-to
    ld xl, Y+
    ld xh, Y+ ; addr-from
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
    pop xl
    pop xh
    loadtos
    rjmp DO_NEXT
