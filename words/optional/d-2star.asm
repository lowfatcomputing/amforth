; ( d1 -- d2 )
; R( -- )
VE_D2STAR:
    .db $03, "d2*"
    .dw VE_HEAD
    .set VE_HEAD = VE_D2STAR
XT_D2STAR:
    .dw PFA_D2STAR
PFA_D2STAR:
    ld temp3, Y+
    ld temp2, Y+
    ld temp1, Y+
    ld temp0, Y+

    lsl temp0
    rol temp1
    rol temp2
    rol temp3

    st -Y, temp0
    st -Y, temp1
    st -Y, temp2
    st -Y, temp3

    rjmp DO_NEXT
