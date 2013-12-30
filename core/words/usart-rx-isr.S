; ( -- c)
; MCU
; get 1 character from input queue, wait if needed using interrupt driver
VE_RX_ISR:
    .word 0xff06
    .ascii "rx-isr"
    .word VE_HEAD
    .set VE_HEAD,  VE_RX_ISR
XT_RX_ISR:
    .word DO_COLON
PFA_RX_ISR:
  .word XT_RXQ_ISR
  .word XT_DOCONDBRANCH
  .word PFA_RX_ISR
  .word XT_DOLITERAL
  .word usart_rx_out
  .word XT_CFETCH
  .word XT_DUP
  .word XT_1PLUS
  .word XT_DOLITERAL
  .word usart_rx_mask
  .word XT_AND
  .word XT_DOLITERAL
  .word usart_rx_out
  .word XT_CSTORE
  .word XT_DOLITERAL
  .word usart_rx_data
  .word XT_PLUS
  .word XT_CFETCH
  .word XT_EXIT

; ( -- f)  
; MCU
; check if unread characters are in the input queue using interrupt driver
VE_RXQ_ISR:
    .word 0xff07
    .string "rx?-isr"
    .word VE_HEAD
    .set VE_HEAD,  VE_RXQ_ISR
XT_RXQ_ISR:
    .word DO_COLON
PFA_RXQ_ISR:
  .word XT_PAUSE
  .word XT_DOLITERAL
  .word usart_rx_out
  .word XT_CFETCH
  .word XT_DOLITERAL
  .word usart_rx_in
  .word XT_CFETCH
  .word XT_NOTEQUAL
  .word XT_EXIT
