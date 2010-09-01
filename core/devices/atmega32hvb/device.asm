; Partname:  ATmega32HVB
; Built using part description XML file version 1
; generated automatically, do not edit

.nolist
	.include "m32HVBdef.inc"
.list

.equ ramstart =  $100
.equ max_dict_addr = $3800 
.equ CELLSIZE = 2
.macro jmp_
	jmp @0
.endmacro
.macro call_
	call @0
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

; the following definitions are shortcuts for the respective forth source segments if set to 1
.set WANT_AD_CONVERTER = 0
.set WANT_BANDGAP = 0
.set WANT_BATTERY_PROTECTION = 0
.set WANT_BOOT_LOAD = 0
.set WANT_CELL_BALANCING = 0
.set WANT_CHARGER_DETECT = 0
.set WANT_COULOMB_COUNTER = 0
.set WANT_CPU = 0
.set WANT_EEPROM = 0
.set WANT_EXTERNAL_INTERRUPT = 0
.set WANT_FET = 0
.set WANT_PORTA = 0
.set WANT_PORTB = 0
.set WANT_PORTC = 0
.set WANT_SPI = 0
.set WANT_TIMER_COUNTER_0 = 0
.set WANT_TIMER_COUNTER_1 = 0
.set WANT_TWI = 0
.set WANT_VOLTAGE_REGULATOR = 0
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
.equ INTVECTORS = 29
.org $0002
	 rcall isr ; Battery Protection Interrupt
.org $0004
	 rcall isr ; Voltage regulator monitor interrupt
.org $0006
	 rcall isr ; External Interrupt Request 0
.org $0008
	 rcall isr ; External Interrupt Request 1
.org $000A
	 rcall isr ; External Interrupt Request 2
.org $000C
	 rcall isr ; External Interrupt Request 3
.org $000E
	 rcall isr ; Pin Change Interrupt 0
.org $0010
	 rcall isr ; Pin Change Interrupt 1
.org $0012
	 rcall isr ; Watchdog Timeout Interrupt
.org $0014
	 rcall isr ; Bandgap Buffer Short Circuit Detected
.org $0016
	 rcall isr ; Charger Detect
.org $0018
	 rcall isr ; Timer 1 Input capture
.org $001A
	 rcall isr ; Timer 1 Compare Match A
.org $001C
	 rcall isr ; Timer 1 Compare Match B
.org $001E
	 rcall isr ; Timer 1 overflow
.org $0020
	 rcall isr ; Timer 0 Input Capture
.org $0022
	 rcall isr ; Timer 0 Comapre Match A
.org $0024
	 rcall isr ; Timer 0 Compare Match B
.org $0026
	 rcall isr ; Timer 0 Overflow
.org $0028
	 rcall isr ; Two-Wire Bus Connect/Disconnect
.org $002A
	 rcall isr ; Two-Wire Serial Interface
.org $002C
	 rcall isr ; SPI Serial transfer complete
.org $002E
	 rcall isr ; Voltage ADC Conversion Complete
.org $0030
	 rcall isr ; Coulomb Counter ADC Conversion Complete
.org $0032
	 rcall isr ; Coloumb Counter ADC Regular Current
.org $0034
	 rcall isr ; Coloumb Counter ADC Accumulator
.org $036
	 rcall isr ; EEPROM Ready
.org $038
	 rcall isr ; SPM Ready
.nooverlap
mcustring:
	.dw 11
	.db "ATmega32HVB",0
.set codestart=pc
