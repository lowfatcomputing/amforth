; Settings for the avr butterfly demo board
.include "macros.asm"
.include "device.asm"

  .equ HLDSIZE  = $10 ; 16 bit cellsize with binary representation
  .equ TIBSIZE  = $64 ; 80 characters is one line...
  .equ CELLSIZE = 2   ; never change
  .equ APPUSERSIZE = 2  ; size of user area

.equ NUMWORDLISTS = 8
.equ AM_BASE = 0 ; do not change

; cpu clock in hertz
.equ F_CPU = 14745600
; baud rate of terminal
.equ BAUD = 9600
.equ USART_B_VALUE = (1<<TXEN1) | (1<<RXEN1) ; | (1<<RXCIE1)
.equ USART_C_VALUE = (1<<UCSZ11) | ( 1<<UCSZ10)

.set heap = ramstart
.set rstackstart = RAMEND
.set stackstart  = RAMEND - 80
.set amforth_interpreter = NRWW_START_ADDR
.equ want_fun = 1

.include "amforth-low.asm"
