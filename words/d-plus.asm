; ( d1 d2 -- d3)
; R( -- )
; add double cell values
VE_DPLUS:
    .db $02, "d+",0
    .dw VE_HEAD
    .set VE_HEAD = VE_DPLUS
XT_DPLUS:
    .dw PFA_DPLUS
PFA_DPLUS:
    ld temp3, Y+
    ld temp2, Y+
    ld temp1, Y+
    ld temp0, Y+

    ld temp7, Y+
    ld temp6, Y+
    ld temp5, Y+
    ld temp4, Y+
    
    add temp0, temp4
    adc temp1, temp5
    adc temp2, temp6
    adc temp3, temp7
    
    st -Y, temp0
    st -Y, temp1
    st -Y, temp2
    st -Y, temp3
    jmp DO_NEXT
