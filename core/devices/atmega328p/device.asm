; Partname:  ATmega328P
; Built using part description XML file version 1
; generated automatically, do not edit

.nolist
	.include "m328Pdef.inc"
.list

.equ ramstart =  $100
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
.set WANT_PORTB = 0
.set WANT_PORTC = 0
.set WANT_PORTD = 0
.set WANT_SPI = 0
.set WANT_TIMER_COUNTER_0 = 0
.set WANT_TIMER_COUNTER_1 = 0
.set WANT_TIMER_COUNTER_2 = 0
.set WANT_TWI = 0
.set WANT_USART0 = 0
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
.equ intvecsize = 2 ; please verify; flash size: 32768 bytes
.equ pclen = 2 ; please verify
.overlap
.equ INTVECTORS = 26
.org $002
	 rcall isr ; External Interrupt Request 0
.org $004
	 rcall isr ; External Interrupt Request 1
.org $006
	 rcall isr ; Pin Change Interrupt Request 0
.org $008
	 rcall isr ; Pin Change Interrupt Request 0
.org $00A
	 rcall isr ; Pin Change Interrupt Request 1
.org $00C
	 rcall isr ; Watchdog Time-out Interrupt
.org $00E
	 rcall isr ; Timer/Counter2 Compare Match A
.org $0010
	 rcall isr ; Timer/Counter2 Compare Match A
.org $0012
	 rcall isr ; Timer/Counter2 Overflow
.org $0014
	 rcall isr ; Timer/Counter1 Capture Event
.org $0016
	 rcall isr ; Timer/Counter1 Compare Match A
.org $0018
	 rcall isr ; Timer/Counter1 Compare Match B
.org $001A
	 rcall isr ; Timer/Counter1 Overflow
.org $001C
	 rcall isr ; TimerCounter0 Compare Match A
.org $001E
	 rcall isr ; TimerCounter0 Compare Match B
.org $020
	 rcall isr ; Timer/Couner0 Overflow
.org $022
	 rcall isr ; SPI Serial Transfer Complete
.org $024
	 rcall isr ; USART Rx Complete
.org $026
	 rcall isr ; USART, Data Register Empty
.org $028
	 rcall isr ; USART Tx Complete
.org $02A
	 rcall isr ; ADC Conversion Complete
.org $02C
	 rcall isr ; EEPROM Ready
.org $02E
	 rcall isr ; Analog Comparator
.org $030
	 rcall isr ; Two-wire Serial Interface
.org $032
	 rcall isr ; Store Program Memory Read
.nooverlap
mcu_info:
mcu_ramsize:
	.dw 2048
mcu_eepromsize:
	.dw 1024
mcu_maxdp:
	.dw 14336 ; minimum of 0x3800 (from XML) and 0xffff
mcu_numints:
	.dw 26
mcu_name:
	.dw 10
	.db "ATmega328P"
.set codestart=pc
