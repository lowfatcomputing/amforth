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
  .db 7, "+usart0"
  .dw VE_HEAD
  .set VE_HEAD = VE_USART0
XT_USART0:
  .dw DO_COLON
PFA_USART0:          ; ( -- )
  .dw XT_DUP
  .dw XT_BYTESWAP
  .dw XT_DOLITERAL
  .dw BAUDRATE0_HIGH
  .dw XT_CSTORE
  .dw XT_DOLITERAL
  .dw BAUDRATE0_LOW
  .dw XT_CSTORE

  .dw XT_DOLITERAL
  .dw USART0_C_VALUE
  .dw XT_DOLITERAL
  .dw USART0_C
  .dw XT_CSTORE
  .dw XT_DOLITERAL
  .dw USART0_B_VALUE
  .dw XT_DOLITERAL
  .dw USART0_B
  .dw XT_CSTORE

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

  .dw XT_EXIT

; ( -- ) Hardware Access
; R( --)
; calculate the baudrate register value
VE_TOUSART0:
  .db 7, ">usart0"
  .dw VE_HEAD
  .set VE_HEAD = VE_TOUSART0
XT_TOUSART0:
  .dw DO_COLON
PFA_TOUSART0:          ; ( -- )
  
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

