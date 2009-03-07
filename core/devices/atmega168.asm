; Partname:  ATmega168
; Built using part description XML file version 201
; generated automatically
.nolist
	.include "m168def.inc"
.list

.equ ramstart =  $100
.equ max_dict_addr = $1C00 
  .equ UDR = UDR0
  .equ FE = FE0
  .equ DOR = DOR0
  .equ PE = UPE0
  .equ UDRIE = UDRIE0

  .equ BAUDRATE_LOW = UBRR0L
  .equ BAUDRATE_HIGH = UBRR0H
  .equ USART_C = UCSR0C
  .equ USART_B = UCSR0B
  .equ USART_A = UCSR0A
  .equ USART_B_VALUE = (1<<TXEN0) | (1<<RXEN0) | (1<<RXCIE0)
  .equ USART_C_VALUE = (1<<UCSZ01) | ( 1<<UCSZ00)

  .equ SPMEN = SELFPRGEN

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
.equ intvecsize = 2 ; please verify; flash size: 16384 bytes
.equ INTVECTORS = 26
.org $002
	 rcall isr ; External Interrupt Request 0
.org $004
	 rcall isr ; External Interrupt Request 1
.org $006
	 rcall isr ; Pin Change Interrupt Request 0
.org $008
	 rcall isr ; Pin Change Interrupt Request 0
.org $00A
	 rcall isr ; Pin Change Interrupt Request 1
.org $00C
	 rcall isr ; Watchdog Time-out Interrupt
.org $00E
	 rcall isr ; Timer/Counter2 Compare Match A
.org $0010
	 rcall isr ; Timer/Counter2 Compare Match A
.org $0012
	 rcall isr ; Timer/Counter2 Overflow
.org $0014
	 rcall isr ; Timer/Counter1 Capture Event
.org $0016
	 rcall isr ; Timer/Counter1 Compare Match A
.org $0018
	 rcall isr ; Timer/Counter1 Compare Match B
.org $001A
	 rcall isr ; Timer/Counter1 Overflow
.org $001C
	 rcall isr ; TimerCounter0 Compare Match A
.org $001E
	 rcall isr ; TimerCounter0 Compare Match B
.org $020
	 rcall isr ; Timer/Couner0 Overflow
.org $022
	 rcall isr ; SPI Serial Transfer Complete
.org $024
	 rcall isr ; USART Rx Complete
.org $026
	 rcall isr ; USART, Data Register Empty
.org $028
	 rcall isr ; USART Tx Complete
.org $02A
	 rcall isr ; ADC Conversion Complete
.org $02C
	 rcall isr ; EEPROM Ready
.org $02E
	 rcall isr ; Analog Comparator
.org $030
	 rcall isr ; Two-wire Serial Interface
.org $032
	 rcall isr ; Store Program Memory Read
mcustring:
	.dw 09
	.db "ATmega168",0
.set codestart=pc
