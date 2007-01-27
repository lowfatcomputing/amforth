;;; usart driver

;; bit definitions


.set pc_ = pc


.org URXCaddr
  rjmp usart0_rx_isr
.org UDREaddr
  rjmp usart0_udre_isr

.org pc_

.equ baudrate  = cpu_frequency/(baud_rate*16)-1
; sizes have to be powers of 2!
.equ usart0_tx_size = $10
.equ usart0_rx_size = $10

.equ usart0_tx_mask = usart0_tx_size - 1
.equ usart0_rx_mask = usart0_rx_size - 1

.set usart0_tx_in = heap
.set heap = heap + 1

.set usart0_tx_out = heap
.set heap = heap + 1

.set usart0_tx_data = heap
.set heap = heap + usart0_tx_size

.set usart0_rx_in = heap
.set heap = heap + 1

.set usart0_rx_out = heap
.set heap = heap + 1

.set usart0_rx_data = heap
.set heap = heap + usart0_rx_size

baud0:
  sts usart0_tx_in,zerol
  sts usart0_tx_out,zerol
  sts usart0_rx_in,zerol
  sts usart0_rx_out,zerol

  ldi temp0, LOW( baudrate )
  out_ UBRR0L, temp0
  ldi temp0, HIGH( baudrate )
  out_ UBRR0H, temp0
  ldi temp0, (1<<UMSEL01)|(3<<UCSZ00)
  out_ UCSR0C, temp0
  sbi_ UCSR0B, TXEN0, temp0
  sbi_ UCSR0B, RXEN0, temp0
  sbi_ UCSR0B, RXCIE0, temp0

  ret
 
usart0_udre_isr:
  push xl
  in xl,SREG
  push xl
  push xh
  push zl
  push zh

  lds xl,usart0_tx_in
  lds xh,usart0_tx_out

  cp xh,xl
  brne usart0_udre_next

usart0_udre_last:
  in_ xl,UCSR0B
  cbr xl,(1<<UDRIE0)
  out_ UCSR0B,xl

  rjmp usart0_udre_done

usart0_udre_next:
  inc xh
  andi xh,usart0_tx_mask
  sts usart0_tx_out,xh
  
  ldi zl,low(usart0_tx_data)
  ldi zh,high(usart0_tx_data)
  add zl,xh
  adc zh,zeroh
  
  ld xl,z
  out_ UDR0,xl

usart0_udre_done:
  pop zh
  pop zl
  pop xh
  pop xl
  out SREG,xl
  pop xl
  reti
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
usart0_rx_isr:
  push xl
  in xl,SREG
  push xl
  push xh
  push zl
  push zh

  lds xl,usart0_rx_in
  lds xh,usart0_rx_out

  inc xl
  andi xl,usart0_rx_mask
  cp xh,xl
  brne usart0_rxc_next

usart0_rxc_full:
  in_ xl,UDR0
  rjmp usart0_rxc_done
usart0_rxc_next:
  ldi zl,low(usart0_rx_data)
  ldi zh,high(usart0_rx_data)
  add zl,xl
  adc zh,zeroh
  in_ xh,UDR0
  st z,xh
  sts usart0_rx_in,xl
  
usart0_rxc_done:
  pop zh
  pop zl
  pop xh
  pop xl
  out SREG,xl
  pop xl
  reti
  
; (c -- )
VE_TX0:
    .db $03, "tx0"
    .dw VE_HEAD
    .set VE_HEAD = VE_TX0
XT_TX0:
    .dw PFA_TX0
PFA_TX0:
    lds temp0,usart0_tx_in
    inc temp0
    andi temp0,usart0_tx_mask

    lds temp1,usart0_tx_out
    cp temp0,temp1
    brne PFA_tx0_store
    rjmp PFA_tx0
  
PFA_tx0_store:
    sts usart0_tx_in,temp0
    ldi zl,low(usart0_tx_data)
    ldi zh,high(usart0_tx_data)
    add zl, temp0
    adc zh, zeroh
    ld temp1, Y+
    ld temp0, Y+
    st z,temp0
  
    in_ temp0,UCSR0B
    sbr temp0,(1<<UDRIE0)
    out_ UCSR0B,temp0
    jmp DO_NEXT

; ( -- f) always true 
VE_TX0Q:
    .db $04, "tx0?",0
    .dw VE_HEAD
    .set VE_HEAD = VE_TX0Q
XT_TX0Q:
    .dw PFA_TX0Q
PFA_TX0Q:
    movw zl, zerol
    sbiw zl, 1
    st -Y, zl
    st -Y, zh
    jmp DO_NEXT

; ( -- c)
VE_RX0:
    .db $03, "rx0"
    .dw VE_HEAD
    .set VE_HEAD = VE_RX0
XT_RX0:
    .dw PFA_RX0
PFA_RX0:
    lds temp1,usart0_rx_out
    lds temp0,usart0_rx_in
    cp temp1, temp0
    brne PFA_rx0_fetch
    rjmp PFA_rx0
  
PFA_rx0_fetch:
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
    jmp DO_NEXT

; ( -- f)
VE_RX0Q:
    .db $04, "rx0?",0
    .dw VE_HEAD
    .set VE_HEAD = VE_RX0Q
XT_RX0Q:
    .dw PFA_RX0Q
PFA_RX0Q:
    lds temp0,usart0_rx_out
    lds temp1,usart0_rx_in
    movw zl, zerol
    cpse temp0, temp1
    sbiw zl, 1
    st -Y, zl
    st -Y, zh
    jmp DO_NEXT
