; ( n -- n n )
VE_DUP:
    .db $03, "dup"
    .dw VE_HEAD
    .set VE_HEAD = VE_DUP
XT_DUP:
    .dw PFA_DUP
PFA_DUP:
    ld temp1, Y+
    ld temp0, Y+
    st -Y, temp0
    st -Y, temp1
    st -Y, temp0
    st -Y, temp1
    rjmp DO_NEXT
