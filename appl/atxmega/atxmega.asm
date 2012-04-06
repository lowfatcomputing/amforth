; Settings for the avr butterfly demo board
.include "macros.asm"
.include "device.asm"

  .equ TIBSIZE  = $64    ; 80 characters is one line...
  .equ APPUSERSIZE = 10  ; size of user area

.set WANT_ISR_TX = 0
.set WANT_ISR_RX = 0

  .equ TERM_USART = USARTE0_base
  .equ TERM_USART_PORT = PORTE_base

;  .equ TERM_USART_DreAddr = USARTE0_DRE_vect
;  .equ URXCAddr = USARTE0_RXC_vect

  .equ USART_A_VALUE = 0
  .equ USART_B_VALUE = USART_TXEN_bm | USART_RXEN_bm
  .equ USART_C_VALUE = USART_CHSIZE_8BIT_gc

.equ NUMWORDLISTS = 8

; cpu clock in hertz
.equ F_CPU = 2000000
; baud rate of terminal
.equ BAUD = 9600

.set stackstart  = RAMEND - 80
.set rstackstart = RAMEND

.include "amforth-low.asm"
