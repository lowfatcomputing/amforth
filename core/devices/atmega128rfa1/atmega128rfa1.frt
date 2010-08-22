\ Partname: ATmega128RFA1
\ Built using part description XML file version 1
\ generated automatically

hex

\ AD_CONVERTER
79 constant ADCH	\ ADC Data Register High Byte
78 constant ADCL	\ ADC Data Register Low Byte
7A constant ADCSRA	\ The ADC Control and Status Register A
7B constant ADCSRB	\ The ADC Control and Status Register B
77 constant ADCSRC	\ The ADC Control and Status Register C
7C constant ADMUX	\ The ADC Multiplexer Selection Register
7E constant DIDR0	\ Digital Input Disable Register 0
7D constant DIDR2	\ Digital Input Disable Register 2

\ ANALOG_COMPARATOR
50 constant ACSR	\ Analog Comparator Control And Status Register
7F constant DIDR1	\ Digital Input Disable Register 1

\ BOOT_LOAD
57 constant SPMCSR	\ Store Program Memory Control Register

\ CPU
61 constant CLKPR	\ Clock Prescale Register
3E constant GPIOR0	\ General Purpose IO Register 0
4A constant GPIOR1	\ General Purpose IO Register 1
4B constant GPIOR2	\ General Purpose I/O Register 2
55 constant MCUCR	\ MCU Control Register
54 constant MCUSR	\ MCU Status Register
66 constant OSCCAL	\ Oscillator Calibration Value
64 constant PRR0	\ Power Reduction Register0
65 constant PRR1	\ Power Reduction Register 1
63 constant PRR2	\ Power Reduction Register 2
5B constant RAMPZ	\ Extended Z-pointer Register for ELPM/SPM
53 constant SMCR	\ Sleep Mode Control Register
5E constant SPH	\ Stack Pointer High
5D constant SPL	\ Stack Pointer Low
5F constant SREG	\ Status Register

\ EEPROM
42 constant EEARH	\ EEPROM Address Register High Byte
41 constant EEARL	\ EEPROM Address Register Low Byte
3F constant EECR	\ EEPROM Control Register
40 constant EEDR	\ EEPROM Data Register

\ EXTERNAL_INTERRUPT
69 constant EICRA	\ External Interrupt Control Register A
6A constant EICRB	\ External Interrupt Control Register B
3C constant EIFR	\ External Interrupt Flag Register
3D constant EIMSK	\ External Interrupt Mask Register
68 constant PCICR	\ Pin Change Interrupt Control Register
3B constant PCIFR	\ Pin Change Interrupt Flag Register
6B constant PCMSK0	\ Pin Change Mask Register 0
6C constant PCMSK1	\ Pin Change Mask Register 1
6D constant PCMSK2	\ Pin Change Mask Register 2

\ FLASH
67 constant BGCR	\ Reference Voltage Calibration Register
75 constant NEMCR	\ Flash Extended-Mode Control-Register

\ JTAG
51 constant OCDR	\ On-Chip Debug Register

\ PORTA
21 constant DDRA	\ Port A Data Direction Register
20 constant PINA	\ Port A Input Pins Address
22 constant PORTA	\ Port A Data Register

\ PORTB
24 constant DDRB	\ Port B Data Direction Register
23 constant PINB	\ Port B Input Pins Address
25 constant PORTB	\ Port B Data Register

\ PORTC
27 constant DDRC	\ Port C Data Direction Register
26 constant PINC	\ Port C Input Pins Address
28 constant PORTC	\ Port C Data Register

\ PORTD
2A constant DDRD	\ Port D Data Direction Register
29 constant PIND	\ Port D Input Pins Address
2B constant PORTD	\ Port D Data Register

\ PORTE
2D constant DDRE	\ Port E Data Direction Register
2C constant PINE	\ Port E Input Pins Address
2E constant PORTE	\ Port E Data Register

\ PORTF
30 constant DDRF	\ Port F Data Direction Register
2F constant PINF	\ Port F Input Pins Address
31 constant PORTF	\ Port F Data Register

\ PORTG
33 constant DDRG	\ Port G Data Direction Register
32 constant PING	\ Port G Input Pins Address
34 constant PORTG	\ Port G Data Register

