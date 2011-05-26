; (c -- )
; MCU
; wait for the terminal becomes ready and put 1 character to it (Poll, ATXmega)
VE_TX_POLL:
    .dw $ff02
    .db "tx"
    .dw VE_HEAD
    .set VE_HEAD = VE_TX_POLL
XT_TX_POLL:
    .dw DO_COLON
PFA_TX_POLL:
  ; wait for data ready
  .dw XT_TX_POLLQ
  .dw XT_DOCONDBRANCH
  .dw PFA_TX_POLL
  ; send to usart
  .dw XT_DOLITERAL
  .dw TERM_USART+USART_DATA_offset
  .dw XT_CSTORE
  .dw XT_EXIT

; ( -- f)
; MCU
; check if a character can be sent (Poll, ATXmega)
VE_TX_POLLQ:
    .dw $ff03
    .db "tx?",0
    .dw VE_HEAD
    .set VE_HEAD = VE_TX_POLLQ
XT_TX_POLLQ:
    .dw DO_COLON
PFA_TX_POLLQ:
  .dw XT_PAUSE
  .dw XT_DOLITERAL
  .dw TERM_USART+USART_STATUS_offset
  .dw XT_CFETCH
; #define USART_IsTXDataRegisterEmpty(_usart) (((_usart)->STATUS & USART_DREIF_bm) != 0)
  .dw XT_DOLITERAL
  .dw USART_DREIF_bm
  .dw XT_AND
  .dw XT_NOTEQUALZERO
  .dw XT_EXIT

; ( -- )
; MCU
; initialize usart
;VE_USART_INIT_TX_POLL:
;  .dw $ff06
;  .db "+usart"
;  .dw VE_HEAD
;  .set VE_HEAD = VE_USART_INIT_TX_POLL
XT_USART_INIT_TX_POLL:
  .dw PFA_USART_INIT_TX_POLL
PFA_USART_INIT_TX_POLL:          ; ( -- )
  jmp_ DO_NEXT
