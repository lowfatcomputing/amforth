; (c -- )
; MCU
; wait for one character and read it from the terminal connection using register poll
VE_RX_POLL:
    .word 0xff07
    .string "rx-poll"
    .word VE_HEAD
    .set VE_HEAD, VE_RX_POLL
XT_RX_POLL:
    .word DO_COLON
PFA_RX_POLL:
  ; wait for data ready
  .word XT_RXQ_POLL
  .word XT_DOCONDBRANCH
  .word PFA_RX_POLL
  ; send to usart
  .word XT_DOLITERAL
  .word USART_DATA
  .word XT_CFETCH
  .word XT_EXIT

; ( -- f)
; MCU
; check if a character can be appended to output queue using register poll
VE_RXQ_POLL:
    .word 0xff08
    .ascii "rx?-poll"
    .word VE_HEAD
    .set VE_HEAD, VE_RXQ_POLL
XT_RXQ_POLL:
    .word DO_COLON
PFA_RXQ_POLL:
  .word XT_PAUSE
  .word XT_DOLITERAL
  .word bm_USART_RXRD
  .word XT_DUP
  .word XT_DOLITERAL
  .word USART_A
  .word XT_CFETCH
  .word XT_AND
  .word XT_EQUAL
  .word XT_EXIT
