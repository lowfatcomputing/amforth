; This is a template for an amforth project.
;
; The order of the entries (esp the include order) must not be
; changed since it is very important that the settings are in the
; right order
;
; first is to include the macros from the amforth
; directory
.include "macros.asm"

; include the amforth device definition file. These
; files include the *def.inc from atmel internally.
.include "devices/atmega168.asm"

; amforth needs two essential parameters
; cpu clock in hertz, 1MHz is factory default
.equ F_CPU = 8000000

; initial baud rate of terminal
.equ BAUD = 9600

.equ HLDSIZE  = $10 ; 16 bit cellsize with binary representation
.equ TIBSIZE  = $64 ; ANS94 needs at least 80 characters per line
.equ USERSIZE = 24  ; size of user area in bytes, at least 24
.equ CELLSIZE = 2   ; must be 2, currently. Do not change

; addresses of various data segments
.set heap = ramstart           ; start address of HEAP, grows upward
.set rstackstart = RAMEND      ; start address of return stack, grows downward
.set stackstart  = RAMEND - 80 ; start address of data stack, grows downward

; include the whole source tree.
.include "amforth.asm"
