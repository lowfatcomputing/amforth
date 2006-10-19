; (n1 n2 -- n3 )
VE_AND:
    .db $03, "and"
    .dw VE_HEAD
    .set VE_HEAD = VE_AND
XT_AND:
    .dw PFA_AND
PFA_AND:
    ld temp3, Y+
    ld temp2, Y+
    ld temp1, Y+
    ld temp0, Y+
    and temp0, temp2
    and temp1, temp3
    st -Y, temp0
    st -Y, temp1
    rjmp DO_NEXT