\ PWRCTRL
136 constant DPDS0	\ Port Driver Strength Register 0
137 constant DPDS1	\ Port Driver Strength Register 1
135 constant DRTRAM0	\ Data Retention Configuration Register of SRAM 0
134 constant DRTRAM1	\ Data Retention Configuration Register of SRAM 1
133 constant DRTRAM2	\ Data Retention Configuration Register of SRAM 2
132 constant DRTRAM3	\ Data Retention Configuration Register of SRAM 3
12F constant LLCR	\ Low Leakage Voltage Regulator Control Register
131 constant LLDRH	\ Low Leakage Voltage Regulator Data Register (High-Byte)
130 constant LLDRL	\ Low Leakage Voltage Regulator Data Register (Low-Byte)
139 constant TRXPR	\ Transceiver Pin Register

\ SPI
4C constant SPCR	\ SPI Control Register
4E constant SPDR	\ SPI Data Register
4D constant SPSR	\ SPI Status Register

\ SYMCNT
E8 constant SCBTSRHH	\ Symbol Counter Beacon Timestamp Register HH-Byte
E7 constant SCBTSRHL	\ Symbol Counter Beacon Timestamp Register HL-Byte
E6 constant SCBTSRLH	\ Symbol Counter Beacon Timestamp Register LH-Byte
E5 constant SCBTSRLL	\ Symbol Counter Beacon Timestamp Register LL-Byte
E4 constant SCCNTHH	\ Symbol Counter Register HH-Byte
E3 constant SCCNTHL	\ Symbol Counter Register HL-Byte
E2 constant SCCNTLH	\ Symbol Counter Register LH-Byte
E1 constant SCCNTLL	\ Symbol Counter Register LL-Byte
DC constant SCCR0	\ Symbol Counter Control Register 0
DD constant SCCR1	\ Symbol Counter Control Register 1
DF constant SCIRQM	\ Symbol Counter Interrupt Mask Register
E0 constant SCIRQS	\ Symbol Counter Interrupt Status Register
F8 constant SCOCR1HH	\ Symbol Counter Output Compare Register 1 HH-Byte
F7 constant SCOCR1HL	\ Symbol Counter Output Compare Register 1 HL-Byte
F6 constant SCOCR1LH	\ Symbol Counter Output Compare Register 1 LH-Byte
F5 constant SCOCR1LL	\ Symbol Counter Output Compare Register 1 LL-Byte
F4 constant SCOCR2HH	\ Symbol Counter Output Compare Register 2 HH-Byte
F3 constant SCOCR2HL	\ Symbol Counter Output Compare Register 2 HL-Byte
F2 constant SCOCR2LH	\ Symbol Counter Output Compare Register 2 LH-Byte
F1 constant SCOCR2LL	\ Symbol Counter Output Compare Register 2 LL-Byte
F0 constant SCOCR3HH	\ Symbol Counter Output Compare Register 3 HH-Byte
EF constant SCOCR3HL	\ Symbol Counter Output Compare Register 3 HL-Byte
EE constant SCOCR3LH	\ Symbol Counter Output Compare Register 3 LH-Byte
ED constant SCOCR3LL	\ Symbol Counter Output Compare Register 3 LL-Byte
DE constant SCSR	\ Symbol Counter Status Register
EC constant SCTSRHH	\ Symbol Counter Frame Timestamp Register HH-Byte
EB constant SCTSRHL	\ Symbol Counter Frame Timestamp Register HL-Byte
EA constant SCTSRLH	\ Symbol Counter Frame Timestamp Register LH-Byte
E9 constant SCTSRLL	\ Symbol Counter Frame Timestamp Register LL-Byte

\ TIMER_COUNTER_0
43 constant GTCCR	\ General Timer/Counter Control Register
47 constant OCR0A	\ Timer/Counter0 Output Compare Register
48 constant OCR0B	\ Timer/Counter0 Output Compare Register B
44 constant TCCR0A	\ Timer/Counter0 Control Register A
45 constant TCCR0B	\ Timer/Counter0 Control Register B
46 constant TCNT0	\ Timer/Counter0 Register
35 constant TIFR0	\ Timer/Counter0 Interrupt Flag Register
6E constant TIMSK0	\ Timer/Counter0 Interrupt Mask Register

