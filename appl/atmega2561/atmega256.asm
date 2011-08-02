; Settings for the avr butterfly demo board
.include "macros.asm"
.include "device.asm"

.equ TIBSIZE  = $64 ; 80 characters is one line...
.equ APPUSERSIZE = 2  ; size of user area

.equ NUMWORDLISTS = 8

; cpu clock in hertz
.equ F_CPU = 14745600
; baud rate of terminal
.include "drivers/usart_1.asm"
.equ BAUD = 9600
.equ USART_B_VALUE = bm_ENABLE_TX | bm_ENABLE_RX | bm_ENABLE_INT_RX
.equ USART_C_VALUE = bm_ASYNC | bm_NO_PARITY | bm_1STOPBIT | bm_8BIT

.set rstackstart = RAMEND
.set stackstart  = RAMEND - 80
.set amforth_interpreter = NRWW_START_ADDR

.include "amforth-low.asm"
