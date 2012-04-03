; Partname:  ATmega64
; Built using part description XML file version 237
; generated automatically, do not edit

.nolist
	.include "m64def.inc"
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
.set WANT_BOOT_LOAD = 0
.set WANT_CPU = 0
.set WANT_EEPROM = 0
.set WANT_EXTERNAL_INTERRUPT = 0
.set WANT_JTAG = 0
.set WANT_MISC = 0
.set WANT_PORTA = 0
.set WANT_PORTB = 0
.set WANT_PORTC = 0
.set WANT_PORTD = 0
.set WANT_PORTE = 0
.set WANT_PORTF = 0
.set WANT_PORTG = 0
.set WANT_SPI = 0
.set WANT_TIMER_COUNTER_0 = 0
.set WANT_TIMER_COUNTER_1 = 0
.set WANT_TIMER_COUNTER_2 = 0
.set WANT_TIMER_COUNTER_3 = 0
.set WANT_TWI = 0
.set WANT_USART0 = 0
.set WANT_USART1 = 0
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
.equ intvecsize = 2 ; please verify; flash size: 65536 bytes
.equ pclen = 2 ; please verify
.overlap
.equ INTVECTORS = 35
.org $0002
	 rcall isr ; External Interrupt Request 0
.org $0004
	 rcall isr ; External Interrupt Request 1
.org $0006
	 rcall isr ; External Interrupt Request 2
.org $0008
	 rcall isr ; External Interrupt Request 3
.org $000A
	 rcall isr ; External Interrupt Request 4
.org $000C
	 rcall isr ; External Interrupt Request 5
.org $000E
	 rcall isr ; External Interrupt Request 6
.org $0010
	 rcall isr ; External Interrupt Request 7
.org $0012
	 rcall isr ; Timer/Counter2 Compare Match
.org $0014
	 rcall isr ; Timer/Counter2 Overflow
.org $0016
	 rcall isr ; Timer/Counter1 Capture Event
.org $0018
	 rcall isr ; Timer/Counter1 Compare Match A
.org $001A
	 rcall isr ; Timer/Counter Compare Match B
.org $001C
	 rcall isr ; Timer/Counter1 Overflow
.org $001E
	 rcall isr ; Timer/Counter0 Compare Match
.org $0020
	 rcall isr ; Timer/Counter0 Overflow
.org $0022
	 rcall isr ; SPI Serial Transfer Complete
.org $0024
	 rcall isr ; USART0, Rx Complete
.org $0026
	 rcall isr ; USART0 Data Register Empty
.org $0028
	 rcall isr ; USART0, Tx Complete
.org $002A
	 rcall isr ; ADC Conversion Complete
.org $002C
	 rcall isr ; EEPROM Ready
.org $002E
	 rcall isr ; Analog Comparator
.org $0030
	 rcall isr ; Timer/Counter1 Compare Match C
.org $0032
	 rcall isr ; Timer/Counter3 Capture Event
.org $0034
	 rcall isr ; Timer/Counter3 Compare Match A
.org $0036
	 rcall isr ; Timer/Counter3 Compare Match B
.org $0038
	 rcall isr ; Timer/Counter3 Compare Match C
.org $003A
	 rcall isr ; Timer/Counter3 Overflow
.org $003C
	 rcall isr ; USART1, Rx Complete
.org $003E
	 rcall isr ; USART1, Data Register Empty
.org $0040
	 rcall isr ; USART1, Tx Complete
.org $0042
	 rcall isr ; 2-wire Serial Interface
.org $0044
	 rcall isr ; Store Program Memory Read
.nooverlap
mcu_info:
mcu_ramsize:
	.dw 4096
mcu_eepromsize:
	.dw 2048
mcu_maxdp:
	.dw 28672 ; minimum of 0x7000 (from XML) and 0xffff
mcu_name:
	.dw  8
	.db "ATmega64"
.set codestart=pc
