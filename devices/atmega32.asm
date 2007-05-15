.nolist
.include "m32def.inc"
.list

  .equ ramstart = $60 ; first address of RAM
  .equ stackstart = RAMEND - 80
  .equ HLDSIZE  = $10 ; 16 bit cellsize with binary representation
  .equ TIBSIZE  = $64 ; 80 characters is one line...
  .equ CELLSIZE = 2   ;
  .equ USERSIZE = 24  ; size of user area
  .equ PAGEMASK =  ~ ( PAGESIZE - 1 )

  .equ INTVECTORS = 21 ; INT_VECTORS_SIZE / 2
  .equ intvecsize = 2
  .equ nrww = $3800
  .equ codestart = $2a + 8/2 ; mcustring

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
  .db 8,"ATmega32",0
