; ( n1 n2 -- n2 n1)
VE_SWAP:
    .db $04, "swap",0
    .dw VE_HEAD
    .set VE_HEAD = VE_SWAP
XT_SWAP:
    .dw PFA_SWAP
PFA_SWAP:
    ld temp0, Y+
    ld temp1, Y+
    ld temp2, Y+
    ld temp3, Y+
    st -Y, temp1
    st -Y, temp0
    st -Y, temp3
    st -Y, temp2
    rjmp DO_NEXT
