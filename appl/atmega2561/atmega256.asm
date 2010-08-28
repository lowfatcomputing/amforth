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
.equ USART_B_VALUE = (1<<TXEN1) | (1<<RXEN1) | (1<<RXCIE1)
.equ USART_C_VALUE = (1<<UCSZ11) | ( 1<<UCSZ10)

.set here = ramstart
.set rstackstart = RAMEND
.set stackstart  = RAMEND - 80
.set amforth_interpreter = NRWW_START_ADDR
.equ want_fun = 1

.include "amforth-low.asm"
