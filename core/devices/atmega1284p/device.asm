; Partname:  ATmega1284P
; Built using part description XML file version 1
; generated automatically, do not edit

.nolist
	.include "m1284Pdef.inc"
.list

.equ ramstart =  $100
.equ CELLSIZE = 2
.macro readflashcell
	clr temp7
	lsl zl
	rol zh
	rol temp7
	out_ RAMPZ, temp7
	elpm @0, Z+
	elpm @1, Z+
.endmacro
.macro writeflashcell
	clr temp7
	lsl zl
	rol zh
	rol temp7
	out_ RAMPZ, temp7
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
.equ intvecsize = 2 ; please verify; flash size: 131072 bytes
.equ pclen = 2 ; please verify
.overlap
.equ INTVECTORS = 35
.org $002
	 rcall isr ; External Interrupt Request 0
.org $004
	 rcall isr ; External Interrupt Request 1
.org $006
	 rcall isr ; External Interrupt Request 2
.org $008
	 rcall isr ; Pin Change Interrupt Request 0
.org $00A
	 rcall isr ; Pin Change Interrupt Request 1
.org $00C
	 rcall isr ; Pin Change Interrupt Request 2
.org $00E
	 rcall isr ; Pin Change Interrupt Request 3
.org $010
	 rcall isr ; Watchdog Time-out Interrupt
.org $012
	 rcall isr ; Timer/Counter2 Compare Match A
.org $014
	 rcall isr ; Timer/Counter2 Compare Match B
.org $016
	 rcall isr ; Timer/Counter2 Overflow
.org $018
	 rcall isr ; Timer/Counter1 Capture Event
.org $01A
	 rcall isr ; Timer/Counter1 Compare Match A
.org $01C
	 rcall isr ; Timer/Counter1 Compare Match B
.org $01E
	 rcall isr ; Timer/Counter1 Overflow
.org $020
	 rcall isr ; Timer/Counter0 Compare Match A
.org $022
	 rcall isr ; Timer/Counter0 Compare Match B
.org $024
	 rcall isr ; Timer/Counter0 Overflow
.org $026
	 rcall isr ; SPI Serial Transfer Complete
.org $028
	 rcall isr ; USART0, Rx Complete
.org $02A
	 rcall isr ; USART0 Data register Empty
.org $02C
	 rcall isr ; USART0, Tx Complete
.org $02E
	 rcall isr ; Analog Comparator
.org $030
	 rcall isr ; ADC Conversion Complete
.org $032
	 rcall isr ; EEPROM Ready
.org $034
	 rcall isr ; 2-wire Serial Interface
.org $036
	 rcall isr ; Store Program Memory Read
.org $038
	 rcall isr ; USART1 RX complete
.org $03A
	 rcall isr ; USART1 Data Register Empty
.org $03C
	 rcall isr ; USART1 TX complete
.org $03E
	 rcall isr ; Timer/Counter3 Capture Event
.org $040
	 rcall isr ; Timer/Counter3 Compare Match A
.org $042
	 rcall isr ; Timer/Counter3 Compare Match B
.org $044
	 rcall isr ; Timer/Counter3 Overflow
.nooverlap
mcu_info:
mcu_ramsize:
	.dw 16384
mcu_eepromsize:
	.dw 4096
mcu_maxdp:
	.dw 61440 ; minimum of 0xF000 (from XML) and 0xffff
mcu_numints:
	.dw 35
mcu_name:
	.dw 11
	.db "ATmega1284P",0
.set codestart=pc