\ TIMER_COUNTER_1
87 constant ICR1H	\ Timer/Counter1 Input Capture Register High Byte
86 constant ICR1L	\ Timer/Counter1 Input Capture Register Low Byte
89 constant OCR1AH	\ Timer/Counter1 Output Compare Register A High Byte
88 constant OCR1AL	\ Timer/Counter1 Output Compare Register A Low Byte
8B constant OCR1BH	\ Timer/Counter1 Output Compare Register B High Byte
8A constant OCR1BL	\ Timer/Counter1 Output Compare Register B Low Byte
8D constant OCR1CH	\ Timer/Counter1 Output Compare Register C High Byte
8C constant OCR1CL	\ Timer/Counter1 Output Compare Register C Low Byte
80 constant TCCR1A	\ Timer/Counter1 Control Register A
81 constant TCCR1B	\ Timer/Counter1 Control Register B
82 constant TCCR1C	\ Timer/Counter1 Control Register C
85 constant TCNT1H	\ Timer/Counter1 High Byte
84 constant TCNT1L	\ Timer/Counter1 Low Byte
36 constant TIFR1	\ Timer/Counter1 Interrupt Flag Register
6F constant TIMSK1	\ Timer/Counter1 Interrupt Mask Register

\ TIMER_COUNTER_2
B6 constant ASSR	\ Asynchronous Status Register
B3 constant OCR2A	\ Timer/Counter2 Output Compare Register A
B4 constant OCR2B	\ Timer/Counter2 Output Compare Register B
B0 constant TCCR2A	\ Timer/Counter2 Control Register A
B1 constant TCCR2B	\ Timer/Counter2 Control Register B
B2 constant TCNT2	\ Timer/Counter2
37 constant TIFR2	\ Timer/Counter Interrupt Flag Register
70 constant TIMSK2	\ Timer/Counter Interrupt Mask register

\ TIMER_COUNTER_3
97 constant ICR3H	\ Timer/Counter3 Input Capture Register High Byte
96 constant ICR3L	\ Timer/Counter3 Input Capture Register Low Byte
99 constant OCR3AH	\ Timer/Counter3 Output Compare Register A High Byte
98 constant OCR3AL	\ Timer/Counter3 Output Compare Register A Low Byte
9B constant OCR3BH	\ Timer/Counter3 Output Compare Register B High Byte
9A constant OCR3BL	\ Timer/Counter3 Output Compare Register B Low Byte
9D constant OCR3CH	\ Timer/Counter3 Output Compare Register C High Byte
9C constant OCR3CL	\ Timer/Counter3 Output Compare Register C Low Byte
90 constant TCCR3A	\ Timer/Counter3 Control Register A
91 constant TCCR3B	\ Timer/Counter3 Control Register B
92 constant TCCR3C	\ Timer/Counter3 Control Register C
95 constant TCNT3H	\ Timer/Counter3 High Byte
94 constant TCNT3L	\ Timer/Counter3 Low Byte
38 constant TIFR3	\ Timer/Counter3 Interrupt Flag Register
71 constant TIMSK3	\ Timer/Counter3 Interrupt Mask Register

\ TIMER_COUNTER_4
A7 constant ICR4H	\ Timer/Counter4 Input Capture Register High Byte
A6 constant ICR4L	\ Timer/Counter4 Input Capture Register Low Byte
A9 constant OCR4AH	\ Timer/Counter4 Output Compare Register A High Byte
A8 constant OCR4AL	\ Timer/Counter4 Output Compare Register A Low Byte
AB constant OCR4BH	\ Timer/Counter4 Output Compare Register B High Byte
AA constant OCR4BL	\ Timer/Counter4 Output Compare Register B Low Byte
AD constant OCR4CH	\ Timer/Counter4 Output Compare Register C High Byte
AC constant OCR4CL	\ Timer/Counter4 Output Compare Register C Low Byte
A0 constant TCCR4A	\ Timer/Counter4 Control Register A
A1 constant TCCR4B	\ Timer/Counter4 Control Register B
A2 constant TCCR4C	\ Timer/Counter4 Control Register C
A5 constant TCNT4H	\ Timer/Counter4 High Byte
A4 constant TCNT4L	\ Timer/Counter4 Low Byte
39 constant TIFR4	\ Timer/Counter4 Interrupt Flag Register
72 constant TIMSK4	\ Timer/Counter4 Interrupt Mask Register

