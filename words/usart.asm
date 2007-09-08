;;; usart driver

; ( -- v) System Value
; R( -- )
; returns usart0 baudrate
VE_BAUD0:
  .db 05,"baud0"
  .dw VE_HEAD
  .set VE_HEAD = VE_BAUD0
XT_BAUD0:
  .dw PFA_DOVALUE
PFA_BAUD00:          ; ( -- )
  .dw 10

; ( -- ) Hardware Access
; R( --)
; initialize usart0
VE_USART0:
  .db $06, "usart0",0
  .dw VE_HEAD
  .set VE_HEAD = VE_USART0
XT_USART0:
  .dw DO_COLON
PFA_USART0:          ; ( -- )
  .dw XT_ZERO
  .dw XT_DOLITERAL
  .dw usart0_tx_in
  .dw XT_CSTORE

  .dw XT_ZERO
  .dw XT_DOLITERAL
  .dw usart0_tx_out
  .dw XT_CSTORE

  .dw XT_ZERO
  .dw XT_DOLITERAL
  .dw usart0_rx_in
  .dw XT_CSTORE

  .dw XT_ZERO
  .dw XT_DOLITERAL
  .dw usart0_rx_out
  .dw XT_CSTORE

  .dw XT_F_CPU
  .dw XT_D2SLASH
  .dw XT_D2SLASH
  .dw XT_D2SLASH
  .dw XT_D2SLASH
  .dw XT_ROT
  .dw XT_UMSLASHMOD
  .dw XT_SWAP
  .dw XT_DROP
  .dw XT_1MINUS

  .dw XT_DUP
  .dw XT_DOLITERAL
  .dw BAUDRATE0_LOW
  .dw XT_CSTORE
  .dw XT_BYTESWAP
  .dw XT_DOLITERAL
  .dw BAUDRATE0_HIGH
  .dw XT_CSTORE
  .dw XT_DOLITERAL
  .dw (1<<UMSEL01)|(3<<UCSZ00)
  .dw XT_DOLITERAL
  .dw USART0_C
  .dw XT_CSTORE
  .dw XT_DOLITERAL
  .dw (1<<TXEN0) | (1<<RXEN0) | (1<<RXCIE0)
  .dw XT_DOLITERAL
  .dw USART0_B
  .dw XT_CSTORE
  
    ; set IO
    .dw XT_DOLITERAL
    .dw XT_TX0
    .dw XT_DOLITERAL
    .dw XT_EMIT
    .dw XT_DEFERSTORE

    .dw XT_DOLITERAL
    .dw XT_TX0Q
    .dw XT_DOLITERAL
    .dw XT_EMITQ
    .dw XT_DEFERSTORE

    .dw XT_DOLITERAL
    .dw XT_RX0
    .dw XT_DOLITERAL
    .dw XT_KEY
    .dw XT_DEFERSTORE

    .dw XT_DOLITERAL
    .dw XT_RX0Q
    .dw XT_DOLITERAL
    .dw XT_KEYQ
    .dw XT_DEFERSTORE

    .dw XT_DOLITERAL
    .dw XT_NOOP
    .dw XT_DOLITERAL
    .dw XT_SLASHKEY
    .dw XT_DEFERSTORE

  .dw XT_EXIT

