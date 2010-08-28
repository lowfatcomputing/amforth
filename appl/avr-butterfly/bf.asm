; Settings for the avr butterfly demo board
.include "macros.asm"
.include "device.asm"

.equ TIBSIZE  = $64    ; 80 characters is one line...
.equ APPUSERSIZE = 10  ; size of user area

; cpu clock in hertz
.equ F_CPU = 8000000
; baud rate of terminal
.include "drivers/usart.asm"
.equ BAUD = 9600
.equ USART_B_VALUE = (1<<TXEN0) | (1<<RXEN0) | (1<<RXCIE0)
.equ USART_C_VALUE = (1<<UCSZ00)|(1<<UCSZ01)

.equ amforth_interpreter = NRWW_START_ADDR

.set NUMWORDLISTS=8

.set here = ramstart
.set rstackstart = RAMEND
.set stackstart  = RAMEND - 80
.equ want_fun = 1
.set WANT_SPI = 1

.include "amforth.asm"
