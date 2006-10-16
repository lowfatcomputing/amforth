; (c -- )
VE_EMIT:
    .db $04, "emit",0
    .dw VE_LATEST
    .set VE_LATEST = VE_EMIT
XT_EMIT:
    .dw PFA_EMIT
PFA_EMIT:
PFA_EMIT_tx0:
    lds temp0,usart0_tx_in
    inc temp0
    andi temp0,usart0_tx_mask

    lds temp1,usart0_tx_out
    cp temp0,temp1
    brne PFA_EMIT_tx0_store
    rjmp PFA_EMIT_tx0
  
PFA_EMIT_tx0_store:
    sts usart0_tx_in,temp0
    ldi zl,low(usart0_tx_data)
    ldi zh,high(usart0_tx_data)
    add zl, temp0
    adc zh, zeroh
    ld temp1, Y+
    ld temp0, Y+
    st z,temp0
  
    in temp0,UCSRB
    sbr temp0,(1<<UDRIE)
    out UCSRB,temp0
    rjmp DO_NEXT
