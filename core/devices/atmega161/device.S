; Partname:  ATmega161
; Built using part description XML file version 233
; generated automatically, do not edit

.nolist
	#include "m161def.inc"
.list

.equ ramstart =  0x60
.equ CELLSIZE = 2
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

; the following definitions are shortcuts for the respective forth source segments if set to 1
.set WANT_ANALOG_COMPARATOR, 0
.set WANT_CPU, 0
.set WANT_EEPROM, 0
.set WANT_EXTERNAL_INTERRUPT, 0
.set WANT_PORTA, 0
.set WANT_PORTB, 0
.set WANT_PORTC, 0
.set WANT_PORTD, 0
.set WANT_PORTE, 0
.set WANT_SPI, 0
.set WANT_TIMER_COUNTER_0, 0
.set WANT_TIMER_COUNTER_1, 0
.set WANT_TIMER_COUNTER_2, 0
.set WANT_USART0, 0
.set WANT_USART1, 0
.set WANT_WATCHDOG, 0


.ifndef SPMEN
 .equ SPMEN = SELFPRGEN
.endif

.ifndef SPMCSR
 .equ SPMCSR = SPMCR
.endif

.ifndef EEPE
 .equ EEPE = EEWE
.endif

.ifndef EEMPE
 .equ EEMPE = EEMWE
.endif
.equ intvecsize = 2 ; please verify; flash size: 16384 bytes
.equ pclen = 2 ; please verify
.overlap
.equ INTVECTORS = 21
.org 0x002
	 rcall isr ; External Interrupt 0
.org 0x004
	 rcall isr ; External Interrupt 1
.org 0x006
	 rcall isr ; External Interrupt 2
.org 0x008
	 rcall isr ; Timer/Counter2 Compare Match
.org 0x00A
	 rcall isr ; Timer/Counter2 Overflow
.org 0x00C
	 rcall isr ; Timer/Counter1 Capture Event
.org 0x00E
	 rcall isr ; Timer/Counter1 Compare Match A
.org 0x010
	 rcall isr ; Timer/Counter1 Compare Match B
.org 0x012
	 rcall isr ; Timer/Counter1 Overflow
.org 0x014
	 rcall isr ; Timer/Counter0 Compare Match
.org 0x016
	 rcall isr ; Timer/Counter0 Overflow
.org 0x018
	 rcall isr ; Serial Transfer Complete
.org 0x01A
	 rcall isr ; UART0, Rx Complete
.org 0x01C
	 rcall isr ; UART1, Rx Complete
.org 0x01E
	 rcall isr ; UART0 Data Register Empty
.org 0x020
	 rcall isr ; UART1 Data Register Empty
.org 0x022
	 rcall isr ; UART0, Tx Complete
.org 0x024
	 rcall isr ; UART1, Tx Complete
.org 0x026
	 rcall isr ; EEPROM Ready
.org 0x028
	 rcall isr ; Analog Comparator
.nooverlap
mcu_info:
mcu_ramsize:
	.word 1024
mcu_eepromsize:
	.word 512
mcu_maxdp:
	.word 0 ; minimum of 0 (from XML) and 0xffff
mcu_numints:
	.word 21
mcu_name:
	.word  9
	.string "ATmega161"
.set codestart=pc
