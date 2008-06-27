; Settings for the eval board with Atmega8 & 8 MHz
.include "macros.asm"

  .equ HLDSIZE  = $10 ; 16 bit cellsize with binary representation
  .equ TIBSIZE  = $64 ; 80 characters is one line...
  .equ CELLSIZE = 2   ;
  .equ USERSIZE = 24  ; size of user area

.equ dict_appl=1

; cpu clock in hertz
.equ cpu_frequency = 8000000
; baud rate of terminal
.equ baud_rate = 9600

; size of return stack in bytes
.equ rstacksize = 80

.include "devices/atmega16.asm"

  .set heap = ramstart
  .set VE_HEAD = $0000

.include "amforth.asm"
