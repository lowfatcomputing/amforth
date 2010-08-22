\ Partname: AT90CAN64
\ Built using part description XML file version 54
\ generated automatically

hex

\ AD_CONVERTER
79 constant ADCH	\ ADC Data Register High Byte
78 constant ADCL	\ ADC Data Register Low Byte
7A constant ADCSRA	\ The ADC Control and Status register
7B constant ADCSRB	\ ADC Control and Status Register B
7C constant ADMUX	\ The ADC multiplexer Selection Register
7E constant DIDR0	\ Digital Input Disable Register 1

\ ANALOG_COMPARATOR
50 constant ACSR	\ Analog Comparator Control And Status Register
7F constant DIDR1	\ 

\ BOOT_LOAD
57 constant SPMCSR	\ Store Program Memory Control Register

\ CAN
E2 constant CANBT1	\ Bit Timing Register 1
E3 constant CANBT2	\ Bit Timing Register 2
E4 constant CANBT3	\ Bit Timing Register 3
EF constant CANCDMOB	\ MOb Control and DLC Register
DD constant CANEN1	\ Enable MOb Register
DC constant CANEN2	\ Enable MOb Register
D8 constant CANGCON	\ CAN General Control Register
DB constant CANGIE	\ CAN General Interrupt Enable Register
DA constant CANGIT	\ CAN General Interrupt Register
D9 constant CANGSTA	\ CAN General Status Register
EC constant CANHPMOB	\ Highest Priority MOb Register
F7 constant CANIDM1	\ Identifier Mask Register 1
F6 constant CANIDM2	\ Identifier Mask Register 2
F5 constant CANIDM3	\ Identifier Mask Register 3
F4 constant CANIDM4	\ Identifier Mask Register 4
F3 constant CANIDT1	\ Identifier Tag Register 1
F2 constant CANIDT2	\ Identifier Tag Register 2
F1 constant CANIDT3	\ Identifier Tag Register 3
F0 constant CANIDT4	\ Identifier Tag Register 4
DF constant CANIE1	\ Enable Interrupt MOb Register
DE constant CANIE2	\ Enable Interrupt MOb Register
FA constant CANMSG	\ Message Data Register
ED constant CANPAGE	\ Page MOb Register
EB constant CANREC	\ Receive Error Counter Register
E1 constant CANSIT1	\ CAN Status Interrupt MOb Register
E0 constant CANSIT2	\ CAN Status Interrupt MOb Register
F9 constant CANSTMH	\ Time Stamp Register High
F8 constant CANSTML	\ Time Stamp Register Low
EE constant CANSTMOB	\ MOb Status Register
E5 constant CANTCON	\ Timer Control Register
EA constant CANTEC	\ Transmit Error Counter Register
E7 constant CANTIMH	\ Timer Register High
E6 constant CANTIML	\ Timer Register Low
E9 constant CANTTCH	\ TTC Timer Register High
E8 constant CANTTCL	\ TTC Timer Register Low

\ CPU
61 constant CLKPR	\ Clock Prescale Register
3E constant GPIOR0	\ General Purpose IO Register 0
4A constant GPIOR1	\ General Purpose IO Register 1
4B constant GPIOR2	\ General Purpose IO Register 2
55 constant MCUCR	\ MCU Control Register
54 constant MCUSR	\ MCU Status Register
66 constant OSCCAL	\ Oscillator Calibration Value
5B constant RAMPZ	\ RAM Page Z Select Register - Not used.
53 constant SMCR	\ Sleep Mode Control Register
5E constant SPH	\ Stack Pointer High
5D constant SPL	\ Stack Pointer Low
5F constant SREG	\ Status Register
74 constant XMCRA	\ External Memory Control Register A
75 constant XMCRB	\ External Memory Control Register B

\ EEPROM
42 constant EEARH	\ EEPROM Read/Write Access High Byte - Only bit 10..8 are used in AT90CAN64 - Only bit 9..8 are used in AT90CAN32
41 constant EEARL	\ EEPROM Read/Write Access Low Byte
3F constant EECR	\ EEPROM Control Register
40 constant EEDR	\ EEPROM Data Register

