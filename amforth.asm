;;;; avr forth
;;;;
;;;; GPL V2 (only)

  ; cpu clock in hertz
  .equ cpu_frequency = 16000000
   ; baud rate of terminal
  .equ baud_rate = 9600

.include "devices/atmega32.asm"

.include "macros.asm"

.org $0000
  rjmp reset

.org codestart
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
    ; keep free space for User Area
    .set heap = heap + USERSIZE * CELLSIZE

    ; load Forth IP with starting word (quit)
    ldi xl, low(PFA_QUIT)
    ldi xh, high(PFA_QUIT)
    ; the following is a turnkey-action, and a few more words for the dictionary
    rcall baud0

    ; enable interrupts (needed for getting (terminal) input)
    sei
    ; its a far jump...
    jmp DO_NEXT

; ISR routines
.include "timer.asm"
.include "usart.asm"

; lower part of the dictionary
.include "dict_low.asm"
; set label to latest used cell in cseg
VE_LATEST:

; high part of the dictionary (primitives and words for self programming)
.org nrww
.include "forth.asm"
.include "dict_high.asm"

.eseg
; flash addresses
dp:  .dw VE_LATEST
head:.dw VE_HEAD
; ram free memory (well, stack matters)
rheap:
    .dw heap
; eeprom free memory
    .dw eheap
; turnkey address
    .dw 0
; 1st free address in EEPROM, see above
eheap:
.cseg
