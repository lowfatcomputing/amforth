; Settings for the avr butterfly demo board

; cpu clock in hertz
.equ cpu_frequency = 8000000
; baud rate of terminal
.equ baud_rate = 9600

; always include processor settings first
.include "devices/atmega169.asm"

; all the rest of amforth...
.include "amforth.asm"
