\ Partname: ATmega128
\ Built using part description XML file version 265
\ generated automatically
hex
0000  constant RESETAddr \ External Pin, Power-on Reset, Brown-out Reset, Watchdog Reset and JTAG AVR Reset
0002  constant INT0Addr \ External Interrupt Request 0
0004  constant INT1Addr \ External Interrupt Request 1
0006  constant INT2Addr \ External Interrupt Request 2
0008  constant INT3Addr \ External Interrupt Request 3
000A  constant INT4Addr \ External Interrupt Request 4
000C  constant INT5Addr \ External Interrupt Request 5
000E  constant INT6Addr \ External Interrupt Request 6
0010  constant INT7Addr \ External Interrupt Request 7
0012  constant TIMER2_COMPAddr \ Timer/Counter2 Compare Match
0014  constant TIMER2_OVFAddr \ Timer/Counter2 Overflow
0016  constant TIMER1_CAPTAddr \ Timer/Counter1 Capture Event
0018  constant TIMER1_COMPAAddr \ Timer/Counter1 Compare Match A
001A  constant TIMER1_COMPBAddr \ Timer/Counter Compare Match B
001C  constant TIMER1_OVFAddr \ Timer/Counter1 Overflow
001E  constant TIMER0_COMPAddr \ Timer/Counter0 Compare Match
0020  constant TIMER0_OVFAddr \ Timer/Counter0 Overflow
0022  constant SPI_STCAddr \ SPI Serial Transfer Complete
0024  constant USART0_RXAddr \ USART0, Rx Complete
0026  constant USART0_UDREAddr \ USART0 Data Register Empty
0028  constant USART0_TXAddr \ USART0, Tx Complete
002A  constant ADCAddr \ ADC Conversion Complete
002C  constant EE_READYAddr \ EEPROM Ready
002E  constant ANALOG_COMPAddr \ Analog Comparator
0030  constant TIMER1_COMPCAddr \ Timer/Counter1 Compare Match C
0032  constant TIMER3_CAPTAddr \ Timer/Counter3 Capture Event
0034  constant TIMER3_COMPAAddr \ Timer/Counter3 Compare Match A
0036  constant TIMER3_COMPBAddr \ Timer/Counter3 Compare Match B
0038  constant TIMER3_COMPCAddr \ Timer/Counter3 Compare Match C
003A  constant TIMER3_OVFAddr \ Timer/Counter3 Overflow
003C  constant USART1_RXAddr \ USART1, Rx Complete
003E  constant USART1_UDREAddr \ USART1, Data Register Empty
0040  constant USART1_TXAddr \ USART1, Tx Complete
0042  constant TWIAddr \ 2-wire Serial Interface
0044  constant SPM_READYAddr \ Store Program Memory Read

\ AD_CONVERTER
25 constant ADCH	\ ADC Data Register High Byte
24 constant ADCL	\ ADC Data Register Low Byte
26 constant ADCSRA	\ The ADC Control and Status register
27 constant ADMUX	\ The ADC multiplexer Selection Register

\ ANALOG_COMPARATOR
28 constant ACSR	\ Analog Comparator Control And Status Register
40 constant SFIOR	\ Special Function IO Register

\ BOOT_LOAD
68 constant SPMCSR	\ Store Program Memory Control Register

\ CPU
55 constant MCUCR	\ MCU Control Register
54 constant MCUCSR	\ MCU Control And Status Register
6F constant OSCCAL	\ Oscillator Calibration Value
5B constant RAMPZ	\ RAM Page Z Select Register
5E constant SPH	\ Stack Pointer High
5D constant SPL	\ Stack Pointer Low
5F constant SREG	\ Status Register
5C constant XDIV	\ XTAL Divide Control Register
6D constant XMCRA	\ External Memory Control Register A
6C constant XMCRB	\ External Memory Control Register B

\ EEPROM
3F constant EEARH	\ EEPROM Read/Write Access High Byte
3E constant EEARL	\ EEPROM Read/Write Access Low Byte
3C constant EECR	\ EEPROM Control Register
3D constant EEDR	\ EEPROM Data Register

\ EXTERNAL_INTERRUPT
6A constant EICRA	\ External Interrupt Control Register A
5A constant EICRB	\ External Interrupt Control Register B
58 constant EIFR	\ External Interrupt Flag Register
59 constant EIMSK	\ External Interrupt Mask Register

\ JTAG
42 constant OCDR	\ On-Chip Debug Related Register in I/O Memory

\ MISC

\ PORTA
3A constant DDRA	\ Port A Data Direction Register
39 constant PINA	\ Port A Input Pins
3B constant PORTA	\ Port A Data Register

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

