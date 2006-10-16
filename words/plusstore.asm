; ( n addr -- )
VE_PLUSSTORE:
    .db $02, "+!",0
    .dw VE_LATEST
    .set VE_LATEST = VE_PLUSSTORE
XT_PLUSSTORE:
    .dw PFA_PLUS
PFA_PLUSSTORE:
    ld zh, Y+
    ld zl, Y+
    ld temp1, Y+
    ld temp0, Y+
    ldd temp2, Z+0
    ldd temp3, Z+1
    add temp0, temp2
    adc temp1, temp3
    st    Z, temp0
    std Z+1, temp1
    rjmp DO_NEXT
