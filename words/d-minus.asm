; ( d1 d2 -- d3 ) Arithmetics
; R( -- )
; subtract double cell values
VE_DMINUS:
    .db $02, "d-",0
    .dw VE_HEAD
    .set VE_HEAD = VE_DMINUS
XT_DMINUS:
    .dw PFA_DMINUS
PFA_DMINUS:
    ld temp4, Y+
    ld temp5, Y+
    ld temp6, Y+
    ld temp7, Y+

    ld temp2, Y+
    ld temp3, Y+

    sub tosl, temp4
    sbc tosh, temp5
    sbc temp2, temp6
    sbc temp3, temp7

    st -Y, temp3
    st -Y, temp2
    jmp DO_NEXT
