.nolist
.include "m168def.inc"
.list

  ; first address of RAM 
  .equ ramstart = $100
  .equ stackstart = RAMEND - 80
  .equ HLDSIZE  = $10 ; 16 bit cellsize with binary representation
  .equ TIBSIZE  = $64 ; 80 characters is one line...
  .equ CELLSIZE = 2   ;
  .equ USERSIZE = 24  ; size of user area

  .equ PAGEMASK =  ~ ( PAGESIZE - 1 )

  .equ INTVECTORS = 23
  .equ intvecsize = 2
  
  .equ nrww = $1c00
  .equ codestart = $34


.macro jmp_
    jmp @0
.endmacro

.macro call_
    call @0
.endmacro

  .equ BAUDRATE0_LOW = UBRR0L
  .equ BAUDRATE0_HIGH = UBRR0H
  .equ USART0_C = UCSR0C
  .equ USART0_B = UCSR0B

  .equ EEWE = EEPE
  .equ SPMCR = SPMCSR
  .equ SPMEN = SELFPRGEN
  .equ EEMWE = EEMPE

.org  INT0addr       
    rcall isr  ; External Interrupt .orgest 0
.org  INT1addr       
    rcall isr  ; External Interrupt .orgest 1
.org  PCI0addr        
    rcall isr  ; Pin Change Interrupt .orgest 0
.org  PCI1addr        
    rcall isr  ; Pin Change Interrupt .orgest 0
.org  PCI2addr        
    rcall isr  ; Pin Change Interrupt .orgest 1
.org  WDTaddr         
    rcall isr  ; Watchdog Time-out Interrupt
.org  OC2Aaddr        
    rcall isr  ; Timer/Counter2 Compare Match A
.org  OC2Baddr        
    rcall isr  ; Timer/Counter2 Compare Match A
.org  OVF2addr        
    rcall isr  ; Timer/Counter2 Overflow
.org  ICP1addr        
    rcall isr  ; Timer/Counter1 Capture Event
.org  OC1Aaddr        
    rcall isr  ; Timer/Counter1 Compare Match A
.org  OC1Baddr        
    rcall isr  ; Timer/Counter1 Compare Match B
.org  OVF1addr        
    rcall isr  ; Timer/Counter1 Overflow
.org  OC0Aaddr        
    rcall isr  ; TimerCounter0 Compare Match A
.org  OC0Baddr        
    rcall isr  ; TimerCounter0 Compare Match B
.org  OVF0addr        
    rcall isr  ; Timer/Couner0 Overflow
.org  SPIaddr         
    rcall isr  ; SPI Serial Transfer Complete
.org  URXCaddr        
    rcall isr  ; USART Rx Complete
.org  UDREaddr        
    rcall isr  ; USART, Data Register Empty
.org  UTXCaddr        
    rcall isr  ; USART Tx Complete
.org  ADCaddr         
    rcall isr  ; ADC Conversion Complete
.org  ERDYaddr        
    rcall isr  ; EEPROM Ready
.org  ACIaddr         
    rcall isr  ; Analog Comparator
.org  TWIaddr         
    rcall isr  ; Two-wire Serial Interface
.org  SPMRaddr        
    rcall isr  ; Store Program Memory Read

mcustring:
  .db 9,"ATmega168"
