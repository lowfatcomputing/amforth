; ( n -- flag )
VE_EQUALZERO:
    .db $02, "0=",0
    .dw VE_HEAD
    .set VE_HEAD = VE_EQUALZERO
XT_EQUALZERO:
    .dw PFA_EQUALZERO
PFA_EQUALZERO:
    ld temp3, Y+
    ld temp2, Y+
    cp zerol, temp2
    cpc zeroh, temp3
    movw temp0, zerol
    brne PFA_EQUALZERO1
    inc temp0
PFA_EQUALZERO1:
    st -Y, temp0
    st -Y, temp1
    rjmp DO_NEXT
