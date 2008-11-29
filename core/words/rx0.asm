; ( -- c)  Hardware Access
; R( --)
; get 1 character from input queue, wait if needed
VE_RX0:
    .dw $ff03
    .db "rx0",0
    .dw VE_HEAD
    .set VE_HEAD = VE_RX0
XT_RX0:
    .dw DO_COLON
PFA_RX0:
  .dw XT_RX0Q
  .dw XT_DOCONDBRANCH
  .dw PFA_RX0
  .dw XT_DOLITERAL
  .dw usart0_rx_out
  .dw XT_CFETCH
  .dw XT_1PLUS
  .dw XT_DOLITERAL
  .dw usart0_rx_mask
  .dw XT_AND
  .dw XT_DUP
  .dw XT_DOLITERAL
  .dw usart0_rx_out
  .dw XT_CSTORE
  .dw XT_DOLITERAL
  .dw usart0_rx_data
  .dw XT_PLUS
  .dw XT_CFETCH
  .dw XT_EXIT

; ( -- f)  Hardware Access
; R( --)
; check if unread characters are in the input queue.
VE_RX0Q:
    .dw $ff04
    .db "rx0?"
    .dw VE_HEAD
    .set VE_HEAD = VE_RX0Q
XT_RX0Q:
    .dw DO_COLON
PFA_RX0Q:
  .dw XT_PAUSE
  .dw XT_DOLITERAL
  .dw usart0_rx_out
  .dw XT_CFETCH
  .dw XT_DOLITERAL
  .dw usart0_rx_in
  .dw XT_CFETCH
  .dw XT_NOTEQUAL
  .dw XT_EXIT
