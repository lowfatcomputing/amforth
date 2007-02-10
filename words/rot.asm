; ( n1 n2 n3 -- n2 n3 n1)
; R( -- )
VE_ROT:
    .db $03, "rot"
    .dw VE_HEAD
    .set VE_HEAD = VE_ROT
XT_ROT:
    .dw PFA_ROT
PFA_ROT:
    ld temp1, Y+
    ld temp0, Y+ ; n3
    ld temp3, Y+
    ld temp2, Y+ ; n2 
    ld temp5, Y+
    ld temp4, Y+ ; n1
    st -Y, temp2
    st -Y, temp3 ; n2
    st -Y, temp0
    st -Y, temp1 ; n3
    st -Y, temp4
    st -Y, temp5 ; n1
    rjmp DO_NEXT
