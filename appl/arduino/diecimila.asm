; This is a template for an Arduino Diecimila based amforth project.
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
.include "devices/atmega168/device.asm"

; amforth needs two essential parameters
; cpu clock in hertz, 1MHz is factory default
.equ F_CPU = 16000000

; initial baud rate of terminal
.equ BAUD = 9600
.equ USART_B_VALUE = (1<<TXEN0) | (1<<RXEN0)
.equ USART_C_VALUE = (3<<UCSZ00)


.equ HLDSIZE  = $10    ; 16 bit cellsize with binary representation
.equ TIBSIZE  = $64    ; ANS94 needs at least 80 characters per line
.equ APPUSERSIZE = 2   ; size of user area in bytes

; addresses of various data segments
.set heap = ramstart           ; start address of HEAP, grows upward
.set rstackstart = RAMEND      ; start address of return stack, grows downward
.set stackstart  = RAMEND - 80 ; start address of data stack, grows downward
;.set dict_appl=1			   ; include applic dictionary in rww section (non boot)
.equ amforth_interpreter = max_dict_addr ; the same value as NRWW_START_ADDR
; change only if you know what to you do
.equ CELLSIZE = 2   ; currently the only allowed value is 2 (bytes per cell)
.equ NUMWORDLISTS = 8 ; number of word lists in the searh order, at least 8

.equ want_fun = 1 ; in case of an error out print an additional line with an caret indicating the error position

; include the whole source tree.
.include "amforth.asm"
