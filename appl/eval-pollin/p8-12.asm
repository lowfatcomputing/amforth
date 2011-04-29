; Settings for the eval board with Atmega8 & 8 MHz
.include "macros.asm"
.include "device.asm"

  .equ TIBSIZE  = $64    ; 80 characters is one line...
  .equ APPUSERSIZE = 10  ; size of user area

.set WANT_ISR_RX = 1
; cpu clock in hertz
.equ F_CPU = 12000000
; baud rate of terminal
.equ BAUD = 9600
.include "drivers/usart_0.asm"
.equ USART_B_VALUE = (1<<TXEN0) | (1<<RXEN0) | (1<<RXCIE0)
.equ USART_C_VALUE = ( 3<<UCSZ00)

;.include "drivers/usart.asm"
;.equ USART_B_VALUE = (1<<TXEN) | (1<<RXEN) | (1<<RXCIE)
;.equ USART_C_VALUE = ( 3<<UCSZ0)

.set here = ramstart
.set rstackstart = RAMEND
.set stackstart  = RAMEND - 40

.set NUMWORDLISTS = 8

.set amforth_interpreter = max_dict_addr
.include "amforth.asm"
