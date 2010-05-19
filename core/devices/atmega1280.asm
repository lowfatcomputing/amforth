; Partname:  ATmega1280
; Hacked from datasheet, at90can128 and atmega640 definitions
; Hacked by hand, Andy Kirby (andy@kirbyand.co.uk)
; 
.nolist
	.include "m1280def.inc"
.list

.equ ramstart =  $200
.equ max_dict_addr = $F000

  .equ BAUDRATE_LOW = UBRR3L
  .equ BAUDRATE_HIGH = UBRR3H
  .equ USART_C = UCSR3C
  .equ USART_B = UCSR3B
  .equ USART_A = UCSR3A
  .equ USART_DATA = UDR3
  .equ USART_RXEN_bm = 1 << RXC3
  .equ URXCaddr = URXC3addr
  .equ UDREaddr = UDRE3addr
  .equ FE = FE3
  .equ DOR = DOR3
  .equ PE = UPE3
  .equ UDRIE = UDRIE3
  .equ UDRE  = UDRE3
; size of program counter in bytes
.equ pclen = 2

.macro jmp_
	jmp @0
.endmacro
.macro call_
	call @0
.endmacro
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

.equ intvecsize = 2 ; please verify; flash size: 131072 bytes
.equ INTVECTORS = 57
;.org $000
;	 rcall isr ; Reset, NMI etc
.org $002
	 rcall isr ; External Interrupt Request 0
.org $004
	 rcall isr ; External Interrupt Request 1
.org $006
	 rcall isr ; External Interrupt Request 2
.org $008
	 rcall isr ; External Interrupt Request 3
.org $00A
	 rcall isr ; External Interrupt Request 4
.org $00C
	 rcall isr ; External Interrupt Request 5
.org $00E
	 rcall isr ; External Interrupt Request 6
.org $010
	 rcall isr ; External Interrupt Request 7
.org $012
	 rcall isr ; Pin Change Interrupt Request 0
.org $014
	 rcall isr ; Pin Change Interrupt Request 1
.org $016
	 rcall isr ; Pin Change Interrupt Request 2
.org $018
	 rcall isr ; Watchdog Time-out Interrupt
.org $01A
	 rcall isr ; Timer/Counter2 Compare Match A
.org $01C
	 rcall isr ; Timer/Counter2 Compare Match B
.org $01E
	 rcall isr ; Timer/Counter2 Overflow
.org $020
	 rcall isr ; Timer/Counter1 Capture Event
.org $022
	 rcall isr ; Timer/Counter1 Compare Match A
.org $024
	 rcall isr ; Timer/Counter1 Compare Match B
.org $026
	 rcall isr ; Timer/Counter1 Compare Match C
.org $028
	 rcall isr ; Timer/Counter1 Overflow
.org $02A
	 rcall isr ; Timer/Counter0 Compare Match A
.org $02C
	 rcall isr ; Timer/Counter0 Compare Match B
.org $02E
	 rcall isr ; Timer/Counter0 Overflow
.org $030
	 rcall isr ; SPI Serial Transfer Complete
.org $032
	 rcall isr ; USART0, Rx Complete
.org $034
	 rcall isr ; USART0 Data register Empty
.org $036
	 rcall isr ; USART0, Tx Complete
.org $038
	 rcall isr ; Analog Comparator
.org $03A
	 rcall isr ; ADC Conversion Complete
.org $03C
	 rcall isr ; EEPROM Ready
.org $03E
	 rcall isr ; Timer/Counter3 Capture Event
.org $040
	 rcall isr ; Timer/Counter3 Compare Match A
.org $042
	 rcall isr ; Timer/Counter3 Compare Match B
.org $044
	 rcall isr ; Timer/Counter3 Compare Match C
.org $046
	 rcall isr ; Timer/Counter3 Overflow
.org $048
	 rcall isr ; USART1, Rx Complete
.org $04A
	 rcall isr ; USART1 Data register Empty
.org $04C
	 rcall isr ; USART1, Tx Complete
.org $04E
	 rcall isr ; 2-wire Serial Interface
.org $050
	 rcall isr ; Store Program Memory Read
.org $052
	 rcall isr ; Timer/Counter4 Capture Event
.org $054
	 rcall isr ; Timer/Counter4 Compare Match A
.org $056
	 rcall isr ; Timer/Counter4 Compare Match B
.org $058
	 rcall isr ; Timer/Counter4 Compare Match C
.org $05A
	 rcall isr ; Timer/Counter4 Overflow
.org $05C
	 rcall isr ; Timer/Counter5 Capture Event
.org $05E
	 rcall isr ; Timer/Counter5 Compare Match A
.org $060
	 rcall isr ; Timer/Counter5 Compare Match B
.org $062
	 rcall isr ; Timer/Counter5 Compare Match C
.org $064
	 rcall isr ; Timer/Counter5 Overflow
.org $066
	 rcall isr ; USART2, Rx Complete
.org $068
	 rcall isr ; USART2 Data register Empty
.org $06A
	 rcall isr ; USART2, Tx Complete
.org $06C
	 rcall isr ; USART3, Rx Complete
.org $06E
	 rcall isr ; USART3 Data register Empty
.org $070
	 rcall isr ; USART3, Tx Complete

mcustring:
	.dw 9
	.db "ATmega1280",0
.set codestart=pc
