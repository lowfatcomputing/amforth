; ( n1 n2 -- flag )
VE_NOT:
    .db $03, "not"
    .dw VE_HEAD
    .set VE_HEAD = VE_NOT
XT_NOT:
    .dw PFA_NOT
PFA_NOT:
    ld temp1, Y+
    ld temp0, Y+
    or temp0, temp1
    movw temp0, zerol
    brne PFA_NOT1
    inc temp0
PFA_NOT1:
    st -Y, temp0
    st -Y, temp1
    rjmp DO_NEXT