\ TIMER_COUNTER_5
127 constant ICR5H	\ Timer/Counter5 Input Capture Register High Byte
126 constant ICR5L	\ Timer/Counter5 Input Capture Register Low Byte
129 constant OCR5AH	\ Timer/Counter5 Output Compare Register A High Byte
128 constant OCR5AL	\ Timer/Counter5 Output Compare Register A Low Byte
12B constant OCR5BH	\ Timer/Counter5 Output Compare Register B High Byte
12A constant OCR5BL	\ Timer/Counter5 Output Compare Register B Low Byte
12D constant OCR5CH	\ Timer/Counter5 Output Compare Register C High Byte
12C constant OCR5CL	\ Timer/Counter5 Output Compare Register C Low Byte
120 constant TCCR5A	\ Timer/Counter5 Control Register A
121 constant TCCR5B	\ Timer/Counter5 Control Register B
122 constant TCCR5C	\ Timer/Counter5 Control Register C
125 constant TCNT5H	\ Timer/Counter5 High Byte
124 constant TCNT5L	\ Timer/Counter5 Low Byte
3A constant TIFR5	\ Timer/Counter5 Interrupt Flag Register
73 constant TIMSK5	\ Timer/Counter5 Interrupt Mask Register

\ TRX24
13C constant AES_CTRL	\ AES Control Register
13F constant AES_KEY	\ AES Encryption and Decryption Key Buffer Register
13E constant AES_STATE	\ AES Plain and Cipher Text Buffer Register
13D constant AES_STATUS	\ AES Status Register
14D constant ANT_DIV	\ Antenna Diversity Control Register
151 constant BATMON	\ Battery Monitor Control and Status Register
149 constant CCA_THRES	\ Transceiver CCA Threshold Setting Register
16F constant CSMA_BE	\ Transceiver CSMA-CA Back-off Exponent Control Register
16D constant CSMA_SEED_0	\ Transceiver CSMA-CA Random Number Generator Seed Register
16E constant CSMA_SEED_1	\ Transceiver Acknowledgment Frame Control Register 2
158 constant FTN_CTRL	\ Transceiver Filter Tuning Control Register
164 constant IEEE_ADDR_0	\ Transceiver MAC IEEE Address Register 0
165 constant IEEE_ADDR_1	\ Transceiver MAC IEEE Address Register 1
166 constant IEEE_ADDR_2	\ Transceiver MAC IEEE Address Register 2
167 constant IEEE_ADDR_3	\ Transceiver MAC IEEE Address Register 3
168 constant IEEE_ADDR_4	\ Transceiver MAC IEEE Address Register 4
169 constant IEEE_ADDR_5	\ Transceiver MAC IEEE Address Register 5
16A constant IEEE_ADDR_6	\ Transceiver MAC IEEE Address Register 6
16B constant IEEE_ADDR_7	\ Transceiver MAC IEEE Address Register 7
14E constant IRQ_MASK	\ Transceiver Interrupt Enable Register
14F constant IRQ_STATUS	\ Transceiver Interrupt Status Register
15E constant MAN_ID_0	\ Device Identification Register (Manufacture ID Low Byte)
15F constant MAN_ID_1	\ Device Identification Register (Manufacture ID High Byte)
162 constant PAN_ID_0	\ Transceiver Personal Area Network ID Register (Low Byte)
163 constant PAN_ID_1	\ Transceiver Personal Area Network ID Register (High Byte)
15C constant PART_NUM	\ Device Identification Register (Part Number)
148 constant PHY_CC_CCA	\ Transceiver Clear Channel Assessment (CCA) Control Register
147 constant PHY_ED_LEVEL	\ Transceiver Energy Detection Level Register
146 constant PHY_RSSI	\ Receiver Signal Strength Indicator Register
145 constant PHY_TX_PWR	\ Transceiver Transmit Power Control Register
15A constant PLL_CF	\ Transceiver Center Frequency Calibration Control Register
15B constant PLL_DCU	\ Transceiver Delay Cell Calibration Control Register
14A constant RX_CTRL	\ Transceiver Receive Control Register
155 constant RX_SYN	\ Transceiver Receiver Sensitivity Control Register
14B constant SFD_VALUE	\ Start of Frame Delimiter Value Register
160 constant SHORT_ADDR_0	\ Transceiver MAC Short Address Register (Low Byte)
161 constant SHORT_ADDR_1	\ Transceiver MAC Short Address Register (High Byte)
1FF constant TRXFBEND	\ End of frame buffer
180 constant TRXFBST	\ Start of frame buffer
143 constant TRX_CTRL_0	\ Reserved
144 constant TRX_CTRL_1	\ Transceiver Control Register 1
14C constant TRX_CTRL_2	\ Transceiver Control Register 2
142 constant TRX_STATE	\ Transceiver State Control Register
141 constant TRX_STATUS	\ Transceiver Status Register
176 constant TST_CTRL_DIGI	\ Transceiver Digital Test Control Register
17B constant TST_RX_LENGTH	\ Transceiver Received Frame Length Register
15D constant VERSION_NUM	\ Device Identification Register (Version Number)
150 constant VREG_CTRL	\ Voltage Regulator Control and Status Register
16C constant XAH_CTRL_0	\ Transceiver Extended Operating Mode Control Register
157 constant XAH_CTRL_1	\ Transceiver Acknowledgment Frame Control Register 1
152 constant XOSC_CTRL	\ Crystal Oscillator Control Register

