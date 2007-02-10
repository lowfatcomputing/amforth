; ( n1 n2 -- n3 )
; R( -- )
VE_MINUS:
    .db $01, "-"
    .dw VE_HEAD
    .set VE_HEAD = VE_MINUS
XT_MINUS:
    .dw PFA_MINUS
PFA_MINUS:
    ld temp3, Y+
    ld temp2, Y+
    ld temp1, Y+
    ld temp0, Y+
    sub temp0, temp2
    sbc temp1, temp3
    st -Y, temp0
    st -Y, temp1
    rjmp DO_NEXT
