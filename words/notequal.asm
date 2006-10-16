; ( n1 n2 -- flag)
VE_NOTEQUAL:
    .db $02, "<>", 0
    .dw VE_LATEST
    .set VE_LATEST = VE_NOTEQUAL
XT_NOTEQUAL:
    .dw PFA_NOTEQUAL
PFA_NOTEQUAL:
    ld temp1, Y+
    ld temp0, Y+
    ld temp3, Y+
    ld temp2, Y+
    cp temp0, temp2
    cpc temp1, temp3
    movw temp0, zerol
    breq PFA_NOTEQUAL_EQUAL
    inc temp0
PFA_NOTEQUAL_EQUAL:
    st -Y, temp0
    st -Y, temp1
    rjmp DO_NEXT
