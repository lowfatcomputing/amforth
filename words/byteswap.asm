; (n1 -- n2 )
; R( -- )
VE_BYTESWAP:
    .db $02, "><",0
    .dw VE_HEAD
    .set VE_HEAD = VE_BYTESWAP
XT_BYTESWAP:
    .dw PFA_BYTESWAP
PFA_BYTESWAP:
    ld temp1, Y+
    ld temp0, Y+
    st -Y, temp1
    st -Y, temp0
    rjmp DO_NEXT
