.nolist
.include "m16def.inc"
.list

  ; first address of RAM 
  .equ ramstart = $60
  .equ stackstart = RAMEND - 80
  .equ HLDSIZE  = $10 ; 16 bit cellsize with binary representation
  .equ TIBSIZE  = $64 ; 80 characters is one line...
  .equ CELLSIZE = 2   ;
  .equ USERSIZE = 24  ; size of user area

  .equ INTVECTORS = 21 ; INT_VECTORS_SIZE / 2
  .equ intvecsize = 2

  .equ PAGEMASK =  ~ ( PAGESIZE - 1 )
  .equ nrww = $1c00
  .equ codestart = $2a +  8/2 ; mcustring
  
.macro jmp_
    jmp @0
.endmacro

.macro call_
    call @0
.endmacro

; the baud rate registers are io addresses!
  .equ BAUDRATE0_LOW = UBRRL+$20
  .equ BAUDRATE0_HIGH = UBRRH+$20
  .equ USART0_C = UCSRC+$20
  .equ USART0_B = UCSRB+$20

; some hacks
.if defined(UDRE0)
    ;
.else

.if defined(RWWSRE)
.else
  .equ RWWSRE = ASRE
.endif

.if defined(UDR0)
.else
  .equ UDR0 = UDR
.endif
  ; bit numbers
  .equ TXEN0  = TXEN
  .equ RXEN0  = RXEN
  .equ RXCIE0 = RXCIE
  .equ UMSEL01 = URSEL
  .equ UCSZ00  = UCSZ0
  .equ UDRIE0  = UDRIE
.endif



.org	INT0addr
    rcall isr	; External Interrupt0 Vector Address
.org	INT1addr
    rcall isr	; External Interrupt1 Vector Address
.org	OC2addr
    rcall isr	; Output Compare2 Interrupt Vector Address
.org	OVF2addr 
    rcall isr	; Overflow2 Interrupt Vector Address
.org	ICP1addr 
    rcall isr	; Input Capture1 Interrupt Vector Address
.org	OC1Aaddr 
    rcall isr	; Output Compare1A Interrupt Vector Address
.org	OC1Baddr 
    rcall isr	; Output Compare1B Interrupt Vector Address
.org	OVF1addr 
    rcall isr	; Overflow1 Interrupt Vector Address
.org	OVF0addr 
    rcall isr	; Overflow0 Interrupt Vector Address
.org	SPIaddr 
    rcall isr	; SPI Interrupt Vector Address
;.org	URXCaddr 
;    rcall isr	; USART Receive Complete Interrupt Vector Address
;.org	UDREaddr 
;    rcall isr	; USART Data Register Empty Interrupt Vector Address
.org	UTXCaddr 
    rcall isr	; USART Transmit Complete Interrupt Vector Address
.org	ADCCaddr 
    rcall isr ; ADC Interrupt Vector Address
.org	ERDYaddr 
    rcall isr	; EEPROM Interrupt Vector Address
.org	ACIaddr 
    rcall isr	; Analog Comparator Interrupt Vector Address
.org    TWIaddr 
    rcall isr   	; Irq. vector address for Two-Wire Interface
.org	SPMRaddr 
    rcall isr	; SPM complete Interrupt Vector Address

mcustring:
  .db 8,"ATmega16",0

