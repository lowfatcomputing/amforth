; ( n1 n2 -- flasg)
VE_LESS:
    .db $01, "<"
    .dw VE_LATEST
    .set VE_LATEST = VE_LESS
XT_LESS:
    .dw PFA_LESS
PFA_LESS:
    ld temp1, Y+
    ld temp0, Y+
    ld temp3, Y+
    ld temp2, Y+
    cp temp0, temp2
    cpc temp1, temp3
    movw temp0, zerol
    brlt PFA_LESS1
    inc temp0
PFA_LESS1:
    st -Y, temp0
    st -Y, temp1
    rjmp DO_NEXT
