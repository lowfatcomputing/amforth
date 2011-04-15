; (c -- )
; MCU
; put 1 character into output queue, wait if needed, enable UDRIE interrupt
VE_TX:
    .dw $ff02
    .db "tx"
    .dw VE_HEAD
    .set VE_HEAD = VE_TX
XT_TX:
    .dw DO_COLON
PFA_TX:
  ; wait for queue
  .dw XT_TXQ
  .dw XT_DOCONDBRANCH
  .dw PFA_TX
  ; append to queue
  .dw XT_DOLITERAL
  .dw usart_tx_in
  .dw XT_CFETCH        ; ( -- c tx_in)
  .dw XT_1PLUS
  .dw XT_DOLITERAL
  .dw usart_tx_mask
  .dw XT_AND           ; ( -- c tx_in_new)
  .dw XT_SWAP
  .dw XT_OVER          ; ( -- tx_in_new c tx_in_new
  .dw XT_DOLITERAL
  .dw usart_tx_data   ; ( -- c tx_in_new data)
  .dw XT_PLUS
  .dw XT_CSTORE

  .dw XT_DOLITERAL
  .dw usart_tx_in
  .dw XT_CSTORE
  ; enable interrupt
  .dw XT_DOLITERAL
  .dw USART_B
  .dw XT_DUP            ;
  .dw XT_CFETCH
  .dw XT_DOLITERAL
  .dw 1<<UDRIE
  .dw XT_OR
  .dw XT_SWAP
  .dw XT_CSTORE
  .dw XT_EXIT

; ( -- f)
; MCU
; check if a character can be appended to output queue.
VE_TXQ:
    .dw $ff03
    .db "tx?",0
    .dw VE_HEAD
    .set VE_HEAD = VE_TXQ
XT_TXQ:
    .dw DO_COLON
PFA_TXQ:
  .dw XT_PAUSE
  .dw XT_DOLITERAL
  .dw usart_tx_out
  .dw XT_CFETCH
  .dw XT_DOLITERAL
  .dw usart_tx_in
  .dw XT_CFETCH
  .dw XT_GREATER
  .dw XT_NOT
  .dw XT_EXIT
