.nolist
.include "m8def.inc"
.list

  ; first address of RAM 
  .equ ramstart = $60
  .equ stackstart = RAMEND - 80
  .equ PADSIZE  = $10 ; 16 bit cellsize with binary representation
  .equ TIBSIZE  = $64 ; 80 characters is one line...
  .equ CELLSIZE = 2   ;
  .equ USERSIZE = 32  ; size of user area

  .equ PAGEMASK =  ~ ( PAGESIZE - 1 )

  .equ nrww = $0c00
  .equ codestart = $14
 
  .equ UBRR0L = UBRRL
  .equ UBRR0H = UBRRH 
  .equ UCSR0C = UCSRC
  .equ UCSR0B = UCSRB
  .equ UDR0   = UDR
  
  .equ TXEN0  = TXEN
  .equ RXEN0  = RXEN
  .equ RXCIE0 = RXCIE
  .equ UMSEL01 = URSEL
  .equ UCSZ00  = UCSZ0
  .equ UDRIE0  = UDRIE

.org	INT0addr ; External Interrupt0 Vector Address
    rjmp int0_isr 
.org	INT1addr ; External Interrupt1 Vector Address
    rjmp int1_isr 
.org	OC2addr  ; Output Compare2 Interrupt Vector Address
    reti
.org	OVF2addr ; Overflow2 Interrupt Vector Address
    reti	
.org	ICP1addr
    reti	; Input Capture1 Interrupt Vector Address
.org	OC1Aaddr
    reti	; Output Compare1A Interrupt Vector Address
.org	OC1Baddr
    reti	; Output Compare1B Interrupt Vector Address
.org	OVF1addr
    reti	; Overflow1 Interrupt Vector Address
.org	OVF0addr
    reti	; Overflow0 Interrupt Vector Address
.org	SPIaddr 
    reti	; SPI Interrupt Vector Address
.org	URXCaddr
    reti	; USART Receive Complete Interrupt Vector Address
.org	UDREaddr
    reti	; USART Data Register Empty Interrupt Vector Address
.org	UTXCaddr
    reti	; USART Transmit Complete Interrupt Vector Address
.org	ADCCaddr ; ADC Interrupt Vector Address
    rjmp adc_isr
.org	ERDYaddr
    reti	; EEPROM Interrupt Vector Address
.org	ACIaddr 
    reti	; Analog Comparator Interrupt Vector Address
.org    TWIaddr 
    reti   ; Irq. vector address for Two-Wire Interface
.org	SPMaddr 
    reti	; SPM complete Interrupt Vector Address
.org	SPMRaddr 
    reti	; SPM complete Interrupt Vector Address

