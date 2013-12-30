; ( -- c) 
; MCU
; wait for and get one character from the terminal (Poll, ATXmega)
VE_XRX_POLL:
    .word 0xff09
    .string "x-rx-poll"
    .word VE_HEAD
    .set VE_HEAD, VE_XRX_POLL
XT_XRX_POLL:
    .word DO_COLON
PFA_XRX_POLL:
  ; wait for data ready
  .word XT_XRXQ_POLL
  .word XT_DOCONDBRANCH
  .word PFA_XRX_POLL
  ; send to usart
  .word XT_DOLITERAL
  .word TERM_USART+USART_DATA_offset
  .word XT_CFETCH
  .word XT_EXIT

; ( -- f)
; MCU
; check if a character can read from the terminal (Poll, ATXmega)
VE_XRXQ_POLL:
    .word 0xff0a
    .ascii "x-rx?-poll"
    .word VE_HEAD
    .set VE_HEAD, VE_XRXQ_POLL
XT_XRXQ_POLL:
    .word DO_COLON
PFA_XRXQ_POLL:
  .word XT_PAUSE
  .word XT_DOLITERAL
  .word TERM_USART+USART_STATUS_offset
  .word XT_CFETCH
  .word XT_DOLITERAL
  .word USART_RXCIF_bm
  .word XT_AND
  .word XT_EXIT

; ( -- )
; MCU
; initialize usart
;VE_USART_INIT_RX:
;  .word 0xff06
;  .ascii "+usart"
;  .word VE_HEAD
;  .set VE_HEAD, VE_USART_INIT_RX
XT_USART_INIT_XRX_POLL:
  .word DO_COLON
PFA_USART_INIT_XRX_POLL:          ; ( -- )
  .word XT_EXIT
