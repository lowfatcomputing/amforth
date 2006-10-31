; ( n1 -- flag )
VE_GREATERZERO:
    .db $02, "0>",0
    .dw VE_HEAD
    .set VE_HEAD = VE_GREATERZERO
XT_GREATERZERO:
    .dw PFA_GREATERZERO
PFA_GREATERZERO:
    ld temp3, Y+
    ld temp2, Y+
    cp temp2, zerol
    cpc temp3, zeroh
    movw zl, zerol
    brlt PFA_GREATERZERO1
    brbs 1, PFA_GREATERZERO1
    sbiw zl, 1
PFA_GREATERZERO1:
    st -Y, zl
    st -Y, zh
    rjmp DO_NEXT
