.nolist
.include "m168def.inc"
.list

  ; first address of RAM 
  .equ ramstart = $100

  .equ INTVECTORS = 23
  .equ intvecsize = 2
  
  .equ amforth_interpreter = $1c00

  .equ UDR = UDR0
  .equ FE = FE0
  .equ DOR = DOR0
  .equ PE = UPE0
  .equ UDRIE = UDRIE0

  .equ BAUDRATE_LOW = UBRR0L
  .equ BAUDRATE_HIGH = UBRR0H
  .equ USART_C = UCSR0C
  .equ USART_B = UCSR0B
  .equ USART_A = UCSR0A
  .equ USART_B_VALUE = (1<<TXEN0) | (1<<RXEN0) | (1<<RXCIE0)
  .equ USART_C_VALUE = (1<<UCSZ01) | ( 1<<UCSZ00)

  .equ SPMEN = SELFPRGEN

.macro jmp_
    jmp @0
.endmacro

.macro call_
    call @0
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
;.org  URXCaddr        
;    rcall isr  ; USART Rx Complete
;.org  UDREaddr        
;    rcall isr  ; USART, Data Register Empty
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
  .dw 9
  .db "ATmega168 "
.set codestart = pc
