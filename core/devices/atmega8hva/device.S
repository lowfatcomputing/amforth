; Partname:  ATmega8HVA
; Built using part description XML file version 1
; generated automatically, do not edit

.nolist
	#include "m8HVAdef.inc"
.list

.equ ramstart =  0x100
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
.set WANT_AD_CONVERTER, 0
.set WANT_BANDGAP, 0
.set WANT_BATTERY_PROTECTION, 0
.set WANT_BOOT_LOAD, 0
.set WANT_COULOMB_COUNTER, 0
.set WANT_CPU, 0
.set WANT_EEPROM, 0
.set WANT_EXTERNAL_INTERRUPT, 0
.set WANT_FET, 0
.set WANT_PORTA, 0
.set WANT_PORTB, 0
.set WANT_PORTC, 0
.set WANT_SPI, 0
.set WANT_TIMER_COUNTER_0, 0
.set WANT_TIMER_COUNTER_1, 0
.set WANT_VOLTAGE_REGULATOR, 0
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
.equ intvecsize = 1 ; please verify; flash size: 8192 bytes
.equ pclen = 2 ; please verify
.overlap
.equ INTVECTORS = 21
.org 0x0001
	 rcall isr ; Battery Protection Interrupt
.org 0x0002
	 rcall isr ; Voltage regulator monitor interrupt
.org 0x0003
	 rcall isr ; External Interrupt Request 0
.org 0x0004
	 rcall isr ; External Interrupt Request 1
.org 0x0005
	 rcall isr ; External Interrupt Request 2
.org 0x0006
	 rcall isr ; Watchdog Timeout Interrupt
.org 0x0007
	 rcall isr ; Timer 1 Input capture
.org 0x0008
	 rcall isr ; Timer 1 Compare Match A
.org 0x0009
	 rcall isr ; Timer 1 Compare Match B
.org 0x000A
	 rcall isr ; Timer 1 overflow
.org 0x000B
	 rcall isr ; Timer 0 Input Capture
.org 0x000C
	 rcall isr ; Timer 0 Comapre Match A
.org 0x000D
	 rcall isr ; Timer 0 Compare Match B
.org 0x000E
	 rcall isr ; Timer 0 Overflow
.org 0x000F
	 rcall isr ; SPI Serial transfer complete
.org 0x0010
	 rcall isr ; Voltage ADC Conversion Complete
.org 0x0011
	 rcall isr ; Coulomb Counter ADC Conversion Complete
.org 0x0012
	 rcall isr ; Coloumb Counter ADC Regular Current
.org 0x0013
	 rcall isr ; Coloumb Counter ADC Accumulator
.org 0x014
	 rcall isr ; EEPROM Ready
.nooverlap
mcu_info:
mcu_ramsize:
	.word 512
mcu_eepromsize:
	.word 256
mcu_maxdp:
	.word 0 ; minimum of 0 (from XML) and 0xffff
mcu_numints:
	.word 21
mcu_name:
	.word 10
	.ascii "ATmega8HVA"
.set codestart=pc
