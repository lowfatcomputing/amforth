; ( n1 n2 -- flasg)
VE_LESS:
    .db $01, "<"
    .dw VE_HEAD
    .set VE_HEAD = VE_LESS
XT_LESS:
    .dw PFA_LESS
PFA_LESS:
    ld temp1, Y+
    ld temp0, Y+
    ld temp3, Y+
    ld temp2, Y+
    cp temp0, temp2
    cpc temp1, temp3
    movw zl, zerol
    brmi PFA_LESS1
    brbs 1, PFA_LESS1
    sbiw zl, 1
PFA_LESS1:
    st -Y, zl
    st -Y, zh
    rjmp DO_NEXT
