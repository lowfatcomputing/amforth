.nolist
.include "m88def.inc"
.list

  ; first address of RAM 
  .equ ramstart = $100

  .equ amforth_interpreter = $1c00

  .equ INTVECTORS = 25 ; INT_VECTORS_SIZE
  .equ intvecsize = 1

.macro jmp_
    rjmp @0
.endmacro

.macro call_
    rcall @0
.endmacro

.macro readflashcell
    lsl zl
    rol zh
    lpm @0, Z+
    lpm @1, Z+
.endmacro

.macro writeflashcell
    lsl zl
    rol zh
.endmacro

  .equ BAUDRATE0_LOW = UBRR0L+$20
  .equ BAUDRATE0_HIGH = UBRR0H+$20
  .equ USART0_C = UCSR0C+$20
  .equ USART0_B = UCSR0B+$20

  .equ USART0_B_VALUE = (1<<TXEN0) | (1<<RXEN0) | (1<<RXCIE0)
  .equ USART0_C_VALUE = (1<<UMSEL00)|(3<<UCSZ00)


  .equ PE0  = UPE0

  .equ EEWE = EEPE
  .equ SPMCR = SPMCSR
  .equ SPMEN = SELFPRGEN
  .equ EEMWE = EEMPE
 
.org  INT0addr
    rcall isr    ; External Interrupt Request 0
.org  INT1addr       
    rcall isr ; External Interrupt Request 1
.org  PCI0addr       
    rcall isr ; Pin Change Interrupt Request 0
.org  PCI1addr       
    rcall isr ; Pin Change Interrupt Request 0
.org  PCI2addr       
    rcall isr ; Pin Change Interrupt Request 1
.org  WDTaddr        
    rcall isr ; Watchdog Time-out Interrupt
.org  OC2Aaddr       
    rcall isr ; Timer/Counter2 Compare Match A
.org  OC2Baddr       
    rcall isr ; Timer/Counter2 Compare Match A
.org  OVF2addr       
    rcall isr ; Timer/Counter2 Overflow
.org  ICP1addr       
    rcall isr ; Timer/Counter1 Capture Event
.org  OC1Aaddr       
    rcall isr ; Timer/Counter1 Compare Match A
.org  OC1Baddr       
    rcall isr ; Timer/Counter1 Compare Match B
.org  OVF1addr       
    rcall isr ; Timer/Counter1 Overflow
.org  OC0Aaddr       
    rcall isr ; TimerCounter0 Compare Match A
.org  OC0Baddr       
    rcall isr ; TimerCounter0 Compare Match B
.org  OVF0addr       
    rcall isr ; Timer/Couner0 Overflow
.org  SPIaddr        
    rcall isr ; SPI Serial Transfer Complete
;.org  URXCaddr       
;    rcall isr ; USART Rx Complete
;.org  UDREaddr       
;    rcall isr ; USART, Data Register Empty
.org  UTXCaddr       
    rcall isr ; USART Tx Complete
.org  ADCaddr        
    rcall isr ; ADC Conversion Complete
.org  ERDYaddr       
    rcall isr ; EEPROM Ready
.org  ACIaddr        
    rcall isr ; Analog Comparator
.org  TWIaddr        
    rcall isr ; Two-wire Serial Interface
.org  SPMRaddr       
    rcall isr ; Store Program Memory Read

mcustring:
  .dw 8
  .db "ATmega88"
.set codestart = pc
