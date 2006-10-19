; ( n1 n2 -- flag )
VE_EQUAL:
    .db $01, "="
    .dw VE_HEAD
    .set VE_HEAD = VE_EQUAL
XT_EQUAL:
    .dw PFA_EQUAL
PFA_EQUAL:
    ld temp1, Y+
    ld temp0, Y+
    ld temp3, Y+
    ld temp2, Y+
    cp temp0, temp2
    cpc temp1, temp3
    movw temp0, zerol
    brne PFA_EQUAL1
    inc temp0
PFA_EQUAL1:
    st -Y, temp0
    st -Y, temp1
    rjmp DO_NEXT
