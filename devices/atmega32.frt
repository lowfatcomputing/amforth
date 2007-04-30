decimal

\ general mcu control register
95 constant SREG
94 constant SPH
93 constant SPL
85 constant MCUCR
84 constant MCUSR
84 constant MCUCSR
81 constant OSCCAL
80 constant SFIOR \ special function IO register
65 constant WDTCR


\ external interrupts
91 constant GIMSK
91 constant GICR
90 constant GIFR
1 constant    INT0addr \ External Interrupt0 Vector Address
2 constant    INT1addr \ External Interrupt1 Vector Address
3 constant    INT2addr \ External Interrupt2 Vector Address

\ AD subsystem
40 constant ACSR
39 constant ADMUX
38 constant ADCSR
37 constant ADCH
36 constant ADCL
18 constant    ACIaddr  \ Analog Comparator Interrupt Vector Address
16 constant    ADCCaddr \ ADC Interrupt Vector Address

\ timer/counter subsystem
89 constant TIMSK
88 constant TIFR
66 constant ASSR  \ asynchronous status register

\ timer/counter0
92 constant OCR0
83 constant TCCR0
82 constant TCNT0
10 constant    OC0addr  \ Output Compare0 Interrupt Vector Address
11 constant    OVF0addr \ Overflow0 Interrupt Vector Address

\ timer/counter1
79 constant TCCR1A
78 constant TCCR1B
77 constant TCNT1H
76 constant TCNT1L
75 constant OCR1AH
74 constant OCR1AL
73 constant OCR1BH
72 constant OCR1BL
71 constant ICR1H
70 constant ICR1L
6 constant    ICP1addr \ Input Capture1 Interrupt Vector Address
7 constant    OC1Aaddr \ Output Compare1A Interrupt Vector Address
8 constant    OC1Baddr \ Output Compare1B Interrupt Vector Address
9 constant    OVF1addr \ Overflow1 Interrupt Vector Address

\ timer/counter2
69 constant TCCR2
68 constant TCNT2
67 constant OCR2
4 constant    OC2addr  \ Output Compare2 Interrupt Vector Address
5 constant    OVF2addr \ Overflow2 Interrupt Vector Address

\ regular port io
59 constant PORTA
58 constant DDRA
57 constant PINA
56 constant PORTB
55 constant DDRB
54 constant PINB
53 constant PORTC
52 constant DDRC
51 constant PINC
50 constant PORTD
49 constant DDRD
48 constant PIND

\ usart io
64 constant UBRRH
44 constant UDR
43 constant UCSRA
42 constant UCSRB
64 constant UCSRC
41 constant UBRRL
13 constant   URXCaddr \ USART Receive Complete Interrupt Vector Address
14 constant   UDREaddr \ USART Data Register Empty Interrupt Vector Address
15 constant   UTXCaddr \ USART Transmit Complete Interrupt Vector Address

\ eeprom/flash access
87 constant SPMCR
63 constant EEARH
62 constant EEARL
61 constant EEDR
60 constant EECR
17 constant    ERDYaddr \ EEPROM Interrupt Vector Address
20 constant    SPMRaddr \ Store Program Memory Ready Interrupt Vector Address

\ twi
86 constant TWCR
35 constant TWDR
34 constant TWAR
33 constant TWSR
32 constant TWBR
19 constant    TWSIaddr \ Irq. vector address for Two-Wire Interface

\ spi
47 constant SPDR
46 constant SPSR
45 constant SPCR
12  constant    SPIaddr  \ SPI Interrupt Vector Address

