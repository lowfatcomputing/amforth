; Partname:  ATmega169
; Built using part description XML file version 298
; generated automatically
.nolist
	.include "m169def.inc"
.list

.equ ramstart =  $100
.equ max_dict_addr = $1C00 
  .equ BAUDRATE_LOW = UBRR0L
  .equ BAUDRATE_HIGH = UBRR0H
  .equ USART_C = UCSR0C
  .equ USART_B = UCSR0B
  .equ USART_A = UCSR0A

  .equ USART_B_VALUE = (1<<TXEN0) | (1<<RXEN0) | (1<<RXCIE0)
  .equ USART_C_VALUE = (1<<UCSZ00)|(1<<UCSZ01)

  .equ PE  = UPE0

  .equ EEPE   = EEWE
  .equ EEMPE  = EEMWE

; size of program counter in bytes
.equ pclen = 2

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
.equ INTVECTORS = 23
.org $002
	 rcall isr ; External Interrupt Request 0
.org $004
	 rcall isr ; Pin Change Interrupt Request 0
.org $006
	 rcall isr ; Pin Change Interrupt Request 1
.org $008
	 rcall isr ; Timer/Counter2 Compare Match
.org $00A
	 rcall isr ; Timer/Counter2 Overflow
.org $00C
	 rcall isr ; Timer/Counter1 Capture Event
.org $00E
	 rcall isr ; Timer/Counter1 Compare Match A
.org $010
	 rcall isr ; Timer/Counter Compare Match B
.org $012
	 rcall isr ; Timer/Counter1 Overflow
.org $014
	 rcall isr ; Timer/Counter0 Compare Match
.org $016
	 rcall isr ; Timer/Counter0 Overflow
.org $018
	 rcall isr ; SPI Serial Transfer Complete
;.org $01A
;	 rcall isr ; USART0, Rx Complete
;.org $01C
;	 rcall isr ; USART0 Data register Empty
.org $01E
	 rcall isr ; USART0, Tx Complete
.org $020
	 rcall isr ; USI Start Condition
.org $022
	 rcall isr ; USI Overflow
.org $024
	 rcall isr ; Analog Comparator
.org $026
	 rcall isr ; ADC Conversion Complete
.org $028
	 rcall isr ; EEPROM Ready
.org $02A
	 rcall isr ; Store Program Memory Read
.org $02C
	 rcall isr ; LCD Start of Frame
mcustring:
	.dw 9
	.db "ATmega169",0
.set codestart=pc
