.nolist
.include "m32def.inc"
.list

  .equ ramstart = $60 ; first address of RAM

  .equ INTVECTORS = 21 ; INT_VECTORS_SIZE / 2
  .equ intvecsize = 2
  .equ amforth_interpreter = $3800

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

  .equ BAUDRATE_LOW = UBRRL+$20
  .equ BAUDRATE_HIGH = UBRRH+$20
  .equ USART_C = UCSRC+$20
  .equ USART_B = UCSRB+$20
  .equ USART_A = UCSRA+$20  
  
  .equ USART_B_VALUE = (1<<TXEN) | (1<<RXEN) | (1<<RXCIE)
  .equ USART_C_VALUE = (1<<URSEL)|(3<<UCSZ0)

  .equ SPMCSR = SPMCR
  .equ EEPE   = EEWE
  .equ EEMPE  = EEMWE
  .equ RWWSRE = ASRE
  .equ RWWSB  = ASB

; default interrupt handlers
.org	INT0addr ; External Interrupt0 Vector Address
    rcall isr
.org	INT1addr ; External Interrupt1 Vector Address
    rcall isr
.org	INT2addr ; External Interrupt2 Vector Address
    rcall isr
.org	OC2addr  ; Output Compare2 Interrupt Vector Address
    rcall isr
.org	OVF2addr ; Overflow2 Interrupt Vector Address
    rcall isr
.org	ICP1addr ; Input Capture1 Interrupt Vector Address
    rcall isr
.org	OC1Aaddr ; Output Compare1A Interrupt Vector Address
    rcall isr
.org	OC1Baddr ; Output Compare1B Interrupt Vector Address
    rcall isr
.org	OVF1addr ; Overflow1 Interrupt Vector Address
    rcall isr
.org	OC0addr  ; Output Compare0 Interrupt Vector Address
    rcall isr
.org	OVF0addr ; Overflow0 Interrupt Vector Address
    rcall isr
.org	SPIaddr  ; SPI Interrupt Vector Address
    rcall isr
;.org	URXCaddr ; USART Receive Complete Interrupt Vector Address
;    rcall isr
;.org	UDREaddr ; USART Data Register Empty Interrupt Vector Address
;    rcall isr
.org	UTXCaddr ; USART Transmit Complete Interrupt Vector Address
    rcall isr
.org	ADCCaddr ; ADC Interrupt Vector Address
    rcall isr
.org	ERDYaddr ; EEPROM Interrupt Vector Address
    rcall isr
.org	ACIaddr  ; Analog Comparator Interrupt Vector Address
    rcall isr
.org    TWSIaddr ; Irq. vector address for Two-Wire Interface
    rcall isr
.org	SPMRaddr ; Store Program Memory Ready Interrupt Vector Address
    rcall isr

mcustring:
  .dw $0008
  .db "ATmega32"
.set codestart = pc
