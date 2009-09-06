; (c -- ) Hardware Access
; R( --)
; wait for one character and read it from the terminal connection
VE_RX:
    .dw $ff02
    .db "rx"
    .dw VE_HEAD
    .set VE_HEAD = VE_RX
XT_RX:
    .dw DO_COLON
PFA_RX:
  ; wait for data ready
  .dw XT_RXQ
  .dw XT_DOCONDBRANCH
  .dw PFA_RX
  ; send to usart
  .dw XT_DOLITERAL
  .dw USART_DATA
  .dw XT_CFETCH
  .dw XT_EXIT

; ( -- f)  Hardware Access
; R( --)
; check if a character can be appended to output queue.
VE_RXQ:
    .dw $ff03
    .db "rx?",0
    .dw VE_HEAD
    .set VE_HEAD = VE_RXQ
XT_RXQ:
    .dw DO_COLON
PFA_RXQ:
  .dw XT_PAUSE
  .dw XT_DOLITERAL
  .dw USART_A
  .dw XT_CFETCH
  .dw XT_DOLITERAL
  .dw USART_RXEN_bm
  .dw XT_AND
  .dw XT_EXIT

; ( -- ) Hardware Access
; R( --)
; initialize usart
;VE_USART_INIT_RX:
;  .dw $ff06
;  .db "+usart"
;  .dw VE_HEAD
;  .set VE_HEAD = VE_USART_INIT_RX
XT_USART_INIT_RX:
  .dw DO_COLON
PFA_USART_INIT_RX:          ; ( -- )
  .dw XT_EXIT
