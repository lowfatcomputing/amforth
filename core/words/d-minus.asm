; ( d1 d2 -- d3 ) Arithmetics
; R( -- )
; subtract double cell values
VE_DMINUS:
    .dw $ff02
    .db "d-"
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

    sub temp2, temp6
    sbc temp3, temp7
    sbc tosl, temp4
    sbc tosh, temp5

    st -Y, temp3
    st -Y, temp2
    jmp_ DO_NEXT
