; ( -- flag )
VE_KEYQ:
    .db $04, "key?",0
    .dw VE_HEAD
    .set VE_HEAD = VE_KEYQ
XT_KEYQ:
    .dw PFA_KEYQ
PFA_KEYQ:
    lds temp0,usart0_rx_out
    lds temp1,usart0_rx_in
    movw zl, zerol
    cpse temp0, temp1
    inc zl
    st -Y, zl
    st -Y, zh
    rjmp DO_NEXT
