; Partname:  ATmega8
; Built using part description XML file version 232
; generated automatically
.nolist
	.include "m8def.inc"
.list

.equ ramstart =  $60
.equ max_dict_addr = $C00 
  .equ BAUDRATE_LOW = UBRRL+$20
  .equ BAUDRATE_HIGH = UBRRH+$20
  .equ USART_C = UCSRC+$20
  .equ USART_B = UCSRB+$20
  .equ USART_A = UCSRA+$20
  .equ USART_B_VALUE = (1<<TXEN) | (1<<RXEN) | (1<<RXCIE)
  .equ USART_C_VALUE = (1<<URSEL) | ( 3<<UCSZ0)

  .equ SPMCSR = SPMCR
  .equ EEPE   = EEWE
  .equ EEMPE  = EEMWE
; size of program counter in bytes
.equ pclen = 2

.macro jmp_
	rjmp @0
.endmacro
.macro call_
	rcall @0
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
.equ intvecsize = 1 ; please verify; flash size: 8192 bytes
.equ INTVECTORS = 19
.org $001
	 rcall isr ; External Interrupt Request 0
.org $002
	 rcall isr ; External Interrupt Request 1
.org $003
	 rcall isr ; Timer/Counter2 Compare Match
.org $004
	 rcall isr ; Timer/Counter2 Overflow
.org $005
	 rcall isr ; Timer/Counter1 Capture Event
.org $006
	 rcall isr ; Timer/Counter1 Compare Match A
.org $007
	 rcall isr ; Timer/Counter1 Compare Match B
.org $008
	 rcall isr ; Timer/Counter1 Overflow
.org $009
	 rcall isr ; Timer/Counter0 Overflow
.org $00A
	 rcall isr ; Serial Transfer Complete
.org $00B
	 rcall isr ; USART, Rx Complete
.org $00C
	 rcall isr ; USART Data Register Empty
.org $00D
	 rcall isr ; USART, Tx Complete
.org $00E
	 rcall isr ; ADC Conversion Complete
.org $00F
	 rcall isr ; EEPROM Ready
.org $010
	 rcall isr ; Analog Comparator
.org $011
	 rcall isr ; 2-wire Serial Interface
.org $012
	 rcall isr ; Store Program Memory Ready
mcustring:
	.dw 07
	.db "ATmega8",0
.set codestart=pc
