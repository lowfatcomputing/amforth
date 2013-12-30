; (c -- )
; MCU
; wait for the terminal becomes ready and put 1 character to it (Poll, ATXmega)
VE_XTX_POLL:
    .word 0xff09
    .string "x-tx-poll"
    .word VE_HEAD
    .set VE_HEAD, VE_XTX_POLL
XT_XTX_POLL:
    .word DO_COLON
PFA_XTX_POLL:
  ; wait for data ready
  .word XT_XTXQ_POLL
  .word XT_DOCONDBRANCH
  .word PFA_XTX_POLL
  ; send to usart
  .word XT_DOLITERAL
  .word TERM_USART+USART_DATA_offset
  .word XT_CSTORE
  .word XT_EXIT

; ( -- f)
; MCU
; check if a character can be sent (Poll, ATXmega)
VE_XTXQ_POLL:
    .word 0xff0a
    .ascii "x-tx?-poll"
    .word VE_HEAD
    .set VE_HEAD, VE_XTXQ_POLL
XT_XTXQ_POLL:
    .word DO_COLON
PFA_XTXQ_POLL:
  .word XT_PAUSE
  .word XT_DOLITERAL
  .word TERM_USART+USART_STATUS_offset
  .word XT_CFETCH
; #define USART_IsTXDataRegisterEmpty(_usart) (((_usart)->STATUS & USART_DREIF_bm) != 0)
  .word XT_DOLITERAL
  .word USART_DREIF_bm
  .word XT_AND
;  .word XT_NOTEQUALZERO
  .word XT_EXIT

; ( -- )
; MCU
; initialize usart
;VE_USART_INIT_TX_POLL:
;  .word 0xff06
;  .ascii "+usart"
;  .word VE_HEAD
;  .set VE_HEAD, VE_USART_INIT_TX_POLL
XT_USART_INIT_XTX_POLL:
  .word PFA_USART_INIT_XTX_POLL
PFA_USART_INIT_XTX_POLL:          ; ( -- )
  jmp_ DO_NEXT
