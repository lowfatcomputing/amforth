;;;; avr forth
;;;;
;;;; GPL V2 see LICENSE.txt

.nolist
.include "devices/m32def.inc"
.list

.include "devices/atmega32.asm"
  ; cpu clock in hertz
  .equ cpu_frequency = 8000000
   ; baud rate of terminal
  .equ baud_rate = 9600

  .def zerol = r14
  .def zeroh = r15
  .def temp0 = r16
  .def temp1 = r17
  .def temp2 = r18
  .def temp3 = r19
  .def temp4 = r20
  .def temp5 = r21
  .def temp6 = r22
  .def temp7 = r23
  .def wh = r25
  .def wl = r24

  .set heap = ramstart

.org $0000
  jmp reset
.org URXCaddr
  jmp usart0_rx_isr
.org UDREaddr
  jmp usart0_udre_isr

; $0400 = 1K
; $0800 = 2K
.org flashend - $0800

; interpreter routines
; core dictionary with assembler primitives
; resides at the flash end to use the self programming
; feature of the mc.
;
; Forth   AVR
;  RP       SP
;  W        R24/25
;  IP       R26/27 (X)
;  SP       R28/29 (Y)
;           R30/31 (Z)

reset:
abort:
    clr zerol
    clr zeroh
    ; init return stack pointer
    ldi temp0,high(ramend)
    out SPH,temp0
    ldi temp0,low(ramend)
    out SPL,temp0
    rcall baud0

    ; init parameter stack pointer
    ldi yh,high(stackstart)
    ldi yl,low(stackstart)
    ; load Forth IP with starting word (quit)
    ldi xl, LOW(XT_QUIT)
    ldi xh, HIGH(XT_QUIT)
    movw wl,xl
    ; enable interrupts (needed for getting (terminal) input)
    sei
 
DO_COLON:
    push xl
    push xh          ; PUSH IP
    adiw wl, 1       ; set W to PFA
    movw xl, wl

DO_NEXT:
    movw zl,xl        ; READ IP
    lsl zl
    rol zh
    lpm wl, Z+
    lpm wh, Z      ; done read IP
    adiw xl, 1        ; INC IP

DO_EXECUTE:
    movw zl, wl
    lsl zl
    rol zh
    lpm temp0, Z+
    lpm temp1, Z
    movw zl, temp0
    ijmp

.include "usart.asm"
.include "primitives.asm"

.org $26

dictionary:
.include "core.asm"
; .include "devices/m32.voc"

.eseg
dp:  .dw VE_LATEST
.cseg
