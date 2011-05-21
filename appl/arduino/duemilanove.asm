.include "macros.asm"
.include "device.asm"

.equ TIBSIZE  = $64   ; 80 characters is one line...
.equ APPUSERSIZE = 10 ; size of application user area

; cpu clock in hertz
.equ F_CPU = 16000000
; baud rate of terminal
.include "drivers/usart_0.asm"
.equ BAUD = 9600
.equ USART_B_VALUE = (1<<TXEN0) | (1<<RXEN0) | (1<<RXCIE0)
.equ USART_C_VALUE = (1<<UCSZ01) | ( 1<<UCSZ00)

.set rstackstart = RAMEND
.set stackstart  = RAMEND - 80
.set amforth_interpreter = max_dict_addr

.set NUMWORDLISTS = 8
.include "amforth.asm"
