; (c -- )
; MCU
; put 1 character into output queue, wait if needed, enable UDRIE interrupt
VE_TX_ISR:
    .word 0xff06
    .ascii "tx-isr"
    .word VE_HEAD
    .set VE_HEAD, VE_TX_ISR
XT_TX_ISR:
    .word DO_COLON
PFA_TX_ISR:
  ; wait for queue
  .word XT_TXQ_ISR
  .word XT_DOCONDBRANCH
  .word PFA_TX_ISR
  ; append to queue
  .word XT_DOLITERAL
  .word usart_tx_in
  .word XT_CFETCH        ; ( -- c tx_in)
  .word XT_1PLUS
  .word XT_DOLITERAL
  .word usart_tx_mask
  .word XT_AND           ; ( -- c tx_in_new)
  .word XT_SWAP
  .word XT_OVER          ; ( -- tx_in_new c tx_in_new
  .word XT_DOLITERAL
  .word usart_tx_data   ; ( -- c tx_in_new data)
  .word XT_PLUS
  .word XT_CSTORE

  .word XT_DOLITERAL
  .word usart_tx_in
  .word XT_CSTORE
  ; enable interrupt
  .word XT_DOLITERAL
  .word USART_B
  .word XT_DUP            ;
  .word XT_CFETCH
  .word XT_DOLITERAL
  .word bm_ENABLE_INT_TX
  .word XT_OR
  .word XT_SWAP
  .word XT_CSTORE
  .word XT_EXIT

; ( -- f)
; MCU
; check if a character can be appended to output queue.
VE_TXQ_ISR:
    .word 0xff07
    .string "tx?-isr"
    .word VE_HEAD
    .set VE_HEAD, VE_TXQ_ISR
XT_TXQ_ISR:
    .word DO_COLON
PFA_TXQ_ISR:
  .word XT_PAUSE
  .word XT_DOLITERAL
  .word usart_tx_out
  .word XT_CFETCH
  .word XT_DOLITERAL
  .word usart_tx_in
  .word XT_CFETCH
  .word XT_GREATER
  .word XT_NOT
  .word XT_EXIT

