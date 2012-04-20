; Partname:  ATmega16M1
; Built using part description XML file version 1
; generated automatically, do not edit

.nolist
	.include "m16M1def.inc"
.list

.equ ramstart =  $0100
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
.set WANT_CAN = 0
.set WANT_CPU = 0
.set WANT_DA_CONVERTER = 0
.set WANT_EEPROM = 0
.set WANT_EXTERNAL_INTERRUPT = 0
.set WANT_LINUART = 0
.set WANT_PORTB = 0
.set WANT_PORTC = 0
.set WANT_PORTD = 0
.set WANT_PORTE = 0
.set WANT_PSC = 0
.set WANT_SPI = 0
.set WANT_TIMER_COUNTER_0 = 0
.set WANT_TIMER_COUNTER_1 = 0
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
.equ INTVECTORS = 31
.org $0002
	 rcall isr ; Analog Comparator 0
.org $0004
	 rcall isr ; Analog Comparator 1
.org $0006
	 rcall isr ; Analog Comparator 2
.org $0008
	 rcall isr ; Analog Comparator 3
.org $000A
	 rcall isr ; PSC Fault
.org $000C
	 rcall isr ; PSC End of Cycle
.org $000E
	 rcall isr ; External Interrupt Request 0
.org $0010
	 rcall isr ; External Interrupt Request 1
.org $0012
	 rcall isr ; External Interrupt Request 2
.org $0014
	 rcall isr ; External Interrupt Request 3
.org $0016
	 rcall isr ; Timer/Counter1 Capture Event
.org $0018
	 rcall isr ; Timer/Counter1 Compare Match A
.org $001A
	 rcall isr ; Timer/Counter1 Compare Match B
.org $001C
	 rcall isr ; Timer1/Counter1 Overflow
.org $001E
	 rcall isr ; Timer/Counter0 Compare Match A
.org $0020
	 rcall isr ; Timer/Counter0 Compare Match B
.org $0022
	 rcall isr ; Timer/Counter0 Overflow
.org $0024
	 rcall isr ; CAN MOB, Burst, General Errors
.org $0026
	 rcall isr ; CAN Timer Overflow
.org $0028
	 rcall isr ; LIN Transfer Complete
.org $002A
	 rcall isr ; LIN Error
.org $002C
	 rcall isr ; Pin Change Interrupt Request 0
.org $002E
	 rcall isr ; Pin Change Interrupt Request 1
.org $0030
	 rcall isr ; Pin Change Interrupt Request 2
.org $0032
	 rcall isr ; Pin Change Interrupt Request 3
.org $0034
	 rcall isr ; SPI Serial Transfer Complete
.org $0036
	 rcall isr ; ADC Conversion Complete
.org $0038
	 rcall isr ; Watchdog Time-Out Interrupt
.org $003A
	 rcall isr ; EEPROM Ready
.org $003C
	 rcall isr ; Store Program Memory Read
.nooverlap
mcu_info:
mcu_ramsize:
	.dw 1024
mcu_eepromsize:
	.dw 512
mcu_maxdp:
	.dw 6144 ; minimum of 0x1800 (from XML) and 0xffff
mcu_numints:
	.dw 31
mcu_name:
	.dw 10
	.db "ATmega16M1"
.set codestart=pc
