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
.include "device.asm"

; the dictionary search treats lowercase and uppercase
; letters the same. Set to 0 if you do not want it
.set WANT_IGNORECASE = 1

; amforth needs two essential parameters
; cpu clock in hertz, 1MHz is factory default
.equ F_CPU = 16000000


.equ TIBSIZE  = $64    ; ANS94 needs at least 80 characters per line
.equ APPUSERSIZE = 10  ; size of application specific user area in bytes

; addresses of various data segments
.set rstackstart = RAMEND      ; start address of return stack, grows downward
.set stackstart  = RAMEND - 80 ; start address of data stack, grows downward
; change only if you know what to you do
.equ NUMWORDLISTS = 8 ; number of word lists in the searh order, at least 8

; settings for 1wire interface, if desired
.equ OW_PORT=PORTE
.EQU OW_BIT=4
.include "drivers/1wire.asm"

; initial baud rate of terminal
.equ BAUD = 38400
.include "drivers/usart_0.asm"

; include the whole source tree.
.include "amforth.asm"
