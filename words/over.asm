; ( n1 n2 -- n1 n2 n1 )
; R( -- )
VE_OVER:
    .db $04, "over",0
    .dw VE_HEAD
    .set VE_HEAD = VE_OVER
XT_OVER:
    .dw PFA_OVER
PFA_OVER:
    ld temp1, Y+
    ld temp0, Y+
    ld temp3, Y+
    ld temp2, Y+
    st -Y, temp2
    st -Y, temp3
    st -Y, temp0
    st -Y, temp1
    st -Y, temp2
    st -Y, temp3
    rjmp DO_NEXT
