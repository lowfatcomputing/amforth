\ Partname: ATmega16M1
\ Built using part description XML file version 1
\ generated automatically

hex

\ AD_CONVERTER
79 constant ADCH	\ ADC Data Register High Byte
78 constant ADCL	\ ADC Data Register Low Byte
7A constant ADCSRA	\ The ADC Control and Status register
7B constant ADCSRB	\ ADC Control and Status Register B
7C constant ADMUX	\ The ADC multiplexer Selection Register
75 constant AMP0CSR	\ 
76 constant AMP1CSR	\ 
77 constant AMP2CSR	\ 
7E constant DIDR0	\ Digital Input Disable Register 0
7F constant DIDR1	\ Digital Input Disable Register 0

\ ANALOG_COMPARATOR
94 constant AC0CON	\ Analog Comparator 0 Control Register
95 constant AC1CON	\ Analog Comparator 1 Control Register
96 constant AC2CON	\ Analog Comparator 2 Control Register
97 constant AC3CON	\ Analog Comparator 3 Control Register
50 constant ACSR	\ Analog Comparator Status Register

\ CAN
E2 constant CANBT1	\ CAN Bit Timing Register 1
E3 constant CANBT2	\ CAN Bit Timing Register 2
E4 constant CANBT3	\ CAN Bit Timing Register 3
EF constant CANCDMOB	\ MOb Control and DLC Register
DD constant CANEN1	\ Enable MOb Register 1(empty)
DC constant CANEN2	\ Enable MOb Register 2
D8 constant CANGCON	\ CAN General Control Register
DB constant CANGIE	\ CAN General Interrupt Enable Register
DA constant CANGIT	\ CAN General Interrupt Register Flags
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
DF constant CANIE1	\ Enable Interrupt MOb Register 1 (empty)
DE constant CANIE2	\ Enable Interrupt MOb Register 2
FA constant CANMSG	\ Message Data Register
ED constant CANPAGE	\ Page MOb Register
EB constant CANREC	\ Receive Error Counter Register
E1 constant CANSIT1	\ CAN Status Interrupt MOb Register 1 (empty)
E0 constant CANSIT2	\ CAN Status Interrupt MOb Register 2
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
61 constant CLKPR	\ 
3E constant GPIOR0	\ General Purpose IO Register 0
39 constant GPIOR1	\ General Purpose IO Register 1
3A constant GPIOR2	\ General Purpose IO Register 2
55 constant MCUCR	\ MCU Control Register
54 constant MCUSR	\ MCU Status Register
66 constant OSCCAL	\ Oscillator Calibration Value
49 constant PLLCSR	\ PLL Control And Status Register
64 constant PRR	\ Power Reduction Register
53 constant SMCR	\ Sleep Mode Control Register
5E constant SPH	\ Stack Pointer High
5D constant SPL	\ Stack Pointer Low
57 constant SPMCSR	\ Store Program Memory Control Register
5F constant SREG	\ Status Register

\ DA_CONVERTER
92 constant DACH	\ DAC Data Register High Byte
91 constant DACL	\ DAC Data Register Low Byte
90 constant DACON	\ DAC Control Register

\ EEPROM
42 constant EEARH	\ EEPROM Read/Write Access
41 constant EEARL	\ EEPROM Read/Write Access
3F constant EECR	\ EEPROM Control Register
40 constant EEDR	\ EEPROM Data Register

\ EXTERNAL_INTERRUPT
69 constant EICRA	\ External Interrupt Control Register 
3C constant EIFR	\ External Interrupt Flag Register
3D constant EIMSK	\ External Interrupt Mask Register
68 constant PCICR	\ Pin Change Interrupt Control Register
3B constant PCIFR	\ Pin Change Interrupt Flag Register
6A constant PCMSK0	\ Pin Change Mask Register 0
6B constant PCMSK1	\ Pin Change Mask Register 1
6C constant PCMSK2	\ Pin Change Mask Register 2
6D constant PCMSK3	\ Pin Change Mask Register 3

\ LINUART
CE constant LINBRRH	\ LIN Baud Rate High Register
CD constant LINBRRL	\ LIN Baud Rate Low Register
CC constant LINBTR	\ LIN Bit Timing Register
C8 constant LINCR	\ LIN Control Register
D2 constant LINDAT	\ LIN Data Register
CF constant LINDLR	\ LIN Data Length Register
CA constant LINENIR	\ LIN Enable Interrupt Register
CB constant LINERR	\ LIN Error Register
D0 constant LINIDR	\ LIN Identifier Register
D1 constant LINSEL	\ LIN Data Buffer Selection Register
C9 constant LINSIR	\ LIN Status and Interrupt Register

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
2D constant DDRE	\ Port E Data Direction Register
2C constant PINE	\ Port E Input Pins
2E constant PORTE	\ Port E Data Register

