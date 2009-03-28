; Settings for the eval board with Atmega8 & 8 MHz
.include "macros.asm"
.include "devices/atmega32.asm"

  .equ HLDSIZE  = $10 ; 16 bit cellsize with binary representation
  .equ TIBSIZE  = $64 ; 80 characters is one line...
  .equ CELLSIZE = 2   ;
  .equ USERSIZE = 24  ; size of user area
  .equ NUMWORDLISTS = 8
  .set amforth_interpreter = max_dict_addr
; cpu clock in hertz
.equ F_CPU = 16000000
; baud rate of terminal
.equ BAUD = 9600

.set heap = ramstart
.set rstackstart = RAMEND
.set stackstart  = RAMEND - 80

.include "amforth.asm"
