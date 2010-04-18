; Settings for the avr butterfly demo board
.include "macros.asm"
.include "devices/atmega169.asm"

  .equ HLDSIZE  = $10 ; 16 bit cellsize with binary representation
  .equ TIBSIZE  = $64 ; 80 characters is one line...
  .equ CELLSIZE = 2   ; never change
  .equ APPUSERSIZE = 2  ; size of user area

; cpu clock in hertz
.equ F_CPU = 8000000
; baud rate of terminal
.equ BAUD = 9600
.equ USART_B_VALUE = (1<<TXEN0) | (1<<RXEN0) | (1<<RXCIE0)
.equ USART_C_VALUE = (1<<UCSZ00)|(1<<UCSZ01)

.equ amforth_interpreter = NRWW_START_ADDR

.set NUMWORDLISTS=8

.set heap = ramstart
.set rstackstart = RAMEND
.set stackstart  = RAMEND - 80
.equ want_fun = 1

.include "amforth.asm"
