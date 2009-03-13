;;; usart driver

;; bit definitions

.set pc_ = pc
.org UDREaddr
  jmp_ usart_udre_isr
.org pc_

; sizes have to be powers of 2!
.equ usart_tx_size = $4
.equ usart_tx_mask = usart_tx_size - 1

.set usart_tx_in = heap
.set heap = heap + 1

.set usart_tx_out = heap
.set heap = heap + 1

.set usart_tx_data = heap
.set heap = heap + usart_tx_size

usart_udre_isr:
  push xl
  in xl,SREG
  push xl
  push xh
  push zl
  push zh

  lds xl,usart_tx_in
  lds xh,usart_tx_out
  cp xh,xl
  brne usart_udre_next

usart_udre_last:
  lds xl, USART_B
  cbr xl,(1<<UDRIE)
  sts USART_B,xl

  rjmp usart_udre_done

usart_udre_next:
  inc xh
  andi xh,usart_tx_mask
  sts usart_tx_out,xh

  ldi zl,low(usart_tx_data)
  ldi zh,high(usart_tx_data)
  add zl,xh
  adc zh,zeroh
usart_udre_send:
  ld xl,z
  out_ UDR,xl

usart_udre_done:
  pop zh
  pop zl
  pop xh
  pop xl
  out SREG,xl
  pop xl
  reti

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

  in_ xh, USART_A ; read status
  andi xh, (1<<FE) | (1<<DOR) | (1<<PE)
  in_ xh, UDR
  brne usart_rx_isr_finish
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
