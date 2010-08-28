; Settings for the eval board with Atmega8 & 8 MHz
.include "macros.asm"
.include "device.asm"

.equ TIBSIZE  = $64 ; 80 characters is one line
.equ APPUSERSIZE = 0  ; size of application specific user area

; cpu clock in hertz
.equ F_CPU = 16000000
; baud rate of terminal
.include "drivers/usart_0.asm"
.equ BAUD = 9600
.equ USART_B_VALUE = (1<<TXEN0) | (1<<RXEN0) | (1<<RXCIE0)
.equ USART_C_VALUE = (1<<UCSZ01) | ( 1<<UCSZ00)

.set here = ramstart           ; start address of HERE, grows upward
.set rstackstart = RAMEND
.set stackstart  = RAMEND - 80
.set amforth_interpreter = max_dict_addr

.set NUMWORDLISTS = 8
.set want_fun = 0

; some registers
;.set WANT_SPI = 1

.include "amforth.asm"
