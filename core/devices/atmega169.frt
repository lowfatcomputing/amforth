decimal
\ general mcu
95 constant SREG
94 constant SPH
93 constant SPL
102 constant OSCCAL
100 constant PRR
97 constant CLKPR
96 constant WDTCR
96 constant WDTCSR
85 constant MCUCR
84 constant MCUSR
83 constant SMCR
81 constant OCDR
80 constant ACSR
67 constant GTCCR

\ externl interrupts
105 constant EICRA
61 constant EIMSK
60 constant EIFR
107 constant PCMSK0
108 constant PCMSK1
1  constant    INT0addr
2  constant    PCI0addr
3  constant    PCI1addr


\ lcd subsystem

\ 254 constant LCDDR18
\ 253 constant LCDDR17
\ 252 constant LCDDR16
\ 251 constant LCDDR15
\ 249 constant LCDDR13
\ 248 constant LCDDR12
\ 247 constant LCDDR11
\ 246 constant LCDDR10
\ 244 constant LCDDR8
\ 243 constant LCDDR7
\ 242 constant LCDDR6
\ 241 constant LCDDR5
\ 239 constant LCDDR3
\ 238 constant LCDDR2
\ 237 constant LCDDR1
\ 236 constant LCDDR0
231 constant LCDCCR
230 constant LCDFRR
229 constant LCDCRB
228 constant LCDCRA
22 constant    LCDSFaddr

\ usart io
198 constant UDR
197 constant UBRRH
196 constant UBRRL
194 constant UCSRC
193 constant UCSRB
192 constant UCSRA
13 constant    URXC0addr
14 constant    UDRE0addr
15 constant    UTXC0addr

\ timer/counter subsystem
182 constant ASSR
127 constant DIDR1
126 constant DIDR0

\ timer/counter0
110 constant TIMSK0
71 constant OCR0A
70 constant TCNT0
68 constant TCCR0A
62 constant GPIOR0
53 constant TIFR0
10 constant    OC0addr
11 constant    OVF0addr

\ timer/counter1
139 constant OCR1BH
138 constant OCR1BL
137 constant OCR1AH
136 constant OCR1AL
135 constant ICR1H
134 constant ICR1L
133 constant TCNT1H
132 constant TCNT1L
130 constant TCCR1C
129 constant TCCR1B
128 constant TCCR1A
111 constant TIMSK1
74 constant GPIOR1
54 constant TIFR1
6  constant    ICP1addr
7  constant    OC1Aaddr
8  constant    OC1Baddr
9  constant    OVF1addr

\ timer/counter2
179 constant OCR2A
178 constant TCNT2
176 constant TCCR2A
112 constant TIMSK2
75 constant GPIOR2
55 constant TIFR2
4  constant    OC2addr
5  constant    OVF2addr

\ usi
186 constant USIDR
185 constant USISR
184 constant USICR
16 constant    USI_STARTaddr
17 constant    USI_OVFaddr

\ spi
12 constant    SPIaddr

\ ad
124 constant ADMUX
123 constant ADCSRB
122 constant ADCSRA
121 constant ADCH
120 constant ADCL
19 constant    ADCCaddr
18 constant    ACIaddr

\ eeprom
66 constant EEARH
65 constant EEARL
64 constant EEDR
63 constant EECR
20 constant    ERDYaddr

\ flash
87 constant SPMCSR
78 constant SPDR
77 constant SPSR
76 constant SPCR
21 constant    SPMRaddr

\ general port io
52 constant PORTG
51 constant DDRG
50 constant PING
49 constant PORTF
48 constant DDRF
47 constant PINF
46 constant PORTE
45 constant DDRE
44 constant PINE
43 constant PORTD
42 constant DDRD
41 constant PIND
40 constant PORTC
39 constant DDRC
38 constant PINC
37 constant PORTB
36 constant DDRB
35 constant PINB
34 constant PORTA
33 constant DDRA
32 constant PINA

