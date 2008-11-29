; Settings for the avr butterfly demo board
.include "macros.asm"
.include "devices/atmega169.asm"

  .equ HLDSIZE  = $10 ; 16 bit cellsize with binary representation
  .equ TIBSIZE  = $64 ; 80 characters is one line...
  .equ CELLSIZE = 2   ; never change
  .equ USERSIZE = 24  ; size of user area

; cpu clock in hertz
.equ F_CPU = 8000000
; baud rate of terminal
.equ BAUD = 9600

.set dict_appl=1
.set istore_nrww=1


.set heap = ramstart
.set rstackstart = RAMEND
.set stackstart  = RAMEND - 80

.include "amforth.asm"
