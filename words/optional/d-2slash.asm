; ( n1 -- n2 )
; R( -- )
VE_D2SLASH:
    .db $03, "d2/"
    .dw VE_HEAD
    .set VE_HEAD = VE_D2SLASH
XT_D2SLASH:
    .dw PFA_D2SLASH
PFA_D2SLASH:
    ld temp3, Y+
    ld temp2, Y+
    ld temp1, Y+
    ld temp0, Y+
    asr temp3
    ror temp2
    ror temp1
    ror temp0
    st -Y, temp0
    st -Y, temp1
    st -Y, temp2
    st -Y, temp3
    rjmp DO_NEXT
