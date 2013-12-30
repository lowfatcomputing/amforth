; Partname:  ATmega32U6
; Built using part description XML file version 1
; generated automatically, do not edit

.nolist
	#include "m32U6def.inc"
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
.set WANT_ANALOG_COMPARATOR, 0
.set WANT_BOOT_LOAD, 0
.set WANT_CPU, 0
.set WANT_EEPROM, 0
.set WANT_EXTERNAL_INTERRUPT, 0
.set WANT_JTAG, 0
.set WANT_PLL, 0
.set WANT_PORTA, 0
.set WANT_PORTB, 0
.set WANT_PORTC, 0
.set WANT_PORTD, 0
.set WANT_PORTE, 0
.set WANT_PORTF, 0
.set WANT_SPI, 0
.set WANT_TIMER_COUNTER_0, 0
.set WANT_TIMER_COUNTER_1, 0
.set WANT_TIMER_COUNTER_2, 0
.set WANT_TIMER_COUNTER_3, 0
.set WANT_TWI, 0
.set WANT_USART1, 0
.set WANT_USB_DEVICE, 0
.set WANT_USB_GLOBAL, 0
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
.equ intvecsize = 2 ; please verify; flash size: 32768 bytes
.equ pclen = 2 ; please verify
.overlap
.equ INTVECTORS = 38
.org 0x002
	 rcall isr ; External Interrupt Request 0
.org 0x004
	 rcall isr ; External Interrupt Request 1
.org 0x006
	 rcall isr ; External Interrupt Request 2
.org 0x008
	 rcall isr ; External Interrupt Request 3
.org 0x00A
	 rcall isr ; External Interrupt Request 4
.org 0x00C
	 rcall isr ; External Interrupt Request 5
.org 0x00E
	 rcall isr ; External Interrupt Request 6
.org 0x010
	 rcall isr ; External Interrupt Request 7
.org 0x012
	 rcall isr ; Pin Change Interrupt Request 0
.org 0x014
	 rcall isr ; USB General Interrupt Request
.org 0x016
	 rcall isr ; USB Endpoint/Pipe Interrupt Communication Request
.org 0x018
	 rcall isr ; Watchdog Time-out Interrupt
.org 0x01A
	 rcall isr ; Timer/Counter2 Compare Match A
.org 0x01C
	 rcall isr ; Timer/Counter2 Compare Match B
.org 0x01E
	 rcall isr ; Timer/Counter2 Overflow
.org 0x020
	 rcall isr ; Timer/Counter1 Capture Event
.org 0x022
	 rcall isr ; Timer/Counter1 Compare Match A
.org 0x024
	 rcall isr ; Timer/Counter1 Compare Match B
.org 0x026
	 rcall isr ; Timer/Counter1 Compare Match C
.org 0x028
	 rcall isr ; Timer/Counter1 Overflow
.org 0x02A
	 rcall isr ; Timer/Counter0 Compare Match A
.org 0x02C
	 rcall isr ; Timer/Counter0 Compare Match B
.org 0x02E
	 rcall isr ; Timer/Counter0 Overflow
.org 0x030
	 rcall isr ; SPI Serial Transfer Complete
.org 0x032
	 rcall isr ; USART1, Rx Complete
.org 0x034
	 rcall isr ; USART1 Data register Empty
.org 0x036
	 rcall isr ; USART1, Tx Complete
.org 0x038
	 rcall isr ; Analog Comparator
.org 0x03A
	 rcall isr ; ADC Conversion Complete
.org 0x03C
	 rcall isr ; EEPROM Ready
.org 0x03E
	 rcall isr ; Timer/Counter3 Capture Event
.org 0x040
	 rcall isr ; Timer/Counter3 Compare Match A
.org 0x042
	 rcall isr ; Timer/Counter3 Compare Match B
.org 0x044
	 rcall isr ; Timer/Counter3 Compare Match C
.org 0x046
	 rcall isr ; Timer/Counter3 Overflow
.org 0x048
	 rcall isr ; 2-wire Serial Interface        
.org 0x04A
	 rcall isr ; Store Program Memory Read
.nooverlap
mcu_info:
mcu_ramsize:
	.word 2560
mcu_eepromsize:
	.word 1024
mcu_maxdp:
	.word 14336 ; minimum of 0x3800 (from XML) and 0xffff
mcu_numints:
	.word 38
mcu_name:
	.word 10
	.ascii "ATmega32U6"
.set codestart=pc
