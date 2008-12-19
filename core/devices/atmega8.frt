\ Partname: ATmega8
\ Built using part description XML file version 232
\ generated automatically

hex

\ AD_CONVERTER
25 constant ADCH	\ ADC Data Register High Byte
24 constant ADCL	\ ADC Data Register Low Byte
26 constant ADCSRA	\ The ADC Control and Status register
27 constant ADMUX	\ The ADC multiplexer Selection Register

\ ANALOG_COMPARATOR
28 constant ACSR	\ Analog Comparator Control And Status Register
50 constant SFIOR	\ Special Function IO Register

\ CPU
55 constant MCUCR	\ MCU Control Register
54 constant MCUCSR	\ MCU Control And Status Register
51 constant OSCCAL	\ Oscillator Calibration Value
5E constant SPH	\ Stack Pointer High
5D constant SPL	\ Stack Pointer Low
57 constant SPMCR	\ Store Program Memory Control Register
5F constant SREG	\ Status Register

\ EEPROM
3F constant EEARH	\ EEPROM Address Register High Byte
3E constant EEARL	\ EEPROM Address Register Low Byte
3C constant EECR	\ EEPROM Control Register
3D constant EEDR	\ EEPROM Data Register

\ EXTERNAL_INTERRUPT
5B constant GICR	\ General Interrupt Control Register
5A constant GIFR	\ General Interrupt Flag Register

\ PORTB
37 constant DDRB	\ Port B Data Direction Register
36 constant PINB	\ Port B Input Pins
38 constant PORTB	\ Port B Data Register

\ PORTC
34 constant DDRC	\ Port C Data Direction Register
33 constant PINC	\ Port C Input Pins
35 constant PORTC	\ Port C Data Register

\ PORTD
31 constant DDRD	\ Port D Data Direction Register
30 constant PIND	\ Port D Input Pins
32 constant PORTD	\ Port D Data Register

\ SPI
2D constant SPCR	\ SPI Control Register
2F constant SPDR	\ SPI Data Register
2E constant SPSR	\ SPI Status Register

\ TIMER_COUNTER_0
53 constant TCCR0	\ Timer/Counter0 Control Register
52 constant TCNT0	\ Timer Counter 0
58 constant TIFR	\ Timer/Counter Interrupt Flag register
59 constant TIMSK	\ Timer/Counter Interrupt Mask Register

\ TIMER_COUNTER_1
47 constant ICR1H	\ Timer/Counter1 Input Capture Register High Byte
46 constant ICR1L	\ Timer/Counter1 Input Capture Register Low Byte
4B constant OCR1AH	\ Timer/Counter1 Outbut Compare Register High Byte
4A constant OCR1AL	\ Timer/Counter1 Outbut Compare Register Low Byte
49 constant OCR1BH	\ Timer/Counter1 Output Compare Register High Byte
48 constant OCR1BL	\ Timer/Counter1 Output Compare Register Low Byte
4F constant TCCR1A	\ Timer/Counter1 Control Register A
4E constant TCCR1B	\ Timer/Counter1 Control Register B
4D constant TCNT1H	\ Timer/Counter1 High Byte
4C constant TCNT1L	\ Timer/Counter1 Low Byte

\ TIMER_COUNTER_2
42 constant ASSR	\ Asynchronous Status Register
43 constant OCR2	\ Timer/Counter2 Output Compare Register
45 constant TCCR2	\ Timer/Counter2 Control Register
44 constant TCNT2	\ Timer/Counter2

\ TWI
22 constant TWAR	\ TWI (Slave) Address register
20 constant TWBR	\ TWI Bit Rate register
56 constant TWCR	\ TWI Control Register
23 constant TWDR	\ TWI Data register
21 constant TWSR	\ TWI Status Register

\ USART
40 constant UBRRH	\ USART Baud Rate Register Hight Byte
29 constant UBRRL	\ USART Baud Rate Register Low Byte
2B constant UCSRA	\ USART Control and Status Register A
2A constant UCSRB	\ USART Control and Status Register B
2C constant UDR	\ USART I/O Data Register

\ WATCHDOG
41 constant WDTCR	\ Watchdog Timer Control Register

\ Interrupts
001  constant INT0Addr \ External Interrupt Request 0
002  constant INT1Addr \ External Interrupt Request 1
003  constant TIMER2_COMPAddr \ Timer/Counter2 Compare Match
004  constant TIMER2_OVFAddr \ Timer/Counter2 Overflow
005  constant TIMER1_CAPTAddr \ Timer/Counter1 Capture Event
006  constant TIMER1_COMPAAddr \ Timer/Counter1 Compare Match A
007  constant TIMER1_COMPBAddr \ Timer/Counter1 Compare Match B
008  constant TIMER1_OVFAddr \ Timer/Counter1 Overflow
009  constant TIMER0_OVFAddr \ Timer/Counter0 Overflow
00A  constant SPI_STCAddr \ Serial Transfer Complete
00B  constant USART_RXCAddr \ USART, Rx Complete
00C  constant USART_UDREAddr \ USART Data Register Empty
00D  constant USART_TXCAddr \ USART, Tx Complete
00E  constant ADCAddr \ ADC Conversion Complete
00F  constant EE_RDYAddr \ EEPROM Ready
010  constant ANA_COMPAddr \ Analog Comparator
011  constant TWIAddr \ 2-wire Serial Interface
012  constant SPM_RDYAddr \ Store Program Memory Ready
