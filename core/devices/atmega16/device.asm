; Partname:  ATmega16
; Built using part description XML file version 247
; generated automatically, do not edit

.nolist
	.include "m16def.inc"
.list

.equ ramstart =  $60
.equ max_dict_addr = $1C00 
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
.set WANT_AD_CONVERTER = 0
.set WANT_ANALOG_COMPARATOR = 0
.set WANT_BOOT_LOAD = 0
.set WANT_CPU = 0
.set WANT_EEPROM = 0
.set WANT_EXTERNAL_INTERRUPT = 0
.set WANT_JTAG = 0
.set WANT_PORTA = 0
.set WANT_PORTB = 0
.set WANT_PORTC = 0
.set WANT_PORTD = 0
.set WANT_SPI = 0
.set WANT_TIMER_COUNTER_0 = 0
.set WANT_TIMER_COUNTER_1 = 0
.set WANT_TIMER_COUNTER_2 = 0
.set WANT_TWI = 0
.set WANT_USART = 0
.set WANT_WATCHDOG = 0


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
.org $002
	 rcall isr ; External Interrupt Request 0
.org $004
	 rcall isr ; External Interrupt Request 1
.org $006
	 rcall isr ; Timer/Counter2 Compare Match
.org $008
	 rcall isr ; Timer/Counter2 Overflow
.org $00A
	 rcall isr ; Timer/Counter1 Capture Event
.org $00C
	 rcall isr ; Timer/Counter1 Compare Match A
.org $00E
	 rcall isr ; Timer/Counter1 Compare Match B
.org $010
	 rcall isr ; Timer/Counter1 Overflow
.org $012
	 rcall isr ; Timer/Counter0 Overflow
.org $014
	 rcall isr ; Serial Transfer Complete
.org $016
	 rcall isr ; USART, Rx Complete
.org $018
	 rcall isr ; USART Data Register Empty
.org $01A
	 rcall isr ; USART, Tx Complete
.org $01C
	 rcall isr ; ADC Conversion Complete
.org $01E
	 rcall isr ; EEPROM Ready
.org $020
	 rcall isr ; Analog Comparator
.org $022
	 rcall isr ; 2-wire Serial Interface
.org $024
	 rcall isr ; External Interrupt Request 2
.org $026
	 rcall isr ; Timer/Counter0 Compare Match
.org $028
	 rcall isr ; Store Program Memory Ready
.nooverlap
mcustring:
	.dw  8
	.db "ATmega16"
.set codestart=pc
