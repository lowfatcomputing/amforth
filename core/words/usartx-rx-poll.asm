; ( -- c) Hardware Access
; R( --)
; wait for and get one character from the terminal
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
  .dw TERM_USART+USART_DATA_offset
  .dw XT_CFETCH
  .dw XT_EXIT

; ( -- f)  Hardware Access
; R( --)
; check if a character can read from the terminal
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
  .dw TERM_USART+USART_STATUS_offset
  .dw XT_CFETCH
  .dw XT_DOLITERAL
  .dw USART_RXCIF_bm
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
  .dw PFA_USART_INIT_RX
PFA_USART_INIT_RX:          ; ( -- )
  jmp_ DO_NEXT
