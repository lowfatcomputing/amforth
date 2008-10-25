;;; usart driver

;; bit definitions

.set pc_ = pc
.org UDREaddr
  jmp_ usart0_udre_isr
.org pc_

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

; (c -- ) Hardware Access
; R( --)
; put 1 character into output queue, wait if needed, enable UDRIE0 interrupt
VE_TX0:
    .dw $ff03
    .db "tx0",0
    .dw VE_HEAD
    .set VE_HEAD = VE_TX0
XT_TX0:
    .dw DO_COLON
PFA_TX0:
  ; wait for queue
  .dw XT_TX0Q
  .dw XT_DOCONDBRANCH
  .dw PFA_TX0
  ; append to queue
  .dw XT_DOLITERAL
  .dw usart0_tx_in
  .dw XT_CFETCH        ; ( -- c tx_in)
  .dw XT_1PLUS
  .dw XT_DOLITERAL
  .dw usart0_tx_mask
  .dw XT_AND           ; ( -- c tx_in_new)
  .dw XT_SWAP
  .dw XT_OVER          ; ( -- tx_in_new c tx_in_new
  .dw XT_DOLITERAL
  .dw usart0_tx_data   ; ( -- c tx_in_new data)
  .dw XT_PLUS
  .dw XT_CSTORE

  .dw XT_DOLITERAL
  .dw usart0_tx_in
  .dw XT_CSTORE
  ; enable interrupt
  .dw XT_DOLITERAL
  .dw USART0_B
  .dw XT_DUP            ;
  .dw XT_CFETCH
  .dw XT_DOLITERAL
  .dw 1<<UDRIE0
  .dw XT_OR
  .dw XT_SWAP
  .dw XT_CSTORE
  .dw XT_EXIT

; ( -- f)  Hardware Access
; R( --)
; check if a character can be appended to output queue.
VE_TX0Q:
    .dw $ff04
    .db "tx0?"
    .dw VE_HEAD
    .set VE_HEAD = VE_TX0Q
XT_TX0Q:
    .dw DO_COLON
PFA_TX0Q:
  .dw XT_PAUSE
  .dw XT_DOLITERAL
  .dw usart0_tx_out
  .dw XT_CFETCH
  .dw XT_DOLITERAL
  .dw usart0_tx_in
  .dw XT_CFETCH
  .dw XT_EQUAL
  .dw XT_EXIT
