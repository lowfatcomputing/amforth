; Settings for the eval board with Atmega32 & 16 MHz
.include "macros.asm"
.include "device.asm"

  .equ HLDSIZE  = $10 ; 16 bit cellsize with binary representation
  .equ TIBSIZE  = $64 ; 80 characters is one line...
  .equ CELLSIZE = 2   ;
  .equ APPUSERSIZE = 2  ; size of user area
.equ USART_B_VALUE = (1<<TXEN) | (1<<RXEN) ; | (1<<RXCIE)
.equ USART_C_VALUE = (3<<UCSZ0)

; cpu clock in hertz
.equ F_CPU = 16000000
; baud rate of terminal
.equ BAUD = 9600

; size of return stack in bytes
.set rstackstart = RAMEND
.set stackstart  = RAMEND - 80
.set heap = ramstart
.set amforth_interpreter = max_dict_addr

.set NUMWORDLISTS = 8
.equ want_fun = 1
.include "amforth.asm"
