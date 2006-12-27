.nolist
.include "m16def.inc"
.list

  ; first address of RAM 
  .equ ramstart = $60
  .equ stackstart = RAMEND - $80
  .equ PADSIZE  = $10 ; 16 bit cellsize with binary representation
  .equ TIBSIZE  = $64 ; 80 characters is one line...
  .equ CELLSIZE = 2   ;
  .equ USERSIZE = 16  ; size of user area (at least 16 bytes)

  .equ PAGEMASK =  ~ ( PAGESIZE - 1 )
  .equ nrww = $1c00
  .equ codestart = $2a
  
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


.org	INT0addr
    rjmp int0_isr	; External Interrupt0 Vector Address
.org	INT1addr
    rjmp int1_isr	; External Interrupt1 Vector Address
.org	OC2addr
    rjmp oc2_isr	; Output Compare2 Interrupt Vector Address
.org	OVF2addr 
    reti	; Overflow2 Interrupt Vector Address
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
.org	ADCCaddr 
    rjmp adc_isr ; ADC Interrupt Vector Address
.org	ERDYaddr 
    reti	; EEPROM Interrupt Vector Address
.org	ACIaddr 
    reti	; Analog Comparator Interrupt Vector Address
.org    TWIaddr 
    reti   	; Irq. vector address for Two-Wire Interface
.org	SPMRaddr 
    reti	; SPM complete Interrupt Vector Address

; map avr interrupts to amforth interrupts
int0_isr:
    push yl
    ldi yl, 0
    rjmp intx_isr

int1_isr:
    push yl
    ldi yl, 1
    rjmp intx_isr

adc_isr:
    push yl
    ldi yl, 2
    rjmp intx_isr

oc2_isr:
    push yl
    ldi yl, 3
    rjmp intx_isr

