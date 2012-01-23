; Settings for the pollin eval boards with various atmega's
.include "macros.asm"
.include "device.asm"

  .equ TIBSIZE  = $64    ; 80 characters is one line...
  .equ APPUSERSIZE = 10  ; size of user area

; cpu clock in hertz
.equ F_CPU = @F_CPU@
; baud rate of terminal
.equ BAUD = 9600
.include "drivers/usart@USART@.asm"
.equ USART_B_VALUE = bm_ENABLE_TX | bm_ENABLE_RX | bm_ENABLE_INT_RX
.equ USART_C_VALUE = bm_ASYNC | bm_NO_PARITY | bm_1STOPBIT | bm_8BIT

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
.include "amforth.asm"
