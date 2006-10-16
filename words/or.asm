; ( n1 n2 -- n3 )
VE_OR:
    .db $02, "or",0
    .dw VE_LATEST
    .set VE_LATEST = VE_OR
XT_OR:
    .dw PFA_OR
PFA_OR:
    ld temp3, Y+
    ld temp2, Y+
    ld temp1, Y+
    ld temp0, Y+
    or temp0, temp2
    or temp1, temp3
    st -Y, temp0
    st -Y, temp1
    rjmp DO_NEXT

