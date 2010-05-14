; Partname:  ATmega2561
; Built using part description XML file version 167
; generated automatically
.nolist
	.include "m2561def.inc"
.list

.equ ramstart =  $200
.equ max_dict_addr = $1F000 

  .equ BAUDRATE_LOW = UBRR1L
  .equ BAUDRATE_HIGH = UBRR1H
  .equ USART_C = UCSR1C
  .equ USART_B = UCSR1B
  .equ USART_A = UCSR1A
  .equ USART_DATA = UDR1

  .equ USART_RXEN_bm = 1 << RXC1

  .equ URXCaddr = URXC1addr
  .equ UDREaddr = UDRE1addr
  .equ UDR  = UDR1
  .equ UDRE = UDRE1
  .equ FE = FE1
  .equ DOR = DOR1
  .equ PE = UPE1
  .equ UDRIE = UDRIE1

  .equ pclen = 3

.macro jmp_
	jmp @0
.endmacro
.macro call_
	call @0
.endmacro
.macro readflashcell
	ldi temp7, AM_BASE
	lsl zl
	rol zh
	rol temp7
	out_ RAMPZ, temp7
	elpm @0, Z+
	elpm @1, Z+
.endmacro
.macro writeflashcell
	ldi temp7, AM_BASE
	lsl zl
	rol zh
	rol temp7
	out_ RAMPZ, temp7
.endmacro
.equ intvecsize = 2 ; please verify; flash size: 262144 bytes
.equ INTVECTORS = 57

.org 0x72
mcustring:
	.dw 10
	.db "ATmega2561"
.set codestart=pc
