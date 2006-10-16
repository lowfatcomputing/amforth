; ( n1 -- flag )
VE_GREATERZERO:
    .db $02, "0>",0
    .dw VE_LATEST
    .set VE_LATEST = VE_GREATERZERO
XT_GREATERZERO:
    .dw PFA_GREATERZERO
PFA_GREATERZERO:
    ld temp3, Y+
    ld temp2, Y+
    cp temp2, zerol
    cpc temp3, zeroh
    movw temp0, zerol
    brlt PFA_GREATERZERO1
    brbs 1, PFA_GREATERZERO1
    inc temp0
PFA_GREATERZERO1:
    st -Y, temp0
    st -Y, temp1
    rjmp DO_NEXT
