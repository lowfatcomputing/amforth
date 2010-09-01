; Partname:  ATmega406
; Built using part description XML file version 200
; generated automatically, do not edit

.nolist
	.include "m406def.inc"
.list

.equ ramstart =  $100
.equ max_dict_addr = $4800 
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
.set WANT_COULOMB_COUNTER = 0
.set WANT_CPU = 0
.set WANT_EEPROM = 0
.set WANT_EXTERNAL_INTERRUPT = 0
.set WANT_FET = 0
.set WANT_PORTA = 0
.set WANT_PORTB = 0
.set WANT_PORTC = 0
.set WANT_PORTD = 0
.set WANT_TIMER_COUNTER_0 = 0
.set WANT_TIMER_COUNTER_1 = 0
.set WANT_TWI = 0
.set WANT_WAKEUP_TIMER = 0
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
.equ intvecsize = 2 ; please verify; flash size: 40960 bytes
.equ pclen = 2 ; please verify
.overlap
.equ INTVECTORS = 23
.org $002
	 rcall isr ; Battery Protection Interrupt
.org $004
	 rcall isr ; External Interrupt Request 0
.org $006
	 rcall isr ; External Interrupt Request 1
.org $008
	 rcall isr ; External Interrupt Request 2
.org $00A
	 rcall isr ; External Interrupt Request 3
.org $00C
	 rcall isr ; Pin Change Interrupt 0
.org $00E
	 rcall isr ; Pin Change Interrupt 1
.org $010
	 rcall isr ; Watchdog Timeout Interrupt
.org $0012
	 rcall isr ; Wakeup timer overflow
.org $014
	 rcall isr ; Timer/Counter 1 Compare Match
.org $016
	 rcall isr ; Timer/Counter 1 Overflow
.org $018
	 rcall isr ; Timer/Counter0 Compare A Match
.org $01A
	 rcall isr ; Timer/Counter0 Compare B Match
.org $001C
	 rcall isr ; Timer/Counter0 Overflow
.org $001E
	 rcall isr ; Two-Wire Bus Connect/Disconnect
.org $0020
	 rcall isr ; Two-Wire Serial Interface
.org $0022
	 rcall isr ; Voltage ADC Conversion Complete
.org $0024
	 rcall isr ; Coulomb Counter ADC Conversion Complete
.org $0026
	 rcall isr ; Coloumb Counter ADC Regular Current
.org $0028
	 rcall isr ; Coloumb Counter ADC Accumulator
.org $02A
	 rcall isr ; EEPROM Ready
.org $02C
	 rcall isr ; Store Program Memory Ready
.nooverlap
mcustring:
	.dw  9
	.db "ATmega406",0
.set codestart=pc
