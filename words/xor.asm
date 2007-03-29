; ( n1 n2 -- n3)
; R( -- )
; exclusive or
VE_XOR:
    .db $03, "xor"
    .dw VE_HEAD
    .set VE_HEAD = VE_XOR
XT_XOR:
    .dw PFA_XOR
PFA_XOR:
    ld temp3, Y+
    ld temp2, Y+
    ld temp1, Y+
    ld temp0, Y+
    eor temp0, temp2
    eor temp1, temp3
    st -Y, temp0
    st -Y, temp1
    rjmp DO_NEXT
