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
.include "devices/atmega16.asm"

; amforth needs two essential parameters
; cpu clock in hertz, 1MHz is factory default
.equ F_CPU = 8000000

; initial baud rate of terminal
.equ BAUD = 9600

; initial values for the usart contral registers
; turn on both receiver and sender, if you
; want the receiver interrupt comment out the
; receiver interrupt flag too
.equ USART_B_VALUE = (1<<TXEN) | (1<<RXEN);  | (1<<RXCIE)
; 8N1 settings
.equ USART_C_VALUE = (1<<URSEL)|(3<<UCSZ0)

; some internals, never make them less
.equ HLDSIZE  = $10 ; 16 bit cellsize with binary representation
.equ TIBSIZE  = $64 ; ANS94 needs at least 80 characters per line
.equ APPUSERSIZE = 0  ; size of user area, application specific in bytes

; addresses of various data segments
.set heap = ramstart           ; start address of HEAP, grows upward
.set rstackstart = RAMEND      ; start address of return stack, grows downward
.set stackstart  = RAMEND - 80 ; start address of data stack, grows downward
.equ amforth_interpreter = max_dict_addr ; the same value as NRWW_START_ADDR
; change only if you know what to you do
.equ CELLSIZE = 2   ; currently the only allowed value is 2 (bytes per cell)
.equ NUMWORDLISTS = 8 ; number of word lists in the searh order, at least 8

; include the whole source tree.
.include "amforth.asm"
