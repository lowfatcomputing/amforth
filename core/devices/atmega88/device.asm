; Partname:  ATmega88
; Built using part description XML file version 232
; generated automatically
.nolist
	.include "m88def.inc"
.list

.equ ramstart =  $100
.equ max_dict_addr = $C00 
  .equ BAUDRATE_LOW = UBRR0L+$20
  .equ BAUDRATE_HIGH = UBRR0H+$20
  .equ USART_C = UCSR0C+$20
  .equ USART_B = UCSR0B+$20
  .equ USART_A = UCSR0A+$20
  .equ USART_DATA = UDR0+$20
  .equ USART_RXRD_bm = 1 << RXC0
  .equ USART_TXRD_bm = 1 << UDRE0

  .equ SPMEN = SELFPRGEN
; size of program counter in bytes
.equ pclen = 2

.macro jmp_
	rjmp @0
.endmacro
.macro call_
	rcall @0
.endmacro
.macro readflashcell
	lsl zl
	rol zh
	lpm @0, Z+
	lpm @1, Z+
.endmacro
.macro writeflashcell
	lsl zl
	rol zh
.endmacro
.equ intvecsize = 1 ; please verify; flash size: 8192 bytes
.equ INTVECTORS = 26
.org $001
	 rcall isr ; External Interrupt Request 0
.org $002
	 rcall isr ; External Interrupt Request 1
.org $003
	 rcall isr ; Pin Change Interrupt Request 0
.org $004
	 rcall isr ; Pin Change Interrupt Request 0
.org $005
	 rcall isr ; Pin Change Interrupt Request 1
.org $006
	 rcall isr ; Watchdog Time-out Interrupt
.org $007
	 rcall isr ; Timer/Counter2 Compare Match A
.org $008
	 rcall isr ; Timer/Counter2 Compare Match A
.org $009
	 rcall isr ; Timer/Counter2 Overflow
.org $00A
	 rcall isr ; Timer/Counter1 Capture Event
.org $00B
	 rcall isr ; Timer/Counter1 Compare Match A
.org $00C
	 rcall isr ; Timer/Counter1 Compare Match B
.org $00D
	 rcall isr ; Timer/Counter1 Overflow
.org $00E
	 rcall isr ; TimerCounter0 Compare Match A
.org $00F
	 rcall isr ; TimerCounter0 Compare Match B
.org $010
	 rcall isr ; Timer/Couner0 Overflow
.org $011
	 rcall isr ; SPI Serial Transfer Complete
;.org $012
;	 rcall isr ; USART Rx Complete
;.org $013
;	 rcall isr ; USART, Data Register Empty
.org $014
	 rcall isr ; USART Tx Complete
.org $015
	 rcall isr ; ADC Conversion Complete
.org $016
	 rcall isr ; EEPROM Ready
.org $017
	 rcall isr ; Analog Comparator
.org $018
	 rcall isr ; Two-wire Serial Interface
.org $019
	 rcall isr ; Store Program Memory Read
mcustring:
	.dw 8
	.db "ATmega88"
.set codestart=pc