\ EXTERNAL_INTERRUPT
69 constant EICRA	\ External Interrupt Control Register A
6A constant EICRB	\ External Interrupt Control Register B
3C constant EIFR	\ External Interrupt Flag Register
3D constant EIMSK	\ External Interrupt Mask Register

\ JTAG
51 constant OCDR	\ On-Chip Debug Related Register in I/O Memory

\ PORTA
21 constant DDRA	\ Port A Data Direction Register
20 constant PINA	\ Port A Input Pins
22 constant PORTA	\ Port A Data Register

\ PORTB
24 constant DDRB	\ Port B Data Direction Register
23 constant PINB	\ Port B Input Pins
25 constant PORTB	\ Port B Data Register

\ PORTC
27 constant DDRC	\ Port C Data Direction Register
26 constant PINC	\ Port C Input Pins
28 constant PORTC	\ Port C Data Register

\ PORTD
2A constant DDRD	\ Port D Data Direction Register
29 constant PIND	\ Port D Input Pins
2B constant PORTD	\ Port D Data Register

\ PORTE
2D constant DDRE	\ Data Direction Register, Port E
2C constant PINE	\ Input Pins, Port E
2E constant PORTE	\ Data Register, Port E

\ PORTF
30 constant DDRF	\ Data Direction Register, Port F
2F constant PINF	\ Input Pins, Port F
31 constant PORTF	\ Data Register, Port F

\ PORTG
33 constant DDRG	\ Data Direction Register, Port G
32 constant PING	\ Input Pins, Port G
34 constant PORTG	\ Data Register, Port G

\ SPI
4C constant SPCR	\ SPI Control Register
4E constant SPDR	\ SPI Data Register
4D constant SPSR	\ SPI Status Register

\ TIMER_COUNTER_0
43 constant GTCCR	\ General Timer/Control Register
47 constant OCR0A	\ Timer/Counter0 Output Compare Register
44 constant TCCR0A	\ Timer/Counter0 Control Register
46 constant TCNT0	\ Timer/Counter0
35 constant TIFR0	\ Timer/Counter0 Interrupt Flag register
6E constant TIMSK0	\ Timer/Counter0 Interrupt Mask Register

\ TIMER_COUNTER_1
87 constant ICR1H	\ Timer/Counter1 Input Capture Register High Byte
86 constant ICR1L	\ Timer/Counter1 Input Capture Register Low Byte
89 constant OCR1AH	\ Timer/Counter1 Output Compare Register High Byte
88 constant OCR1AL	\ Timer/Counter1 Output Compare Register Low Byte
8B constant OCR1BH	\ Timer/Counter1 Output Compare Register High Byte
8A constant OCR1BL	\ Timer/Counter1 Output Compare Register Low Byte
8D constant OCR1CH	\ Timer/Counter1 Output Compare Register High Byte
8C constant OCR1CL	\ Timer/Counter1 Output Compare Register Low Byte
80 constant TCCR1A	\ Timer/Counter1 Control Register A
81 constant TCCR1B	\ Timer/Counter1 Control Register B
82 constant TCCR1C	\ Timer/Counter 1 Control Register C
85 constant TCNT1H	\ Timer/Counter1 High Byte
84 constant TCNT1L	\ Timer/Counter1 Low Byte
36 constant TIFR1	\ Timer/Counter Interrupt Flag register
6F constant TIMSK1	\ Timer/Counter Interrupt Mask Register

\ TIMER_COUNTER_2
B6 constant ASSR	\ Asynchronous Status Register
B3 constant OCR2A	\ Timer/Counter2 Output Compare Register
B0 constant TCCR2A	\ Timer/Counter2 Control Register
B2 constant TCNT2	\ Timer/Counter2
37 constant TIFR2	\ Timer/Counter Interrupt Flag Register
70 constant TIMSK2	\ Timer/Counter Interrupt Mask register

