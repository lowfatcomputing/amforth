; ( n1 n2 -- flag )
VE_GREATER:
    .db $01, ">"
    .dw VE_LATEST
    .set VE_LATEST = VE_GREATER
XT_GREATER:
    .dw PFA_GREATER
PFA_GREATER:
    ld temp1, Y+
    ld temp0, Y+
    ld temp3, Y+
    ld temp2, Y+
    cp temp2, temp0
    cpc temp3, temp1
    movw temp0, zerol
    brlt PFA_GREATER1
    inc temp0
PFA_GREATER1:
    st -Y, temp0
    st -Y, temp1
    rjmp DO_NEXT
