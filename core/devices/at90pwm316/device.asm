; Partname:  AT90PWM316
; Built using part description XML file version 15
; generated automatically, do not edit

.nolist
	.include "pwm316def.inc"
.list

.equ ramstart =  $0100
.equ max_dict_addr = $1800 
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
.set WANT_ANALOG_COMPARATOR = 0
.set WANT_BOOT_LOAD = 0
.set WANT_CPU = 0
.set WANT_DA_CONVERTER = 0
.set WANT_EEPROM = 0
.set WANT_EUSART = 0
.set WANT_EXTERNAL_INTERRUPT = 0
.set WANT_PORTB = 0
.set WANT_PORTC = 0
.set WANT_PORTD = 0
.set WANT_PORTE = 0
.set WANT_PSC0 = 0
.set WANT_PSC1 = 0
.set WANT_PSC2 = 0
.set WANT_SPI = 0
.set WANT_TIMER_COUNTER_0 = 0
.set WANT_TIMER_COUNTER_1 = 0
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
.equ INTVECTORS = 32
.org $0002
	 rcall isr ; PSC2 Capture Event
.org $0004
	 rcall isr ; PSC2 End Cycle
.org $0006
	 rcall isr ; PSC1 Capture Event
.org $0008
	 rcall isr ; PSC1 End Cycle
.org $000A
	 rcall isr ; PSC0 Capture Event
.org $000C
	 rcall isr ; PSC0 End Cycle
.org $000E
	 rcall isr ; Analog Comparator 0
.org $0010
	 rcall isr ; Analog Comparator 1
.org $0012
	 rcall isr ; Analog Comparator 2
.org $0014
	 rcall isr ; External Interrupt Request 0
.org $0016
	 rcall isr ; Timer/Counter1 Capture Event
.org $0018
	 rcall isr ; Timer/Counter1 Compare Match A
.org $001A
	 rcall isr ; Timer/Counter Compare Match B
.org $001C
	 rcall isr ; 
.org $001E
	 rcall isr ; Timer/Counter1 Overflow
.org $0020
	 rcall isr ; Timer/Counter0 Compare Match A
.org $0022
	 rcall isr ; Timer/Counter0 Overflow
.org $0024
	 rcall isr ; ADC Conversion Complete
.org $0026
	 rcall isr ; External Interrupt Request 1
.org $0028
	 rcall isr ; SPI Serial Transfer Complete
.org $002A
	 rcall isr ; USART, Rx Complete
.org $002C
	 rcall isr ; USART Data Register Empty
.org $002E
	 rcall isr ; USART, Tx Complete
.org $0030
	 rcall isr ; External Interrupt Request 2
.org $0032
	 rcall isr ; Watchdog Timeout Interrupt
.org $0034
	 rcall isr ; EEPROM Ready
.org $0036
	 rcall isr ; Timer Counter 0 Compare Match B
.org $0038
	 rcall isr ; External Interrupt Request 3
.org $003A
	 rcall isr ; 
.org $003C
	 rcall isr ; 
.org $003E
	 rcall isr ; Store Program Memory Read
mcustring:
	.dw 10
	.db "AT90PWM316"
.set codestart=pc