\ TWI
BD constant TWAMR	\ TWI (Slave) Address Mask Register
BA constant TWAR	\ TWI (Slave) Address Register
B8 constant TWBR	\ TWI Bit Rate Register
BC constant TWCR	\ TWI Control Register
BB constant TWDR	\ TWI Data Register
B9 constant TWSR	\ TWI Status Register

\ USART0
C5 constant UBRR0H	\ USART0 Baud Rate Register High Byte
C4 constant UBRR0L	\ USART0 Baud Rate Register Low Byte
C0 constant UCSR0A	\ USART0 Control and Status Register A
C1 constant UCSR0B	\ USART0 Control and Status Register B
C2 constant UCSR0C	\ USART0 Control and Status Register C
C6 constant UDR0	\ USART0 I/O Data Register

\ USART0_SPI

\ USART1
CD constant UBRR1H	\ USART1 Baud Rate Register High Byte
CC constant UBRR1L	\ USART1 Baud Rate Register Low Byte
C8 constant UCSR1A	\ USART1 Control and Status Register A
C9 constant UCSR1B	\ USART1 Control and Status Register B
CA constant UCSR1C	\ USART1 Control and Status Register C
CE constant UDR1	\ USART1 I/O Data Register

\ USART1_SPI

\ WATCHDOG
60 constant WDTCSR	\ Watchdog Timer Control Register

