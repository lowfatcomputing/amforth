;;; usart driver

; ( -- v) System Value
; R( -- )
; returns usart baudrate
VE_BAUD:
  .dw $ff04
  .db "baud"
  .dw VE_HEAD
  .set VE_HEAD = VE_BAUD
XT_BAUD:
  .dw PFA_DOVALUE
PFA_BAUD:          ; ( -- )
  .dw EE_UBRRVAL

; ( -- ) Hardware Access
; R( --)
; initialize usart
VE_USART:
  .dw $ff06
  .db "+usart"
  .dw VE_HEAD
  .set VE_HEAD = VE_USART
XT_USART:
  .dw DO_COLON
PFA_USART:          ; ( -- )

  .dw XT_DOLITERAL
  .dw USART_B_VALUE
  .dw XT_DOLITERAL
  .dw USART_B
  .dw XT_CSTORE

  .dw XT_DOLITERAL
  .dw USART_C_VALUE
  .dw XT_DOLITERAL
  .dw USART_C
  .dw XT_CSTORE

  .dw XT_BAUD
  .dw XT_DUP
  .dw XT_BYTESWAP
  .dw XT_DOLITERAL
  .dw BAUDRATE_HIGH
  .dw XT_CSTORE
  .dw XT_DOLITERAL
  .dw BAUDRATE_LOW
  .dw XT_CSTORE

  .dw XT_USART_INIT_RX
  .dw XT_USART_INIT_TX
  .dw XT_EXIT

; ( -- ) Hardware Access
; R( --)
; calculate the baudrate register value
VE_TOUSART:
  .dw $ff06
  .db ">usart"
  .dw VE_HEAD
  .set VE_HEAD = VE_TOUSART
XT_TOUSART:
  .dw DO_COLON
PFA_TOUSART:          ; ( -- )

  .dw XT_DOLITERAL
  .dw XT_TX
  .dw XT_DOLITERAL
  .dw XT_EMIT
  .dw XT_DEFERSTORE

  .dw XT_DOLITERAL
  .dw XT_TXQ
  .dw XT_DOLITERAL
  .dw XT_EMITQ
  .dw XT_DEFERSTORE

  .dw XT_DOLITERAL
  .dw XT_RX
  .dw XT_DOLITERAL
  .dw XT_KEY
  .dw XT_DEFERSTORE

  .dw XT_DOLITERAL
  .dw XT_RXQ
  .dw XT_DOLITERAL
  .dw XT_KEYQ
  .dw XT_DEFERSTORE

  .dw XT_DOLITERAL
  .dw XT_NOOP
  .dw XT_DOLITERAL
  .dw XT_SLASHKEY
  .dw XT_DEFERSTORE

  .dw XT_EXIT

