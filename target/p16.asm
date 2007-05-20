; Settings for the eval board with Atmega32 & 16 MHz
.include "macros.asm"

.equ dict_optional = 2
; cpu clock in hertz
.equ cpu_frequency = 16000000
; baud rate of terminal
.equ baud_rate = 9600

.include "devices/atmega32.asm"

  .set heap = ramstart
  .set VE_HEAD = $0000

.org codestart

device_init:
    ; just a dummy
    ret
    
.include "amforth.asm"

