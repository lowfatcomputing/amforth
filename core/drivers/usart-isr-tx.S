;;; usart driver, transmitting

;; bit definitions

.set pc_, pc
.org UDREaddr
  jmp_ usart_udre_isr
.org pc_

; sizes have to be powers of 2!
.equ usart_tx_size = 0x10
.equ usart_tx_mask = usart_tx_size - 1
.data
usart_tx_in: .byte 1
usart_tx_out: .byte 1
usart_tx_data: .byte usart_tx_size
.text

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
  cbr xl, bm_ENABLE_INT_TX
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
  sts USART_DATA,xl

usart_udre_done:
  pop zh
  pop zl
  pop xh
  pop xl
  out SREG,xl
  pop xl
  reti

; ( -- ) Hardware Access
; R( --)
; initialize usart
;VE_USART_INIT_TX:
;  .word 0xff06
;  .ascii "+usart"
;  .word VE_HEAD
;  .set VE_HEAD, VE_USART_INIT_TX
XT_USART_INIT_TX_ISR:
  .word DO_COLON
PFA_USART_INIT_TX_ISR:          ; ( -- )
  .word XT_ZERO
  .word XT_DOLITERAL
  .word usart_tx_in
  .word XT_STORE
  .word XT_EXIT
