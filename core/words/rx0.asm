;;; usart driver

;; bit definitions

.set pc_ = pc
.org URXCaddr
  jmp_ usart0_rx_isr
.org pc_

; sizes have to be powers of 2!
.equ usart0_rx_size = $10

.equ usart0_rx_mask = usart0_rx_size - 1

.set usart0_rx_in = heap
.set heap = heap + 1

.set usart0_rx_out = heap
.set heap = heap + 1

.set usart0_rx_data = heap
.set heap = heap + usart0_rx_size

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
usart0_rx_isr:
  push xl
  in xl, SREG
  push xl
  push xh
  push zl
  push zh

  lds xl,usart0_rx_in
  inc xl
  andi xl,usart0_rx_mask

  ldi zl, low(usart0_rx_data)
  ldi zh, high(usart0_rx_data)
  add zl, xl
  adc zh, zeroh
  in_ xh, UCSR0A ; read status 
  andi xh, (1<<FE0) | (1<<DOR0) | (1<<PE0)
  brne usart0_rx_isr_error
  in_ xh, UDR0
  st Z, xh
  sts usart0_rx_in, xl

usart0_rx_isr_error:
  pop zh
  pop zl
  pop xh
  pop xl
  out SREG, xl
  pop xl
  reti

; ( -- c)  Hardware Access
; R( --)
; get 1 character from input queue, wait if needed
VE_RX0:
    .db $03, "rx0"
    .dw VE_HEAD
    .set VE_HEAD = VE_RX0
XT_RX0:
    .dw DO_COLON
PFA_RX0:
  .dw XT_RX0Q
  .dw XT_DOCONDBRANCH
  .dw PFA_RX0
  .dw XT_DOLITERAL
  .dw usart0_rx_out
  .dw XT_CFETCH
  .dw XT_1PLUS
  .dw XT_DOLITERAL
  .dw usart0_rx_mask
  .dw XT_AND
  .dw XT_DUP
  .dw XT_DOLITERAL
  .dw usart0_rx_out
  .dw XT_CSTORE
  .dw XT_DOLITERAL
  .dw usart0_rx_data
  .dw XT_PLUS
  .dw XT_CFETCH
  .dw XT_EXIT

; ( -- f)  Hardware Access
; R( --)
; check if unread characters are in the input queue.
VE_RX0Q:
    .db $04, "rx0?",0
    .dw VE_HEAD
    .set VE_HEAD = VE_RX0Q
XT_RX0Q:
    .dw DO_COLON
PFA_RX0Q:
  .dw XT_PAUSE
  .dw XT_DOLITERAL
  .dw usart0_rx_out
  .dw XT_CFETCH
  .dw XT_DOLITERAL
  .dw usart0_rx_in
  .dw XT_CFETCH
  .dw XT_NOTEQUAL
  .dw XT_EXIT
