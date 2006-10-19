; ( -- c)
; waits for key event
VE_KEY:
    .db $03, "key"
    .dw VE_HEAD
    .set VE_HEAD = VE_KEY
XT_KEY:
    .dw PFA_KEY
PFA_KEY:
PFA_KEY_rx0:
    lds temp1,usart0_rx_out
    lds temp0,usart0_rx_in
    cp temp1, temp0
    brne PFA_KEY_rx0_fetch
    rjmp PFA_KEY_rx0
  
PFA_KEY_rx0_fetch:
    inc temp1
    andi temp1,usart0_rx_mask
    sts usart0_rx_out, temp1

    ldi zl,low(usart0_rx_data)
    ldi zh,high(usart0_rx_data)
    add zl, temp1
    adc zh, zeroh
    ld temp0, Z	
    st -Y, temp0
    st -Y, zeroh
    rjmp DO_NEXT
