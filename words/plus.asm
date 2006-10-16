; ( n1 n2 -- n3)
VE_PLUS:
    .db $01, "+"
    .dw VE_LATEST
    .set VE_LATEST = VE_PLUS
XT_PLUS:
    .dw PFA_PLUS
PFA_PLUS:
    ld temp3, Y+
    ld temp2, Y+
    ld temp1, Y+
    ld temp0, Y+
    add temp0, temp2
    adc temp1, temp3
    st -Y, temp0
    st -Y, temp1
    rjmp DO_NEXT
