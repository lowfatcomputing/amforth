; Partname:  ATmega8535
; Built using part description XML file version 233
; generated automatically, do not edit

.nolist
	.include "m8535def.inc"
.list

.equ ramstart =  $60
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
.set WANT_CPU = 0
.set WANT_EEPROM = 0
.set WANT_EXTERNAL_INTERRUPT = 0
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
.equ intvecsize = 1 ; please verify; flash size: 8192 bytes
.equ pclen = 2 ; please verify
.overlap
.equ INTVECTORS = 21
.org $001
	 rcall isr ; External Interrupt 0
.org $002
	 rcall isr ; External Interrupt 1
.org $003
	 rcall isr ; Timer/Counter2 Compare Match
.org $004
	 rcall isr ; Timer/Counter2 Overflow
.org $005
	 rcall isr ; Timer/Counter1 Capture Event
.org $006
	 rcall isr ; Timer/Counter1 Compare Match A
.org $007
	 rcall isr ; Timer/Counter1 Compare Match B
.org $008
	 rcall isr ; Timer/Counter1 Overflow
.org $009
	 rcall isr ; Timer/Counter0 Overflow
.org $00A
	 rcall isr ; SPI Serial Transfer Complete
.org $00B
	 rcall isr ; USART, RX Complete
.org $00C
	 rcall isr ; USART Data Register Empty
.org $00D
	 rcall isr ; USART, TX Complete
.org $00E
	 rcall isr ; ADC Conversion Complete
.org $00F
	 rcall isr ; EEPROM Ready
.org $010
	 rcall isr ; Analog Comparator
.org $011
	 rcall isr ; Two-wire Serial Interface
.org $012
	 rcall isr ; External Interrupt Request 2
.org $013
	 rcall isr ; TimerCounter0 Compare Match
.org $014
	 rcall isr ; Store Program Memory Read
.nooverlap
mcu_info:
mcu_ramsize:
	.dw 512
mcu_eepromsize:
	.dw 512
mcu_maxdp:
	.dw 3072 ; minimum of 0xC00 (from XML) and 0xffff
mcu_numints:
	.dw 21
mcu_name:
	.dw 10
	.db "ATmega8535"
.set codestart=pc
