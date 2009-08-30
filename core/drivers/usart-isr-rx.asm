;;; usart driver, receiving

.set pc_ = pc
.org URXCaddr
  jmp_ usart_rx_isr
.org pc_

; sizes have to be powers of 2!
.equ usart_rx_size = $10
.equ usart_rx_mask = usart_rx_size - 1

.set usart_rx_in = heap
.set heap = heap + 1

.set usart_rx_out = heap
.set heap = heap + 1

.set usart_rx_data = heap
.set heap = heap + usart_rx_size

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; todo: wenn XON/XOFF erkannt werden, nicht in den Input Buffer schreiben!
usart_rx_isr:
  push xl
  in xl, SREG
  push xl
  push xh
  push zl
  push zh

  in_ xh, USART_DATA
  lds xl,usart_rx_in
  inc xl
  andi xl,usart_rx_mask

  ldi zl, low(usart_rx_data)
  ldi zh, high(usart_rx_data)
  add zl, xl
  adc zh, zeroh
  st Z, xh
  sts usart_rx_in, xl

usart_rx_isr_finish:
  pop zh
  pop zl
  pop xh
  pop xl
  out SREG, xl
  pop xl
  reti

; ( -- ) Hardware Access
; R( --)
; initialize usart
;VE_USART_INIT_RX:
;  .dw $ff06
;  .db "+usart"
;  .dw VE_HEAD
;  .set VE_HEAD = VE_USART_INIT_RX
XT_USART_INIT_RX:
  .dw DO_COLON
PFA_USART_INIT_RX:          ; ( -- )
  .dw XT_ZERO
  .dw XT_DOLITERAL
  .dw usart_rx_in
  .dw XT_STORE

  .dw XT_EXIT
