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
.equ USART_B_VALUE = bm_ENABLE_TX | bm_ENABLE_RX | bm_ENABLE_INT_RX
.equ USART_C_VALUE = bm_ASYNC | bm_NO_PARITY | bm_1STOPBIT | bm_8BIT

;.include "drivers/usart.asm"
;.equ USART_B_VALUE = (1<<TXEN) | (1<<RXEN) | (1<<RXCIE)
;.equ USART_C_VALUE = ( 3<<UCSZ0)

.set rstackstart = RAMEND
.set stackstart  = RAMEND - 40

.set NUMWORDLISTS = 8

.set amforth_interpreter = max_dict_addr
.include "amforth.asm"
