.nolist
.include "m644def.inc"
.list

  .equ ramstart = $100 ; first address of RAM
  .equ stackstart = RAMEND - 80
  .equ HLDSIZE  = $10 ; 16 bit cellsize with binary representation
  .equ TIBSIZE  = $64 ; 80 characters is one line...
  .equ CELLSIZE = 2   ;
  .equ USERSIZE = 24  ; size of user area
  .equ PAGEMASK =  ~ ( PAGESIZE - 1 )

  .equ INTVECTORS = 28
  .equ intvecsize = 2

  .equ nrww = $7000
  .equ codestart = $3e+9/2 ; mcustring

  .equ BAUDRATE0_LOW = UBRRL+$20
  .equ BAUDRATE0_HIGH = UBRRH+$20
  .equ USART0_C = UCSRC+$20
  .equ USART0_B = UCSRB+$20

  ; needs atmel avrasm32.exe
  .equ URXCaddr = URXC0addr
  .equ UDREaddr = UDRE0addr
  .equ EEWE     = EEPE
  .equ EEMWE    = EEMPE
  .equ SPMCR    = SPMCSR

.macro jmp_
    jmp @0
.endmacro

.macro call_
    call @0
.endmacro

; default interrupt handlers
.org	INT0addr ; External Interrupt0 Vector Address
    rcall isr
.org	INT1addr ; External Interrupt1 Vector Address
    rcall isr
.org	INT2addr ; External Interrupt2 Vector Address
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
.org	OVF0addr ; Overflow0 Interrupt Vector Address
    rcall isr
.org	SPIaddr  ; SPI Interrupt Vector Address
    rcall isr
.org	ADCCaddr ; ADC Interrupt Vector Address
    rcall isr
.org	ERDYaddr ; EEPROM Interrupt Vector Address
    rcall isr
.org	ACIaddr  ; Analog Comparator Interrupt Vector Address
    rcall isr
.org    TWIaddr ; Irq. vector address for Two-Wire Interface
    rcall isr
.org	SPMRaddr ; Store Program Memory Ready Interrupt Vector Address
    rcall isr

mcustring:
  .db 9,"ATmega644"
