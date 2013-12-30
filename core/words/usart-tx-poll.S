; (c -- )
; MCU
; check availability and send one character to the terminal using register poll
VE_TX_POLL:
    .word 0xff07
    .string "tx-poll"
    .word VE_HEAD
    .set VE_HEAD,  VE_TX_POLL
XT_TX_POLL:
    .word DO_COLON
PFA_TX_POLL:
  ; wait for data ready
  .word XT_TXQ_POLL
  .word XT_DOCONDBRANCH
  .word PFA_TX_POLL
  ; send to usart
  .word XT_DOLITERAL
  .word USART_DATA
  .word XT_CSTORE
  .word XT_EXIT

; ( -- f) MCU
; MCU
; check if a character can be send using register poll
VE_TXQ_POLL:
    .word 0xff08
    .ascii "tx?-poll"
    .word VE_HEAD
    .set VE_HEAD,  VE_TXQ_POLL
XT_TXQ_POLL:
    .word DO_COLON
PFA_TXQ_POLL:
  .word XT_PAUSE
  .word XT_DOLITERAL
  .word USART_A
  .word XT_CFETCH
  .word XT_DOLITERAL
  .word bm_USART_TXRD
  .word XT_AND
  .word XT_EXIT
