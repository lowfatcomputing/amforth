.nolist
.include "can128def.inc"
.list

  .equ ramstart = $100 ; first address of RAM
  .equ stackstart = RAMEND - rstacksize

  .equ INTVECTORS = 37 ; INT_VECTORS_SIZE / 2
  .equ intvecsize = 2
  .equ amforth_interpreter = $f000

.macro jmp_
    jmp @0
.endmacro

.macro call_
    call @0
.endmacro

.macro readflashcell
    clr temp7
    lsl zl
    rol zh
    rol temp7
    out_ RAMPZ, temp7
    elpm @0, Z+
    elpm @1, Z+
.endmacro

.macro writeflashcell
    clr temp7
    lsl zl
    rol zh
    rol temp7
    out_ RAMPZ, temp7
.endmacro

  .equ BAUDRATE0_LOW = UBRR0L
  .equ BAUDRATE0_HIGH = UBRR0H
  .equ USART0_C = UCSR0C
  .equ USART0_B = UCSR0B
  .equ URXCaddr = URXC0addr
  .equ UDREaddr = UDRE0addr

  .equ USART0_B_VALUE = (1<<TXEN0) | (1<<RXEN0) | (1<<RXCIE0)
  .equ USART0_C_VALUE = (1<<UCSZ01) | ( 1<<UCSZ00)
  

; ***** INTERRUPT VECTORS ************************************************
.org  INT0addr      
    rcall isr ; External Interrupt0 Vector Address
.org  INT1addr      
    rcall isr ; External Interrupt1 Vector Address
.org  INT2addr      
    rcall isr ; External Interrupt2 Vector Address
.org  INT3addr      
    rcall isr ; External Interrupt3 Vector Address
.org  INT4addr      
    rcall isr ; External Interrupt4 Vector Address
.org  INT5addr      
    rcall isr ; External Interrupt5 Vector Address
.org  INT6addr      
    rcall isr ; External Interrupt6 Vector Address
.org  INT7addr      
    rcall isr ; External Interrupt7 Vector Address
.org  OC2addr       
    rcall isr ; Timer/Counter2 Compare Match Interrupt Address
.org  OVF2addr      
    rcall isr ; Timer/Counter2 Overflow Interrupt Address
.org  ICP1addr      
    rcall isr ; Timer/Counter1 Input Capture Interrupt Address
.org  OC1Aaddr      
    rcall isr ; Timer/Counter1 Output CompareA Interrupt Address
.org  OC1Baddr      
    rcall isr ; Timer/Counter1 Output CompareB Interrupt Address
.org  OC1Caddr      
    rcall isr ; Timer/Counter1 Output CompareC Interrupt Address
.org  OVF1addr      
    rcall isr ; Timer/Counter1 Overflow Interrupt Address
.org  OC0addr       
    rcall isr ; Timer/Counter0 Compare Match Interrupt Address
.org  OVF0addr      
    rcall isr ; Timer/Counter0 Overflow Interrupt Address
.org  CANITaddr     
    rcall isr ; CAN Transfer Complete or Error Address
.org  OVRITaddr     
    rcall isr ; CAN Timer Overrun Address
.org  SPIaddr       
    rcall isr ; SPI Interrupt Address
;.org  URXC0addr     
;    rcall isr ; USART-0 Receive Complete Interrupt Address
;.org  UDRE0addr     
;    rcall isr ; USART-0 Data Register Empty Interrupt Address
.org  UTXC0addr     
    rcall isr ; USART-0 Transmit Complete Interrupt Address
.org  ACIaddr       
    rcall isr ; Analog Comparator Interrupt Address
.org  ADCCaddr      
    rcall isr ; ADC Conversion Complete Interrupt Address
.org  ERDYaddr      
    rcall isr ; EEPROM Write Complete Interrupt Address
.org  ICP3addr      
    rcall isr ; Timer/Counter3 Input Capture Interrupt Address
.org  OC3Aaddr      
    rcall isr ; Timer/Counter3 Output CompareA Interrupt Address
.org  OC3Baddr      
    rcall isr ; Timer/Counter3 Output CompareB Interrupt Address
.org  OC3Caddr      
    rcall isr ; Timer/Counter3 Output CompareC Interrupt Address
.org  OVF3addr      
    rcall isr ; Timer/Counter3 Overflow Interrupt Address
.org  URXC1addr     
    rcall isr ; USART-1 Receive Complete Interrupt Address
.org  UDRE1addr     
    rcall isr ; USART-1 Data Register Empty Interrupt Address
.org  UTXC1addr     
    rcall isr ; USART-1 Transmit Complete Interrupt Address
.org  TWIaddr       
    rcall isr ; TWI Interrupt Vector Address
.org  SPMRaddr      
    rcall isr ; Store Program Memory Ready Interrupt Address

mcustring:
  .db 11,"AT90can128 "
.set codestart = pc
