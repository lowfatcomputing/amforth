; ( d1 d2 -- d3 )
; R( -- )
; subtract double cell values
VE_DMINUS:
    .db $02, "d-",0
    .dw VE_HEAD
    .set VE_HEAD = VE_DMINUS
XT_DMINUS:
    .dw PFA_DMINUS
PFA_DMINUS:
    ld temp7, Y+
    ld temp6, Y+
    ld temp5, Y+
    ld temp4, Y+

    ld temp3, Y+
    ld temp2, Y+
    ld temp1, Y+
    ld temp0, Y+

    sub temp0, temp4
    sbc temp1, temp5
    sbc temp2, temp6
    sbc temp3, temp7
    st -Y, temp0
    st -Y, temp1
    st -Y, temp2
    st -Y, temp3
    jmp DO_NEXT
