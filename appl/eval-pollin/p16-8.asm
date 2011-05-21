; Settings for the eval board with Atmega8 & 8 MHz
.include "macros.asm"
.include "device.asm"

  .equ TIBSIZE  = $64   ; 80 characters is one line...
  .equ APPUSERSIZE = 10 ; size of user area

; cpu clock in hertz
.equ F_CPU = 8000000
; baud rate of terminal
.include "drivers/usart.asm"

.equ BAUD = 9600
.equ USART_B_VALUE = (1<<TXEN) | (1<<RXEN) | (1<<RXCIE)
.equ USART_C_VALUE = (3<<UCSZ0)

.set rstackstart = RAMEND
.set stackstart  = RAMEND - 80
.set amforth_interpreter = max_dict_addr
.set NUMWORDLISTS = 8

.set WANT_TIMER_COUNTER_0 = 1
.set WANT_PORTA = 1
.set WANT_PORTB = 1
.set WANT_PORTC = 1
.set WANT_PORTD = 1
.set WANT_TWI = 1

.set WANT_IGNORECASE = 1
.include "amforth.asm"
