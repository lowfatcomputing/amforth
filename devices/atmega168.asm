.nolist
.include "m168def.inc"
.list

  ; first address of RAM 
  .equ ramstart = $100
  .equ stackstart = RAMEND - 80
  .equ PADSIZE  = $10 ; 16 bit cellsize with binary representation
  .equ TIBSIZE  = $64 ; 80 characters is one line...
  .equ CELLSIZE = 2   ;
  .equ USERSIZE = 24  ; size of user area

  .equ PAGEMASK =  ~ ( PAGESIZE - 1 )

  .equ nrww = $1c00
  .equ codestart = $34
 
  .equ EEWE = EEPE
  .equ SPMCR = SPMCSR
  .equ SPMEN = SELFPRGEN
  .equ EEMWE = EEMPE

.org  INT0addr       
    rjmp int0_isr  ; External Interrupt .orgest 0
.org  INT1addr       
    rjmp int1_isr  ; External Interrupt .orgest 1
.org  PCI0addr        
    reti  ; Pin Change Interrupt .orgest 0
.org  PCI1addr        
    reti  ; Pin Change Interrupt .orgest 0
.org  PCI2addr        
    reti  ; Pin Change Interrupt .orgest 1
.org  WDTaddr         
    reti  ; Watchdog Time-out Interrupt
.org  OC2Aaddr        
    reti  ; Timer/Counter2 Compare Match A
.org  OC2Baddr        
    reti  ; Timer/Counter2 Compare Match A
.org  OVF2addr        
    reti  ; Timer/Counter2 Overflow
.org  ICP1addr        
    reti  ; Timer/Counter1 Capture Event
.org  OC1Aaddr        
    reti  ; Timer/Counter1 Compare Match A
.org  OC1Baddr        
    reti  ; Timer/Counter1 Compare Match B
.org  OVF1addr        
    reti  ; Timer/Counter1 Overflow
.org  OC0Aaddr        
    reti  ; TimerCounter0 Compare Match A
.org  OC0Baddr        
    reti  ; TimerCounter0 Compare Match B
.org  OVF0addr        
    reti  ; Timer/Couner0 Overflow
.org  SPIaddr         
    reti  ; SPI Serial Transfer Complete
.org  URXCaddr        
    reti  ; USART Rx Complete
.org  UDREaddr        
    reti  ; USART, Data Register Empty
.org  UTXCaddr        
    reti  ; USART Tx Complete
.org  ADCaddr         
    rjmp int2_isr  ; ADC Conversion Complete
.org  ERDYaddr        
    reti  ; EEPROM Ready
.org  ACIaddr         
    reti  ; Analog Comparator
.org  TWIaddr         
    reti  ; Two-wire Serial Interface
.org  SPMRaddr        
    reti  ; Store Program Memory Read

