.nolist
.include "m32def.inc"
.list
  .equ ramstart = $60 ; first address of RAM 
  .equ stackstart = RAMEND - $80
  .equ PADSIZE  = $10 ; 16 bit cellsize with binary representation
  .equ TIBSIZE  = $64 ; 80 characters is one line...
  .equ CELLSIZE = 2   ;
  .equ USERSIZE = 16  ; size of user area (at least 16 bytes)
  .equ PAGEMASK =  ~ ( PAGESIZE - 1 )

  .equ nrww = $3800
  .equ codestart = $2a
  
; some hacks
  .equ RWWSRE = ASRE

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

; default interrupt handlers
.org	INT0addr ; External Interrupt0 Vector Address
    rjmp int0_isr 
.org	INT1addr ; External Interrupt1 Vector Address
    rjmp int1_isr 
.org	INT2addr ; External Interrupt2 Vector Address
    reti	
.org	OC2addr  ; Output Compare2 Interrupt Vector Address
    reti	
.org	OVF2addr ; Overflow2 Interrupt Vector Address
    reti	
.org	ICP1addr ; Input Capture1 Interrupt Vector Address
    reti	
.org	OC1Aaddr ; Output Compare1A Interrupt Vector Address
    reti	
.org	OC1Baddr ; Output Compare1B Interrupt Vector Address
    reti	
.org	OVF1addr ; Overflow1 Interrupt Vector Address
    reti	
.org	OC0addr  ; Output Compare0 Interrupt Vector Address
    reti	
.org	OVF0addr ; Overflow0 Interrupt Vector Address
    reti	
.org	SPIaddr  ; SPI Interrupt Vector Address
    reti	
.org	URXCaddr ; USART Receive Complete Interrupt Vector Address
    reti	
.org	UDREaddr ; USART Data Register Empty Interrupt Vector Address
    reti	
.org	UTXCaddr ; USART Transmit Complete Interrupt Vector Address
    reti	
.org	ADCCaddr ; ADC Interrupt Vector Address
    reti	
.org	ERDYaddr ; EEPROM Interrupt Vector Address
    reti	
.org	ACIaddr  ; Analog Comparator Interrupt Vector Address
    reti	
.org    TWSIaddr ; Irq. vector address for Two-Wire Interface
    reti   
.org	SPMRaddr ; Store Program Memory Ready Interrupt Vector Address
    reti	

; map avr interrupts to amforth interrupts
int0_isr:
    push yl
    ldi yl, 0
    rjmp intx_isr

int1_isr:
    push yl
    ldi yl, 1
    rjmp intx_isr

