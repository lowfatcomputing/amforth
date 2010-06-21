; Partname:  ATmega644
; Built using part description XML file version 69
; generated automatically
.nolist
	.include "m644def.inc"
.list

.equ ramstart =  $100
.equ max_dict_addr = $7000 
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
.equ intvecsize = 2 ; please verify; flash size: 65536 bytes
.equ pclen = 2 ; please verify
.equ INTVECTORS = 28
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
mcustring:
	.dw 09
	.db "ATmega644",0
.set codestart=pc
