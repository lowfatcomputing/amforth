; ( d1 -- d2)
; R( -- )
VE_DINVERT:
    .db $07, "dinvert"
    .dw VE_HEAD
    .set VE_HEAD = VE_DINVERT
XT_DINVERT:
    .dw PFA_DINVERT
PFA_DINVERT:
    ld temp3, Y+
    ld temp2, Y+
    ld temp1, Y+
    ld temp0, Y+
    com temp0
    com temp1
    com temp2
    com temp3
    st -Y, temp0
    st -Y, temp1
    st -Y, temp2
    st -Y, temp3
    rjmp DO_NEXT
