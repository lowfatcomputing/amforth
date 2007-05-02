; Settings for the eval board with Atmega8 & 8 MHz

.equ dict_optional=2

; cpu clock in hertz
.equ cpu_frequency = 8000000
; baud rate of terminal
.equ baud_rate = 9600

.include "devices/atmega644.asm"

  .set heap = ramstart
  .set VE_HEAD = $0000

.org codestart
device_init:
    ; just a dummy
    ret

.include "amforth.asm"
