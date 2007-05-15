.nolist
.include "m8def.inc"
.list

  ; first address of RAM
  .equ ramstart = $60
  .equ stackstart = RAMEND - 80
  .equ HLDSIZE  = $10 ; 16 bit cellsize with binary representation
  .equ TIBSIZE  = $64 ; 80 characters is one line...
  .equ CELLSIZE = 2   ;
  .equ USERSIZE = 32  ; size of user area

  .equ PAGEMASK =  ~ ( PAGESIZE - 1 )

  .equ INTVECTORS = 19 ; INT_VECTORS_SIZE
  .equ intvecsize = 1

  .equ nrww = $0c00
  .equ codestart = $14+7/2 ; mcustring

.macro jmp_
    rjmp @0
.endmacro

.macro call_
    rcall @0
.endmacro

; some hacks
.if defined(UDRE0)
    ;
.else
  .equ BAUDRATE0_LOW = UBRRL+$20
  .equ BAUDRATE0_HIGH = UBRRH+$20
  .equ USART0_C = UCSRC+$20
  .equ USART0_B = UCSRB+$20

.if defined(UDR0)
.else
  .equ UDR0 = UDR
.endif

  .equ TXEN0  = TXEN
  .equ RXEN0  = RXEN
  .equ RXCIE0 = RXCIE
  .equ UMSEL01 = URSEL
  .equ UCSZ00  = UCSZ0
  .equ UDRIE0  = UDRIE
.endif

.org	INT0addr ; External Interrupt0 Vector Address
    rcall isr
.org	INT1addr ; External Interrupt1 Vector Address
    rcall isr
.org	OC2addr  ; Output Compare2 Interrupt Vector Address
    rcall isr
.org	OVF2addr ; Overflow2 Interrupt Vector Address
    rcall isr
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
.org	ADCCaddr ; ADC Interrupt Vector Address
    rcall isr
.org	ERDYaddr
    rcall isr	; EEPROM Interrupt Vector Address
.org	ACIaddr
    rcall isr	; Analog Comparator Interrupt Vector Address
.org    TWIaddr
    rcall isr   ; Irq. vector address for Two-Wire Interface

mcustring:
  .db 7,"ATmega8"
