; ( -- )
; MCU
; initialize usart
VE_USART:
  .word 0xff06
  .ascii "+usart"
  .word VE_HEAD
  .set VE_HEAD,  VE_USART
XT_USART:
  .word DO_COLON
PFA_USART:          ; ( -- )

  .word XT_DOLITERAL
  .word USART_B_VALUE
  .word XT_DOLITERAL
  .word USART_B
  .word XT_CSTORE

  .word XT_DOLITERAL
  .word USART_C_VALUE
  .word XT_DOLITERAL
  .word USART_C | bm_USARTC_en
  .word XT_CSTORE

  .word XT_UBRR
  .word XT_DUP
  .word XT_BYTESWAP
  .word XT_DOLITERAL
  .word BAUDRATE_HIGH
  .word XT_CSTORE
  .word XT_DOLITERAL
  .word BAUDRATE_LOW
  .word XT_CSTORE

  .word XT_USART_INIT_RX
  .word XT_USART_INIT_TX
  .word XT_EXIT