\ PORTE
22 constant DDRE	\ Data Direction Register, Port E
21 constant PINE	\ Input Pins, Port E
23 constant PORTE	\ Data Register, Port E

\ PORTF
61 constant DDRF	\ Data Direction Register, Port F
20 constant PINF	\ Input Pins, Port F
62 constant PORTF	\ Data Register, Port F

\ PORTG
64 constant DDRG	\ Data Direction Register, Port G
63 constant PING	\ Input Pins, Port G
65 constant PORTG	\ Data Register, Port G

\ SPI
2D constant SPCR	\ SPI Control Register
2F constant SPDR	\ SPI Data Register
2E constant SPSR	\ SPI Status Register

\ TIMER_COUNTER_0
50 constant ASSR	\ Asynchronus Status Register
51 constant OCR0	\ Output Compare Register
53 constant TCCR0	\ Timer/Counter Control Register
52 constant TCNT0	\ Timer/Counter Register 
56 constant TIFR	\ Timer/Counter Interrupt Flag register
57 constant TIMSK	\ Timer/Counter Interrupt Mask Register

\ TIMER_COUNTER_1
7C constant ETIFR	\ Extended Timer/Counter Interrupt Flag register
7D constant ETIMSK	\ Extended Timer/Counter Interrupt Mask Register
47 constant ICR1H	\ Timer/Counter1 Input Capture Register High Byte
46 constant ICR1L	\ Timer/Counter1 Input Capture Register Low Byte
4B constant OCR1AH	\ Timer/Counter1 Outbut Compare Register High Byte
4A constant OCR1AL	\ Timer/Counter1 Outbut Compare Register Low Byte
49 constant OCR1BH	\ Timer/Counter1 Output Compare Register High Byte
48 constant OCR1BL	\ Timer/Counter1 Output Compare Register Low Byte
79 constant OCR1CH	\ Timer/Counter1 Output Compare Register High Byte
78 constant OCR1CL	\ Timer/Counter1 Output Compare Register Low Byte
4F constant TCCR1A	\ Timer/Counter1 Control Register A
4E constant TCCR1B	\ Timer/Counter1 Control Register B
7A constant TCCR1C	\ Timer/Counter1 Control Register C
4D constant TCNT1H	\ Timer/Counter1 High Byte
4C constant TCNT1L	\ Timer/Counter1 Low Byte

\ TIMER_COUNTER_2
43 constant OCR2	\ Output Compare Register
45 constant TCCR2	\ Timer/Counter Control Register
44 constant TCNT2	\ Timer/Counter Register

\ TIMER_COUNTER_3
81 constant ICR3H	\ Timer/Counter3 Input Capture Register High Byte
80 constant ICR3L	\ Timer/Counter3 Input Capture Register Low Byte
87 constant OCR3AH	\ Timer/Counter3 Outbut Compare Register A High Byte
86 constant OCR3AL	\ Timer/Counter3 Outbut Compare Register A Low Byte
85 constant OCR3BH	\ Timer/Counter3 Output Compare Register B High Byte
84 constant OCR3BL	\ Timer/Counter3 Output Compare Register B Low Byte
83 constant OCR3CH	\ Timer/Counter3 Output compare Register C High Byte
82 constant OCR3CL	\ Timer/Counter3 Output compare register C Low byte
8B constant TCCR3A	\ Timer/Counter3 Control Register A
8A constant TCCR3B	\ Timer/Counter3 Control Register B
8C constant TCCR3C	\ Timer/Counter3 Control Register C
89 constant TCNT3H	\ Timer/Counter3 High Byte
88 constant TCNT3L	\ Timer/Counter3 Low Byte

\ TWI
72 constant TWAR	\ TWI (Slave) Address register
70 constant TWBR	\ TWI Bit Rate register
74 constant TWCR	\ TWI Control Register
73 constant TWDR	\ TWI Data register
71 constant TWSR	\ TWI Status Register

\ USART0
90 constant UBRR0H	\ USART Baud Rate Register Hight Byte
29 constant UBRR0L	\ USART Baud Rate Register Low Byte
2B constant UCSR0A	\ USART Control and Status Register A
2A constant UCSR0B	\ USART Control and Status Register B
95 constant UCSR0C	\ USART Control and Status Register C
2C constant UDR0	\ USART I/O Data Register

\ USART1
98 constant UBRR1H	\ USART Baud Rate Register Hight Byte
99 constant UBRR1L	\ USART Baud Rate Register Low Byte
9B constant UCSR1A	\ USART Control and Status Register A
9A constant UCSR1B	\ USART Control and Status Register B
9D constant UCSR1C	\ USART Control and Status Register C
9C constant UDR1	\ USART I/O Data Register

\ WATCHDOG
41 constant WDTCR	\ Watchdog Timer Control Register
