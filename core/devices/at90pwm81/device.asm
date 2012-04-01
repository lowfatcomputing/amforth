; Partname:  AT90PWM81
; Built using part description XML file version 1
; generated automatically, do not edit

.nolist
	.include "pwm81def.inc"
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
.set WANT_DA_CONVERTER = 0
.set WANT_EEPROM = 0
.set WANT_EXTERNAL_INTERRUPT = 0
.set WANT_PORTB = 0
.set WANT_PORTD = 0
.set WANT_PORTE = 0
.set WANT_PSC0 = 0
.set WANT_PSC2 = 0
.set WANT_SPI = 0
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
.equ intvecsize = 1 ; please verify; flash size: 8192 bytes
.equ pclen = 2 ; please verify
.overlap
.equ INTVECTORS = 20
.org $0001
	 rcall isr ; PSC2 Capture Event
.org $0002
	 rcall isr ; PSC2 End Cycle
.org $0003
	 rcall isr ; PSC2 End Of Enhanced Cycle
.org $0004
	 rcall isr ; PSC0 Capture Event
.org $0005
	 rcall isr ; PSC0 End Cycle
.org $0006
	 rcall isr ; PSC0 End Of Enhanced Cycle
.org $0007
	 rcall isr ; Analog Comparator 1
.org $0008
	 rcall isr ; Analog Comparator 2
.org $0009
	 rcall isr ; Analog Comparator 3
.org $000A
	 rcall isr ; External Interrupt Request 0
.org $000B
	 rcall isr ; Timer/Counter1 Capture Event
.org $000C
	 rcall isr ; Timer/Counter1 Overflow
.org $000D
	 rcall isr ; ADC Conversion Complete
.org $000E
	 rcall isr ; External Interrupt Request 1
.org $000F
	 rcall isr ; SPI Serial Transfer Complet
.org $0010
	 rcall isr ; External Interrupt Request 2
.org $0011
	 rcall isr ; Watchdog Timeout Interrupt
.org $0012
	 rcall isr ; EEPROM Ready
.org $0013
	 rcall isr ; Store Program Memory Read
.nooverlap
mcu_info:
mcu_ramsize:
	.dw 256
mcu_eepromsize:
	.dw 512
mcu_maxdp:
.	.dw 3072 ; minimum of 0xC00 (from XML) and 0xffff
mcu_name:
	.dw  9
	.db "AT90PWM81",0
.set codestart=pc
