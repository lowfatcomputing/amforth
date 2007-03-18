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

  .equ nrww = $7000
  .equ codestart = $3e

  ; needs atmel avrasm32.exe
  .equ URXCaddr = URXC0addr
  .equ UDREaddr = UDRE0addr
  .equ EEWE     = EEPE
  .equ EEMWE    = EEMPE
  .equ SPMCR    = SPMCSR
    
; default interrupt handlers
.org	INT0addr ; External Interrupt0 Vector Address
    rjmp int0_isr 
.org	INT1addr ; External Interrupt1 Vector Address
    rjmp int1_isr 
.org	INT2addr ; External Interrupt2 Vector Address
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
.org	OVF0addr ; Overflow0 Interrupt Vector Address
    reti	
.org	SPIaddr  ; SPI Interrupt Vector Address
    reti	
.org	ADCCaddr ; ADC Interrupt Vector Address
    rjmp int2_isr
.org	ERDYaddr ; EEPROM Interrupt Vector Address
    reti	
.org	ACIaddr  ; Analog Comparator Interrupt Vector Address
    reti	
.org    TWIaddr ; Irq. vector address for Two-Wire Interface
    reti   
.org	SPMRaddr ; Store Program Memory Ready Interrupt Vector Address
    reti	

