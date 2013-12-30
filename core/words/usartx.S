; ( -- )
; MCU
; initialize the atxmega usart (ATXmega)
VE_USARTX:
  .word 0xff07
  .string "+usartx"
  .word VE_HEAD
  .set VE_HEAD, VE_USARTX
XT_USARTX:
  .word DO_COLON
PFA_USARTX:          ; ( -- )

  .word XT_DOLITERAL
  .word 0x88
  .word XT_DOLITERAL
  .word TERM_USART_PORT + PORT_DIRSET_offset
  .word XT_CSTORE

  .word XT_DOLITERAL
  .word 0x44
  .word XT_DOLITERAL
  .word TERM_USART_PORT + PORT_DIRCLR_offset
  .word XT_CSTORE

  .word XT_DOLITERAL
  .word USART_A_VALUE
  .word XT_DOLITERAL
  .word TERM_USART + USART_CTRLA_offset
  .word XT_CSTORE

  .word XT_DOLITERAL
  .word USART_B_VALUE
  .word XT_DOLITERAL
  .word TERM_USART + USART_CTRLB_offset
  .word XT_CSTORE

  .word XT_DOLITERAL
  .word USART_C_VALUE
  .word XT_DOLITERAL
  .word TERM_USART + USART_CTRLC_offset
  .word XT_CSTORE

  .word XT_UBRR
  .word XT_DUP
  .word XT_BYTESWAP
  .word XT_DOLITERAL
  .word TERM_USART + USART_BAUDCTRLB_offset
  .word XT_CSTORE
  .word XT_DOLITERAL
  .word TERM_USART + USART_BAUDCTRLA_offset
  .word XT_CSTORE

  .word XT_USART_INIT_RX
  .word XT_USART_INIT_TX
  .word XT_EXIT
