; Partname:  ATmega32
; Built using part description XML file version 229
; generated automatically
.nolist
	.include "m32def.inc"
.list

.equ ramstart =  $60
.equ max_dict_addr = $3800 


  .equ BAUDRATE_LOW = UBRRL+$20
  .equ BAUDRATE_HIGH = UBRRH+$20
  .equ USART_C = UCSRC+$20
  .equ USART_B = UCSRB+$20
  .equ USART_A = UCSRA+$20
  .equ USART_DATA = UDR+$20

  .equ USART_B_VALUE = (1<<TXEN) | (1<<RXEN) | (1<<RXCIE)
  .equ USART_C_VALUE = (1<<URSEL)|(3<<UCSZ0)

  .equ SPMCSR = SPMCR
  .equ EEPE   = EEWE
  .equ EEMPE  = EEMWE

;  .equ RWWSRE = ASRE
;  .equ RWWSB  = ASB

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
.equ intvecsize = 2 ; please verify; flash size: 32768 bytes
.equ INTVECTORS = 21
.org $002
	 rcall isr ; External Interrupt Request 0
.org $004
	 rcall isr ; External Interrupt Request 1
.org $006
	 rcall isr ; External Interrupt Request 2
.org $008
	 rcall isr ; Timer/Counter2 Compare Match
.org $00A
	 rcall isr ; Timer/Counter2 Overflow
.org $00C
	 rcall isr ; Timer/Counter1 Capture Event
.org $00E
	 rcall isr ; Timer/Counter1 Compare Match A
.org $010
	 rcall isr ; Timer/Counter1 Compare Match B
.org $012
	 rcall isr ; Timer/Counter1 Overflow
.org $014
	 rcall isr ; Timer/Counter0 Compare Match
.org $016
	 rcall isr ; Timer/Counter0 Overflow
.org $018
	 rcall isr ; Serial Transfer Complete
;.org $01A
;	 rcall isr ; USART, Rx Complete
;.org $01C
;	 rcall isr ; USART Data Register Empty
.org $01E
	 rcall isr ; USART, Tx Complete
.org $020
	 rcall isr ; ADC Conversion Complete
.org $022
	 rcall isr ; EEPROM Ready
.org $024
	 rcall isr ; Analog Comparator
.org $026
	 rcall isr ; 2-wire Serial Interface
.org $28
	 rcall isr ; Store Program Memory Ready
mcustring:
	.dw 8
	.db "ATmega32"
.set codestart=pc
