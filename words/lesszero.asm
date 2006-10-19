; ( n1 -- flag)
VE_LESSZERO:
    .db $02, "0<",0
    .dw VE_HEAD
    .set VE_HEAD = VE_LESSZERO
XT_LESSZERO:
    .dw PFA_LESSZERO
PFA_LESSZERO:
    ld temp3, Y+
    ld temp2, Y+
    cp temp2, zerol
    cpc temp3, zeroh
    movw temp0, zerol
    brge PFA_LESSZERO1
    inc temp0
PFA_LESSZERO1:
    st -Y, temp0
    st -Y, temp1
    rjmp DO_NEXT
