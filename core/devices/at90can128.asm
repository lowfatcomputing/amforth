; Partname:  AT90CAN128
; Built using part description XML file version 170
; generated automatically
.nolist
	.include "can128def.inc"
.list

.equ ramstart =  $0100
.equ max_dict_addr = $F000 
  .equ BAUDRATE_LOW = UBRR0L
  .equ BAUDRATE_HIGH = UBRR0H
  .equ USART_C = UCSR0C
  .equ USART_B = UCSR0B
  .equ USART_A = UCSR0A
  .equ USART_DATA = UDR0
  .equ URXCaddr = URXC0addr
  .equ UDREaddr = UDRE0addr
  .equ FE = FE0
  .equ DOR = DOR0
  .equ PE = UPE0
  .equ UDRIE = UDRIE0
  .equ UDRE  = UDRE0
  .equ USART_RXEN_bm = 1 << RXC0
; size of program counter in bytes
.equ pclen = 2

  .equ EEPE   = EEWE
  .equ EEMPE  = EEMWE

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
.equ INTVECTORS = 37
.org $0002
	 rcall isr ; External Interrupt Request 0
.org $0004
	 rcall isr ; External Interrupt Request 1
.org $0006
	 rcall isr ; External Interrupt Request 2
.org $0008
	 rcall isr ; External Interrupt Request 3
.org $000A
	 rcall isr ; External Interrupt Request 4
.org $000C
	 rcall isr ; External Interrupt Request 5
.org $000E
	 rcall isr ; External Interrupt Request 6
.org $0010
	 rcall isr ; External Interrupt Request 7
.org $0012
	 rcall isr ; Timer/Counter2 Compare Match
.org $0014
	 rcall isr ; Timer/Counter2 Overflow
.org $0016
	 rcall isr ; Timer/Counter1 Capture Event
.org $0018
	 rcall isr ; Timer/Counter1 Compare Match A
.org $001A
	 rcall isr ; Timer/Counter Compare Match B
.org $001C
	 rcall isr ; Timer/Counter1 Compare Match C
.org $001E
	 rcall isr ; Timer/Counter1 Overflow
.org $0020
	 rcall isr ; Timer/Counter0 Compare Match
.org $0022
	 rcall isr ; Timer/Counter0 Overflow
.org $0024
	 rcall isr ; CAN Transfer Complete or Error
.org $0026
	 rcall isr ; CAN Timer Overrun
.org $0028
	 rcall isr ; SPI Serial Transfer Complete
.org $002A
	 rcall isr ; USART0, Rx Complete
.org $002C
	 rcall isr ; USART0 Data Register Empty
.org $002E
	 rcall isr ; USART0, Tx Complete
.org $0030
	 rcall isr ; Analog Comparator
.org $0032
	 rcall isr ; ADC Conversion Complete
.org $0034
	 rcall isr ; EEPROM Ready
.org $0036
	 rcall isr ; Timer/Counter3 Capture Event
.org $0038
	 rcall isr ; Timer/Counter3 Compare Match A
.org $003A
	 rcall isr ; Timer/Counter3 Compare Match B
.org $003C
	 rcall isr ; Timer/Counter3 Compare Match C
.org $003E
	 rcall isr ; Timer/Counter3 Overflow
.org $0040
	 rcall isr ; USART1, Rx Complete
.org $0042
	 rcall isr ; USART1, Data Register Empty
.org $0044
	 rcall isr ; USART1, Tx Complete
.org $0046
	 rcall isr ; 2-wire Serial Interface
.org $0048
	 rcall isr ; Store Program Memory Read
mcustring:
	.dw 10
	.db "AT90CAN128"
.set codestart=pc
