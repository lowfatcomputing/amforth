;;;; avr forth
;;;;
;;;; GPL V2 (only)

.set pc_ = pc
.include "macros.asm"

.org $0000
  rjmp reset

.org pc_
; main entry point
reset:
    clr zerol
    clr zeroh
    ; init first user data area
    ldi zl, low(heap)
    ldi zh, high(heap)
    movw upl, zl
    ; init return stack pointer
    ldi temp0,low(ramend)
    out SPL,temp0
    std Z+2, temp0
    ldi temp1,high(ramend)
    out SPH,temp1
    std Z+3, temp1

    ; init parameter stack pointer
    ldi yl,low(stackstart)
    std Z+6, yl
    ldi yh,high(stackstart)
    std Z+7, yh

    ; allocate space for User Area
    .set heap = heap + USERSIZE

    ; load Forth IP with starting word
    ldi xl, low(PFA_COLD)
    ldi xh, high(PFA_COLD)
    ; the following should be turnkey-action, but adds a few more words to the the dictionary
    rcall device_init
    ; enable interrupts to receive terminal input
    sei
    ; its a far jump...
    jmp DO_NEXT

; ISR routines
.include "words/intx.asm"
.include "words/usart.asm"

; lower part of the dictionary
.include "dict_low.asm"
.if dict_optional==1
 .include "dict_optional.asm"
.endif

.set lowflashlast = pc

; high part of the dictionary (primitives and words for self programming)
.org nrww
.include "forth.asm"
.include "dict_high.asm"

.if dict_optional==2
 .include "dict_optional.asm"
.endif
.set flashlast = pc

.eseg
    .dw lowflashlast ; DP
    .dw VE_HEAD      ; HEAD
    .dw heap         ; HEAP
    .dw edp          ; EDP
    .dw XT_VER       ; 'TURNKEY
    .dw baud_rate    ; BAUDRATE
; 1st free address in EEPROM, see above
edp:
.cseg
