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

; ( -- )
; R( --)
; initialize usart0
VE_USART0:
  .db $06, "usart0",0
  .dw VE_HEAD
  .set VE_HEAD = VE_USART0
XT_USART0:
  .dw DO_COLON
PFA_USART0:          ; ( -- )
  .dw XT_ZERO
  .dw XT_DOLITERAL
  .dw usart0_tx_in
  .dw XT_CSTORE

  .dw XT_ZERO
  .dw XT_DOLITERAL
  .dw usart0_tx_out
  .dw XT_CSTORE

  .dw XT_ZERO
  .dw XT_DOLITERAL
  .dw usart0_rx_in
  .dw XT_CSTORE

  .dw XT_ZERO
  .dw XT_DOLITERAL
  .dw usart0_rx_out
  .dw XT_CSTORE

  .dw XT_DOLITERAL
  .dw baudrate
  .dw XT_DUP
  .dw XT_DOLITERAL
  .dw UBRR0L+$20
  .dw XT_CSTORE
  .dw XT_BYTESWAP
  .dw XT_DOLITERAL
  .dw UBRR0H
  .dw XT_CSTORE
  .dw XT_DOLITERAL
  .dw (1<<UMSEL01)|(3<<UCSZ00)
  .dw XT_DOLITERAL
  .dw UCSR0C+$20
  .dw XT_CSTORE
  .dw XT_DOLITERAL
  .dw (1<<TXEN0) | (1<<RXEN0) | (1<<RXCIE0)
  .dw XT_DOLITERAL
  .dw UCSR0B+$20
  .dw XT_CSTORE
  .dw XT_EXIT

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
; R( --)
; put 1 character into output queue, wait if needed, enable UDRIE0 interrupt
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
    st z,tosl
    loadtos
    in_ temp0,UCSR0B
    sbr temp0,(1<<UDRIE0)
    out_ UCSR0B,temp0
    jmp DO_NEXT

; ( -- f)
; R( --)
; check if a character can be appended to output queue.
VE_TX0Q:
    .db $04, "tx0?",0
    .dw VE_HEAD
    .set VE_HEAD = VE_TX0Q
XT_TX0Q:
    .dw PFA_TX0Q
PFA_TX0Q:
    savetos
    lds temp0,usart0_tx_out
    lds temp1,usart0_tx_in
    movw zl, zerol
    cp temp0, temp1
    brne PFA_TX0Q1
    sbiw zl, 1
PFA_TX0Q1:
    movw tosl, zl
    jmp DO_NEXT

; ( -- c)
; R( --)
; get 1 character from input queue, wait if needed
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
    savetos
    inc temp1
    andi temp1,usart0_rx_mask
    sts usart0_rx_out, temp1

    ldi zl,low(usart0_rx_data)
    ldi zh,high(usart0_rx_data)
    add zl, temp1
    adc zh, zeroh
    ld tosl, Z
    clr tosh
    jmp DO_NEXT

; ( -- f)
; R( --)
; check if unread characters are in the input queue.
VE_RX0Q:
    .db $04, "rx0?",0
    .dw VE_HEAD
    .set VE_HEAD = VE_RX0Q
XT_RX0Q:
    .dw PFA_RX0Q
PFA_RX0Q:
    savetos
    lds temp0,usart0_rx_out
    lds temp1,usart0_rx_in
    movw zl, zerol
    cpse temp0, temp1
    sbiw zl, 1
    movw tosl, zl
    jmp DO_NEXT
