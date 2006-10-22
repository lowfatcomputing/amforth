; ( n -- flag )
VE_NOTEQUALZERO:
    .db $03, "0<>"
    .dw VE_HEAD
    .set VE_HEAD = VE_NOTEQUALZERO
XT_NOTEQUALZERO:
    .dw PFA_NOTEQUALZERO
PFA_NOTEQUALZERO:
    ld temp3, Y+
    ld temp2, Y+
    cp zerol, temp2
    cpc zeroh, temp3
    movw temp0, zerol
    breq PFA_NOTEQUALZERO1
    inc temp0
PFA_NOTEQUALZERO1:
    st -Y, temp0
    st -Y, temp1
    rjmp DO_NEXT