\ Interrupts
002  constant INT0Addr \ External Interrupt Request 0
004  constant INT1Addr \ External Interrupt Request 1
006  constant INT2Addr \ External Interrupt Request 2
008  constant INT3Addr \ External Interrupt Request 3
00A  constant INT4Addr \ External Interrupt Request 4
00C  constant INT5Addr \ External Interrupt Request 5
00E  constant INT6Addr \ External Interrupt Request 6
010  constant INT7Addr \ External Interrupt Request 7
012  constant PCINT0Addr \ Pin Change Interrupt Request 0
014  constant PCINT1Addr \ Pin Change Interrupt Request 1
016  constant PCINT2Addr \ Pin Change Interrupt Request 2
018  constant WDTAddr \ Watchdog Time-out Interrupt
01A  constant TIMER2_COMPAAddr \ Timer/Counter2 Compare Match A
01C  constant TIMER2_COMPBAddr \ Timer/Counter2 Compare Match B
01E  constant TIMER2_OVFAddr \ Timer/Counter2 Overflow
020  constant TIMER1_CAPTAddr \ Timer/Counter1 Capture Event
022  constant TIMER1_COMPAAddr \ Timer/Counter1 Compare Match A
024  constant TIMER1_COMPBAddr \ Timer/Counter1 Compare Match B
026  constant TIMER1_COMPCAddr \ Timer/Counter1 Compare Match C
028  constant TIMER1_OVFAddr \ Timer/Counter1 Overflow
02A  constant TIMER0_COMPAAddr \ Timer/Counter0 Compare Match A
02C  constant TIMER0_COMPBAddr \ Timer/Counter0 Compare Match B
02E  constant TIMER0_OVFAddr \ Timer/Counter0 Overflow
030  constant SPI_STCAddr \ SPI Serial Transfer Complete
032  constant USART0_RXAddr \ USART0, Rx Complete
034  constant USART0_UDREAddr \ USART0 Data register Empty
036  constant USART0_TXAddr \ USART0, Tx Complete
038  constant ANALOG_COMPAddr \ Analog Comparator
03A  constant ADCAddr \ ADC Conversion Complete
03C  constant EE_READYAddr \ EEPROM Ready
03E  constant TIMER3_CAPTAddr \ Timer/Counter3 Capture Event
040  constant TIMER3_COMPAAddr \ Timer/Counter3 Compare Match A
042  constant TIMER3_COMPBAddr \ Timer/Counter3 Compare Match B
044  constant TIMER3_COMPCAddr \ Timer/Counter3 Compare Match C
046  constant TIMER3_OVFAddr \ Timer/Counter3 Overflow
048  constant USART1_RXAddr \ USART1, Rx Complete
04A  constant USART1_UDREAddr \ USART1 Data register Empty
04C  constant USART1_TXAddr \ USART1, Tx Complete
04E  constant TWIAddr \ 2-wire Serial Interface
050  constant SPM_READYAddr \ Store Program Memory Read
052  constant TIMER4_CAPTAddr \ Timer/Counter4 Capture Event
054  constant TIMER4_COMPAAddr \ Timer/Counter4 Compare Match A
056  constant TIMER4_COMPBAddr \ Timer/Counter4 Compare Match B
058  constant TIMER4_COMPCAddr \ Timer/Counter4 Compare Match C
05A  constant TIMER4_OVFAddr \ Timer/Counter4 Overflow
05C  constant TIMER5_CAPTAddr \ Timer/Counter5 Capture Event
05E  constant TIMER5_COMPAAddr \ Timer/Counter5 Compare Match A
060  constant TIMER5_COMPBAddr \ Timer/Counter5 Compare Match B
062  constant TIMER5_COMPCAddr \ Timer/Counter5 Compare Match C
064  constant TIMER5_OVFAddr \ Timer/Counter5 Overflow
066  constant USART2_RXAddr \ USART2, Rx Complete
068  constant USART2_UDREAddr \ USART2 Data register Empty
06A  constant USART2_TXAddr \ USART2, Tx Complete
06C  constant USART3_RXAddr \ USART3, Rx Complete
06E  constant USART3_UDREAddr \ USART3 Data register Empty
070  constant USART3_TXAddr \ USART3, Tx Complete
072  constant TRX24_PLL_LOCKAddr \ TRX24 - PLL lock interrupt
074  constant TRX24_PLL_UNLOCKAddr \ TRX24 - PLL unlock interrupt
076  constant TRX24_RX_STARTAddr \ TRX24 - Receive start interrupt
078  constant TRX24_RX_ENDAddr \ TRX24 - RX_END interrupt
07A  constant TRX24_CCA_ED_DONEAddr \ TRX24 - CCA/ED done interrupt
07C  constant TRX24_XAH_AMIAddr \ TRX24 - XAH - AMI
07E  constant TRX24_TX_ENDAddr \ TRX24 - TX_END interrupt
080  constant TRX24_AWAKEAddr \ TRX24 AWAKE - tranceiver is reaching state 
082  constant SCNT_CMP1Addr \ Symbol counter - compare match 1 interrupt
084  constant SCNT_CMP2Addr \ Symbol counter - compare match 2 interrupt
086  constant SCNT_CMP3Addr \ Symbol counter - compare match 3 interrupt
088  constant SCNT_OVFLAddr \ Symbol counter - overflow interrupt
08A  constant SCNT_BACKOFFAddr \ Symbol counter - backoff interrupt
08C  constant AES_READYAddr \ AES engine ready interrupt
08E  constant BAT_LOWAddr \ Battery monitor indicates supply voltage below 
