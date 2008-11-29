;;; usart driver

;; bit definitions

.set pc_ = pc
.org UDREaddr
  jmp_ usart0_udre_isr
.org pc_

; +---+---+---+---+---+---+---+---+
; | 7 | 6 | 5 | 4 | 3 | 2 | 1 | 0 |
; +---+---+---+---+---+---+---+---+
;   0 send a XOFF (13), clear afterwards
;   1 send a XON  (11), clear afterwards
; 2-7 ununsed, set to 0
.set usart0_flags = heap
.set heap = heap + 1

; sizes have to be powers of 2!
.equ usart0_tx_size = $4

.equ usart0_tx_mask = usart0_tx_size - 1

.set usart0_tx_in = heap
.set heap = heap + 1

.set usart0_tx_out = heap
.set heap = heap + 1

.set usart0_tx_data = heap
.set heap = heap + usart0_tx_size

usart0_udre_isr:
  push xl
  in xl,SREG
  push xl
  push xh
  push zl
  push zh
  lds xl, usart0_flags
  sts usart0_flags, zerol
  cpi xl, 0
  breq usart0_udre_doqueue
    cpi xl, 1
    brne usart0_udre_doxon
    ldi zl,$13
    rjmp usart0_uder_doflags_done
usart0_udre_doxon:
    ldi zl, $11
usart0_uder_doflags_done:
    rjmp usart0_udre_send

usart0_udre_doqueue:

  lds xl,usart0_tx_in
  lds xh,usart0_tx_out

  cp xh,xl
  brne usart0_udre_next

usart0_udre_last:
  lds xl, USART0_B
  cbr xl,(1<<UDRIE0)
  sts USART0_B,xl

  rjmp usart0_udre_done

usart0_udre_next:
  inc xh
  andi xh,usart0_tx_mask
  sts usart0_tx_out,xh

  ldi zl,low(usart0_tx_data)
  ldi zh,high(usart0_tx_data)
  add zl,xh
  adc zh,zeroh
usart0_udre_send:
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
; todo: wenn XON/XOFF erkannt werden, nicht in den Input Buffer schreiben!
usart0_rx_isr:
  push xl
  in xl, SREG
  push xl
  push xh
  push zl
  push zh

  in_ xh, UCSR0A ; read status
  andi xh, (1<<FE0) | (1<<DOR0) | (1<<PE0)
  in_ xh, UDR0
  brne usart0_rx_isr_finish
  lds xl,usart0_rx_in
  inc xl
  andi xl,usart0_rx_mask

  ldi zl, low(usart0_rx_data)
  ldi zh, high(usart0_rx_data)
  add zl, xl
  adc zh, zeroh
  st Z, xh
  sts usart0_rx_in, xl

usart0_rx_isr_finish:
  pop zh
  pop zl
  pop xh
  pop xl
  out SREG, xl
  pop xl
  reti
