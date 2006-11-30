;;;; avr forth
;;;;
;;;; GPL V2 (only)


.include "devices/atmega32.asm"
  ; cpu clock in hertz
  .equ cpu_frequency = 8000000
   ; baud rate of terminal
  .equ baud_rate = 9600

  .def zerol = r2
  .def zeroh = r3
  .def upl = r4
  .def uph = r5

  .def temp0 = r16
  .def temp1 = r17
  .def temp2 = r18
  .def temp3 = r19
  .def temp4 = r20
  .def temp5 = r21
  .def temp6 = r22
  .def temp7 = r23
  
  .def wl = r24
  .def wh = r25


  .set heap = ramstart
  .set VE_HEAD = $0000

.org $0000
  rjmp reset
.org URXCaddr
  rjmp usart0_rx_isr
.org UDREaddr
  rjmp usart0_udre_isr

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
    ldi temp1,high(ramend)
    out SPH,temp1
    std Z+3, temp1
    ldi temp0,low(ramend)
    out SPL,temp0
    std Z+2, temp0

    ; init parameter stack pointer
    ldi yh,high(stackstart)
    std Z+5, yh
    ldi yl,low(stackstart)
    std Z+4, yl
    ; load Forth IP with starting word (quit)
    ldi xl, low(XT_QUIT)
    ldi xh, high(XT_QUIT)
    movw wl,xl
    .set heap = heap + UPSIZE * CELLSIZE
    
    rcall baud0

    ; enable interrupts (needed for getting (terminal) input)
    sei
    ; its a far jump...
    jmp DO_COLON

; ISR routines
.include "timer.asm"
.include "usart.asm"
.include "intx.asm"

; lower part of the dictionary (no assembly)
dictionary:
.include "core.asm"
; set label to latest used cell in cseg
VE_LATEST:

; high part of the dictionary (primitives and words for self programming)
.org nrww
 
DO_COLON: ; 30 CPU cycles to ijmp
    push xl
    push xh          ; PUSH IP
    adiw wl, 1       ; set W to PFA
    movw xl, wl

DO_NEXT: ; 23 CPU cycles to ijmp
    movw zl,xl        ; READ IP
    lsl zl
    rol zh
    lpm wl, Z+
    lpm wh, Z      ; done read IP
    adiw xl, 1        ; INC IP
DO_EXECUTE: ; 12 cpu cycles to ijmp
    movw zl, wl
    lsl zl
    rol zh
    lpm temp0, Z+
    lpm temp1, Z
    movw zl, temp0
    ijmp

; assembler core and flash write words
.include "primitives.asm"

.eseg
; flash addresses
dp:  .dw VE_LATEST
head:.dw VE_HEAD
; ram addresses
rheap:
    .dw heap
; eeprom addresses
    .dw eheap
; turnkey address
    .dw -1
eheap:
.cseg
