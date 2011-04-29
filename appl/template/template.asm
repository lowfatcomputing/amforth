; This is a template for an amforth project.
;
; The order of the entries (esp the include order) must not be
; changed since it is very important that the settings are in the
; right order
;
; note: .set is like a variable, .equ is like a constant
;
; first is to include the macros from the amforth
; directory
.include "macros.asm"

; include the amforth device definition file. These
; files include the *def.inc from atmel internally.
.include "device.asm"

; amforth needs two essential parameters
; cpu clock in hertz, 1MHz is factory default
.equ F_CPU = 8000000

; terminal settings
.set WANT_ISR_RX = 1 ; interrupt driven receive
.set WANT_ISR_TX = 0 ; send slowly but with less code space

; initial baud rate of terminal
.equ BAUD = 9600
.set USART_B_VALUE = (1<<TXEN0) | (1<<RXEN0)

.if WANT_ISR_RX == 1
  .set USART_B_VALUE = (1<<TXEN0) | (1<<RXEN0)| (1<<RXCIE0)
.else
  .set USART_B_VALUE = (1<<TXEN0) | (1<<RXEN0)
.endif
; 8N1 is commonly used
.equ USART_C_VALUE = (3<<UCSZ00)
.include "drivers/usart_0.asm"

.equ TIBSIZE  = $64    ; ANS94 needs at least 80 characters per line
.equ APPUSERSIZE = 10  ; size of application specific user area in bytes

; addresses of various data segments
.set here = ramstart           ; initial HERE at compile time, grows upward
.set rstackstart = RAMEND      ; start address of return stack, grows downward
.set stackstart  = RAMEND - 80 ; start address of data stack, grows downward
.equ amforth_interpreter = max_dict_addr ; the same value as NRWW_START_ADDR
; change only if you know what to you do
.equ NUMWORDLISTS = 8 ; number of word lists in the searh order, at least 8

; include the whole source tree.
.include "amforth.asm"
