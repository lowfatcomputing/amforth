; (c -- )
; MCU
; check availability and send one character to the terminal.
VE_TX:
    .dw $ff02
    .db "tx"
    .dw VE_HEAD
    .set VE_HEAD = VE_TX
XT_TX:
    .dw DO_COLON
PFA_TX:
  ; wait for data ready
  .dw XT_TXQ
  .dw XT_DOCONDBRANCH
  .dw PFA_TX
  ; send to usart
  .dw XT_DOLITERAL
  .dw USART_DATA
  .dw XT_CSTORE
  .dw XT_EXIT

; ( -- f) MCU
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
  .dw USART_A
  .dw XT_CFETCH
  .dw XT_DOLITERAL
  .dw USART_TXRD_bm
  .dw XT_AND
  .dw XT_EXIT

; ( -- ) Hardware Access
; R( --)
; initialize usart
;VE_USART_INIT_TX:
;  .dw $ff06
;  .db "+usart"
;  .dw VE_HEAD
;  .set VE_HEAD = VE_USART_INIT_TX
XT_USART_INIT_TX:
  .dw DO_COLON
PFA_USART_INIT_TX:          ; ( -- )
  .dw XT_EXIT
