.nolist
.include "m169def.inc"
.list

  ; first address of RAM 
  .equ ramstart = $100
  .equ stackstart = RAMEND - 80
  .equ HLDSIZE  = $16  ; 16 bit cellsize with binary representation
  .equ TIBSIZE  = $64  ; 80 characters is one line...
  .equ CELLSIZE = 2   ;
  .equ USERSIZE = 24  ; size of user area

  .set PAGEMASK =  ~ ( PAGESIZE - 1 )

  .equ nrww = $1c00
  .equ codestart = $2e
 
  .equ UMSEL01 = 7

; comment out the following 3 definitions for avr assembler2
.equ PCI0addr = PCINT0addr
.equ PCI1addr = PCINT1addr
.equ SPMCR = SPMCSR

;
.org	INT0addr
    reti   ; External Interrupt Request 0
.org    PCI0addr
    reti   ;Pin Change 0 Interrupt Vector
.org    PCI1addr
    reti   ;Pin Change 1 Interrupt Vector
.org    OC2addr
    reti   ;Timer/Counter2 Compare Match Interrupt Vector
.org    OVF2addr
    reti   ;Timer/Counter2 Overflow Interrupt Vector
.org    ICP1addr
    reti   ;Timer/Counter1 Capture Event Interrupt Vector
.org    OC1Aaddr
    reti   ;Timer/Counter1 Compare Match A Interrupt Vector
.org    OC1Baddr
    reti   ;Timer/Counter1 Compare Match B Interrupt Vector
.org    OVF1addr
    reti   ;Timer/Counter1 Overflow Interrupt Vector
.org    OC0addr
    reti   ;Timer/Counter0 Compare Match Interrupt Vector
.org    OVF0addr
    reti   ;Timer/Counter0 Overflow Interrupt Vector
.org    SPIaddr
    reti   ;SPI Serial Transfer Complete Interrupt Vector
;.org    URXC0addr
;    reti   ;USART, Rx Complete Interrupt Vector
;.org    UDRE0addr
;    reti   ;USART, Data Register Empty Interrupt Vector
;.org    UTXC0addr
;    reti   ;USART, Tx Complete Interrupt Vector
.org    USI_STARTaddr
    reti   ;USI Start Condition Interrupt Vector
.org    USI_OVFaddr
    reti   ;USI Overflow Interrupt Vector  
.org    ACIaddr
    reti   ;Analog Comparator Interrupt Vector
.org    ADCCaddr
    rjmp int2_isr   ;ADC Conversion Complete Interrupt Vector
.org    ERDYaddr
    reti   ;EEPROM Ready Interrupt Vector
.org    SPMRaddr
    reti   ;Store Program Memory Ready Interrupt Vector
.org    LCDSFaddr
    rjmp int3_isr   ;LCD Start of Frame Interrupt Vector