\ TIMER_COUNTER_3
97 constant ICR3H	\ Timer/Counter3 Input Capture Register High Byte
96 constant ICR3L	\ Timer/Counter3 Input Capture Register Low Byte
99 constant OCR3AH	\ Timer/Counter3 Output Compare Register High Byte
98 constant OCR3AL	\ Timer/Counter3 Output Compare Register Low Byte
9B constant OCR3BH	\ Timer/Counter3 Output Compare Register High Byte
9A constant OCR3BL	\ Timer/Counter3 Output Compare Register Low Byte
9D constant OCR3CH	\ Timer/Counter3 Output Compare Register High Byte
9C constant OCR3CL	\ Timer/Counter3 Output Compare Register Low Byte
90 constant TCCR3A	\ Timer/Counter3 Control Register A
91 constant TCCR3B	\ Timer/Counter3 Control Register B
92 constant TCCR3C	\ Timer/Counter 3 Control Register C
95 constant TCNT3H	\ Timer/Counter3 High Byte
94 constant TCNT3L	\ Timer/Counter3 Low Byte
38 constant TIFR3	\ Timer/Counter Interrupt Flag register
71 constant TIMSK3	\ Timer/Counter Interrupt Mask Register

\ TWI
BA constant TWAR	\ TWI (Slave) Address register
B8 constant TWBR	\ TWI Bit Rate register
BC constant TWCR	\ TWI Control Register
BB constant TWDR	\ TWI Data register
B9 constant TWSR	\ TWI Status Register

\ USART0
C5 constant UBRR0H	\ USART Baud Rate Register Hight Byte
C4 constant UBRR0L	\ USART Baud Rate Register Low Byte
C0 constant UCSR0A	\ USART Control and Status Register A
C1 constant UCSR0B	\ USART Control and Status Register B
C2 constant UCSR0C	\ USART Control and Status Register C
C6 constant UDR0	\ USART I/O Data Register

\ USART1
CD constant UBRR1H	\ USART Baud Rate Register Hight Byte
CC constant UBRR1L	\ USART Baud Rate Register Low Byte
C8 constant UCSR1A	\ USART Control and Status Register A
C9 constant UCSR1B	\ USART Control and Status Register B
CA constant UCSR1C	\ USART Control and Status Register C
CE constant UDR1	\ USART I/O Data Register

\ WATCHDOG
60 constant WDTCR	\ Watchdog Timer Control Register

\ Interrupts
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
001C  constant TIMER1_COMPCAddr \ Timer/Counter1 Compare Match C
001E  constant TIMER1_OVFAddr \ Timer/Counter1 Overflow
0020  constant TIMER0_COMPAddr \ Timer/Counter0 Compare Match
0022  constant TIMER0_OVFAddr \ Timer/Counter0 Overflow
0024  constant CANITAddr \ CAN Transfer Complete or Error
0026  constant OVRITAddr \ CAN Timer Overrun
0028  constant SPI_STCAddr \ SPI Serial Transfer Complete
002A  constant USART0_RXAddr \ USART0, Rx Complete
002C  constant USART0_UDREAddr \ USART0 Data Register Empty
002E  constant USART0_TXAddr \ USART0, Tx Complete
0030  constant ANALOG_COMPAddr \ Analog Comparator
0032  constant ADCAddr \ ADC Conversion Complete
0034  constant EE_READYAddr \ EEPROM Ready
0036  constant TIMER3_CAPTAddr \ Timer/Counter3 Capture Event
0038  constant TIMER3_COMPAAddr \ Timer/Counter3 Compare Match A
003A  constant TIMER3_COMPBAddr \ Timer/Counter3 Compare Match B
003C  constant TIMER3_COMPCAddr \ Timer/Counter3 Compare Match C
003E  constant TIMER3_OVFAddr \ Timer/Counter3 Overflow
0040  constant USART1_RXAddr \ USART1, Rx Complete
0042  constant USART1_UDREAddr \ USART1, Data Register Empty
0044  constant USART1_TXAddr \ USART1, Tx Complete
0046  constant TWIAddr \ 2-wire Serial Interface
0048  constant SPM_READYAddr \ Store Program Memory Read
