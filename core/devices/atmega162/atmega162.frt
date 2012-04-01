\ Partname: ATmega162
\ Built using part description XML file version 257
\ generated automatically

hex

\ ANALOG_COMPARATOR
28 constant ACSR	\ Analog Comparator Control And Status Register

\ BOOT_LOAD
57 constant SPMCR	\ Store Program Memory Control Register

\ CPU
61 constant CLKPR	\ Clock prescale register
56 constant EMCUCR	\ Extended MCU Control Register
55 constant MCUCR	\ MCU Control Register
54 constant MCUCSR	\ MCU Control And Status Register
24 constant OSCCAL	\ Oscillator Calibration Value
50 constant SFIOR	\ Special Function IO Register
5E constant SPH	\ Stack Pointer High
5D constant SPL	\ Stack Pointer Low
5F constant SREG	\ Status Register

\ EEPROM
3F constant EEARH	\ EEPROM Address Register High Byte
3E constant EEARL	\ EEPROM Address Register Low Byte
3C constant EECR	\ EEPROM Control Register
3D constant EEDR	\ EEPROM Data Register

\ EXTERNAL_INTERRUPT
5B constant GICR	\ General Interrupt Control Register
5A constant GIFR	\ General Interrupt Flag Register
6B constant PCMSK0	\ Pin Change Enable Mask 
6C constant PCMSK1	\ Pin Change Mask Register 1

\ JTAG

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
26 constant DDRE	\ Data Direction Register, Port E
25 constant PINE	\ Input Pins, Port E
27 constant PORTE	\ Data Register, Port E

\ SPI
2D constant SPCR	\ SPI Control Register
2F constant SPDR	\ SPI Data Register
2E constant SPSR	\ SPI Status Register

\ TIMER_COUNTER_0
51 constant OCR0	\ Timer/Counter 0 Output Compare Register
53 constant TCCR0	\ Timer/Counter 0 Control Register
52 constant TCNT0	\ Timer/Counter 0 Register 
58 constant TIFR	\ Timer/Counter Interrupt Flag register
59 constant TIMSK	\ Timer/Counter Interrupt Mask Register

\ TIMER_COUNTER_1
45 constant ICR1H	\ Timer/Counter1 Input Capture Register High Byte
44 constant ICR1L	\ Timer/Counter1 Input Capture Register Low Byte
4B constant OCR1AH	\ Timer/Counter1 Output Compare Register A High Byte
4A constant OCR1AL	\ Timer/Counter1 Output Compare Register A Low Byte
49 constant OCR1BH	\ Timer/Counter1 Output Compare Register B High Byte
48 constant OCR1BL	\ Timer/Counter1 Output Compare Register B Low Byte
4F constant TCCR1A	\ Timer/Counter1 Control Register A
4E constant TCCR1B	\ Timer/Counter1 Control Register B
4D constant TCNT1H	\ Timer/Counter1 High Byte
4C constant TCNT1L	\ Timer/Counter1 Low Byte

\ TIMER_COUNTER_2
46 constant ASSR	\ Asynchronous Status Register
42 constant OCR2	\ Output Compare Register
47 constant TCCR2	\ Timer/Counter Control Register
43 constant TCNT2	\ Timer/Counter Register

\ TIMER_COUNTER_3
7C constant ETIFR	\ Extended Timer/Counter Interrupt Flag register
7D constant ETIMSK	\ Extended Timer/Counter Interrupt Mask Register
81 constant ICR3H	\ Timer/Counter3 Input Capture Register High Byte
80 constant ICR3L	\ Timer/Counter3 Input Capture Register Low Byte
87 constant OCR3AH	\ Timer/Counter3 Output Compare Register A High Byte
86 constant OCR3AL	\ Timer/Counter3 Output Compare Register A Low Byte
85 constant OCR3BH	\ Timer/Counte3 Output Compare Register B High Byte
84 constant OCR3BL	\ Timer/Counter3 Output Compare Register Low Byte
8B constant TCCR3A	\ Timer/Counter3 Control Register A
8A constant TCCR3B	\ Timer/Counter3 Control Register B
89 constant TCNT3H	\ Timer/Counter3 High Byte
88 constant TCNT3L	\ Timer/Counter3 Low Byte

\ USART0
40 constant UBRR0H	\ USART Baud Rate Register Hight Byte
29 constant UBRR0L	\ USART Baud Rate Register Low Byte
2B constant UCSR0A	\ USART Control and Status Register A
2A constant UCSR0B	\ USART Control and Status Register B
2C constant UDR0	\ USART I/O Data Register

\ USART1
5C constant UBRR1H	\ USART Baud Rate Register Highg Byte
20 constant UBRR1L	\ USART Baud Rate Register Low Byte
22 constant UCSR1A	\ USART Control and Status Register A
21 constant UCSR1B	\ USART Control and Status Register B
23 constant UDR1	\ USART I/O Data Register

\ WATCHDOG
41 constant WDTCR	\ Watchdog Timer Control Register

\ Interrupts
002  constant INT0Addr \ External Interrupt Request 0
004  constant INT1Addr \ External Interrupt Request 1
006  constant INT2Addr \ External Interrupt Request 2
008  constant PCINT0Addr \ Pin Change Interrupt Request 0
00A  constant PCINT1Addr \ Pin Change Interrupt Request 1
00C  constant TIMER3_CAPTAddr \ Timer/Counter3 Capture Event
00E  constant TIMER3_COMPAAddr \ Timer/Counter3 Compare Match A
010  constant TIMER3_COMPBAddr \ Timer/Counter3 Compare Match B
012  constant TIMER3_OVFAddr \ Timer/Counter3 Overflow
014  constant TIMER2_COMPAddr \ Timer/Counter2 Compare Match
016  constant TIMER2_OVFAddr \ Timer/Counter2 Overflow
018  constant TIMER1_CAPTAddr \ Timer/Counter1 Capture Event
01A  constant TIMER1_COMPAAddr \ Timer/Counter1 Compare Match A
01C  constant TIMER1_COMPBAddr \ Timer/Counter Compare Match B
01E  constant TIMER1_OVFAddr \ Timer/Counter1 Overflow
020  constant TIMER0_COMPAddr \ Timer/Counter0 Compare Match
022  constant TIMER0_OVFAddr \ Timer/Counter0 Overflow
024  constant SPI_STCAddr \ SPI Serial Transfer Complete
026  constant USART0_RXCAddr \ USART0, Rx Complete
028  constant USART1_RXCAddr \ USART1, Rx Complete
02A  constant USART0_UDREAddr \ USART0 Data register Empty
02C  constant USART1_UDREAddr \ USART1, Data register Empty
02E  constant USART0_TXCAddr \ USART0, Tx Complete
030  constant USART1_TXCAddr \ USART1, Tx Complete
032  constant EE_RDYAddr \ EEPROM Ready
034  constant ANA_COMPAddr \ Analog Comparator
036  constant SPM_RDYAddr \ Store Program Memory Read