\ PSC
B5 constant PCNF	\ PSC Configuration Register
B7 constant PCTL	\ PSC Control Register
BC constant PIFR	\ PSC Interrupt Flag Register
BB constant PIM	\ PSC Interrupt Mask Register
B8 constant PMIC0	\ PSC Module 0 Input Control Register
B9 constant PMIC1	\ PSC Module 1 Input Control Register
BA constant PMIC2	\ PSC Module 2 Input Control Register
B6 constant POC	\ PSC Output Configuration
A3 constant POCR0RAH	\ PSC Module 0 Output Compare RA Register High
A2 constant POCR0RAL	\ PSC Module 0 Output Compare RA Register Low
A1 constant POCR0SAH	\ PSC Module 0 Output Compare SA Register High
A0 constant POCR0SAL	\ PSC Module 0 Output Compare SA Register Low
A5 constant POCR0SBH	\ PSC Output Compare SB Register High
A4 constant POCR0SBL	\ PSC Module 0 Output Compare SB Register Low
A9 constant POCR1RAH	\ PSC Module 1 Output Compare RA Register High
A8 constant POCR1RAL	\ PSC Module 1 Output Compare RA Register Low
A7 constant POCR1SAH	\ PSC Output Compare SA Register High
A6 constant POCR1SAL	\ PSC Module 1 Output Compare SA Register Low
AB constant POCR1SBH	\ PSC Module 1 Output Compare SB Register High
AA constant POCR1SBL	\ PSC Module 1 Output Compare SB Register Low
AF constant POCR2RAH	\ PSC Module 2 Output Compare RA Register High
AE constant POCR2RAL	\ PSC Module 2 Output Compare RA Register Low
AD constant POCR2SAH	\ PSC Module 2 Output Compare SA Register High
AC constant POCR2SAL	\ PSC Module 2 Output Compare SA Register Low
B1 constant POCR2SBH	\ PSC Module 2 Output Compare SB Register High
B0 constant POCR2SBL	\ PSC Module 2 Output Compare SB Register Low
B3 constant POCR_RBH	\ PSC Output Compare RB Register High
B2 constant POCR_RBL	\ PSC Output Compare RB Register Low
B4 constant PSYNC	\ PSC Synchro Configuration

\ SPI
4C constant SPCR	\ SPI Control Register
4E constant SPDR	\ SPI Data Register
4D constant SPSR	\ SPI Status Register

\ TIMER_COUNTER_0
43 constant GTCCR	\ General Timer/Counter Control Register
47 constant OCR0A	\ Timer/Counter0 Output Compare Register
48 constant OCR0B	\ Timer/Counter0 Output Compare Register
44 constant TCCR0A	\ Timer/Counter  Control Register A
45 constant TCCR0B	\ Timer/Counter Control Register B
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
80 constant TCCR1A	\ Timer/Counter1 Control Register A
81 constant TCCR1B	\ Timer/Counter1 Control Register B
82 constant TCCR1C	\ Timer/Counter1 Control Register C
85 constant TCNT1H	\ Timer/Counter1 High Byte
84 constant TCNT1L	\ Timer/Counter1 Low Byte
36 constant TIFR1	\ Timer/Counter Interrupt Flag register
6F constant TIMSK1	\ Timer/Counter Interrupt Mask Register

\ WATCHDOG
60 constant WDTCSR	\ Watchdog Timer Control Register

\ Interrupts
0002  constant ANACOMP0Addr \ Analog Comparator 0
0004  constant ANACOMP1Addr \ Analog Comparator 1
0006  constant ANACOMP2Addr \ Analog Comparator 2
0008  constant ANACOMP3Addr \ Analog Comparator 3
000A  constant PSC_FAULTAddr \ PSC Fault
000C  constant PSC_ECAddr \ PSC End of Cycle
000E  constant INT0Addr \ External Interrupt Request 0
0010  constant INT1Addr \ External Interrupt Request 1
0012  constant INT2Addr \ External Interrupt Request 2
0014  constant INT3Addr \ External Interrupt Request 3
0016  constant TIMER1_CAPTAddr \ Timer/Counter1 Capture Event
0018  constant TIMER1_COMPAAddr \ Timer/Counter1 Compare Match A
001A  constant TIMER1_COMPBAddr \ Timer/Counter1 Compare Match B
001C  constant TIMER1_OVFAddr \ Timer1/Counter1 Overflow
001E  constant TIMER0_COMPAAddr \ Timer/Counter0 Compare Match A
0020  constant TIMER0_COMPBAddr \ Timer/Counter0 Compare Match B
0022  constant TIMER0_OVFAddr \ Timer/Counter0 Overflow
0024  constant CAN_INTAddr \ CAN MOB, Burst, General Errors
0026  constant CAN_TOVFAddr \ CAN Timer Overflow
0028  constant LIN_TCAddr \ LIN Transfer Complete
002A  constant LIN_ERRAddr \ LIN Error
002C  constant PCINT0Addr \ Pin Change Interrupt Request 0
002E  constant PCINT1Addr \ Pin Change Interrupt Request 1
0030  constant PCINT2Addr \ Pin Change Interrupt Request 2
0032  constant PCINT3Addr \ Pin Change Interrupt Request 3
0034  constant SPI_STCAddr \ SPI Serial Transfer Complete
0036  constant ADCAddr \ ADC Conversion Complete
0038  constant WDTAddr \ Watchdog Time-Out Interrupt
003A  constant EE_READYAddr \ EEPROM Ready
003C  constant SPM_READYAddr \ Store Program Memory Read
