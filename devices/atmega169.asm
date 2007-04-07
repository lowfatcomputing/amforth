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

  .equ INTVECTORS = 23
  .equ intvecsize = 2

  .equ nrww = $1c00
  .equ codestart = $2e
 
  .equ UMSEL01 = 7

.ifdef PCINT0addr
    .equ PCI0addr = PCINT0addr
.endif
.ifdef PCINT1addr
    .equ PCI1addr = PCINT1addr
.endif

.if defined(SPMCR)
    ; .message "SPMCR"
.else
    .equ SPMCR = SPMCSR
.endif
;
.org	INT0addr
    rcall isr   ; External Interrupt Request 0
.org    PCI0addr
    rcall isr   ;Pin Change 0 Interrupt Vector
.org    PCI1addr
    rcall isr   ;Pin Change 1 Interrupt Vector
.org    OC2addr
    rcall isr   ;Timer/Counter2 Compare Match Interrupt Vector
.org    OVF2addr
    rcall isr   ;Timer/Counter2 Overflow Interrupt Vector
.org    ICP1addr
    rcall isr   ;Timer/Counter1 Capture Event Interrupt Vector
.org    OC1Aaddr
    rcall isr   ;Timer/Counter1 Compare Match A Interrupt Vector
.org    OC1Baddr
    rcall isr   ;Timer/Counter1 Compare Match B Interrupt Vector
.org    OVF1addr
    rcall isr   ;Timer/Counter1 Overflow Interrupt Vector
.org    OC0addr
    rcall isr   ;Timer/Counter0 Compare Match Interrupt Vector
.org    OVF0addr
    rcall isr   ;Timer/Counter0 Overflow Interrupt Vector
.org    SPIaddr
    rcall isr   ;SPI Serial Transfer Complete Interrupt Vector
;.org    URXC0addr
;    rcall isr   ;USART, Rx Complete Interrupt Vector
;.org    UDRE0addr
;    rcall isr   ;USART, Data Register Empty Interrupt Vector
;.org    UTXC0addr
;    rcall isr   ;USART, Tx Complete Interrupt Vector
.org    USI_STARTaddr
    rcall isr   ;USI Start Condition Interrupt Vector
.org    USI_OVFaddr
    rcall isr   ;USI Overflow Interrupt Vector  
.org    ACIaddr
    rcall isr   ;Analog Comparator Interrupt Vector
.org    ADCCaddr
    rcall isr   ;ADC Conversion Complete Interrupt Vector
.org    ERDYaddr
    rcall isr   ;EEPROM Ready Interrupt Vector
.org    SPMRaddr
    rcall isr   ;Store Program Memory Ready Interrupt Vector
.org    LCDSFaddr
    rcall isr   ;LCD Start of Frame Interrupt Vector

