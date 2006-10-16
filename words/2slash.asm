; ( n1 -- n2 )
VE_2SLASH:
    .db $02, "2/", 0
    .dw VE_LATEST
    .set VE_LATEST = VE_2SLASH
XT_2SLASH:
    .dw PFA_2SLASH
PFA_2SLASH:
    ld temp1, Y+
    ld temp0, Y+
    asr temp1
    ror temp0
    ; put low cell on stack
    st -Y, temp0
    st -Y, temp1
    rjmp DO_NEXT
