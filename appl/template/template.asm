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

; the dictionary search treats lowercase and uppercase
; letters the same. Set to 0 if you do not want it
.set WANT_IGNORECASE = 1

; amforth needs two essential parameters
; cpu clock in hertz, 1MHz is factory default
.equ F_CPU = 8000000

; terminal settings
; check http://amforth.sourceforge.net/recipes/usart-settings.html
; for further information
.set WANT_ISR_RX = 1 ; interrupt driven receive
.set WANT_ISR_TX = 0 ; send slowly but with less code space

; 9600 @ 8N1 is commonly used.
.equ BAUD = 9600
.equ USART_C_VALUE = bm_ASYNC | bm_NO_PARITY | bm_1STOPBIT | bm_8BIT

; dont touch the next 5 lines
.if WANT_ISR_RX == 1
  .set USART_B_VALUE = bm_ENABLE_TX | bm_ENABLE_RX | bm_ENABLE_INT_RX
.else
  .set USART_B_VALUE = bm_ENABLE_TX | bm_ENABLE_RX 
.endif

; define which usart to use.
.include "drivers/usart_0.asm"

.equ TIBSIZE  = $64    ; ANS94 needs at least 80 characters per line
.equ APPUSERSIZE = 10  ; size of application specific user area in bytes

; addresses of various data segments
.set rstackstart = RAMEND      ; start address of return stack, grows downward
.set stackstart  = RAMEND - 80 ; start address of data stack, grows downward
.equ amforth_interpreter = max_dict_addr ; the same value as NRWW_START_ADDR
; change only if you know what to you do
.equ NUMWORDLISTS = 8 ; number of word lists in the searh order, at least 8

; include the whole source tree.
.include "amforth.asm"

