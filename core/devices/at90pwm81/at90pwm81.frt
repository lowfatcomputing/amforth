\ Partname: AT90PWM81
\ Built using part description XML file version 1
\ generated automatically

hex

\ AD_CONVERTER
4D constant ADCH	\ ADC Data Register High Byte
4C constant ADCL	\ ADC Data Register Low Byte
26 constant ADCSRA	\ The ADC Control and Status register
27 constant ADCSRB	\ ADC Control and Status Register B
28 constant ADMUX	\ The ADC multiplexer Selection Register
79 constant AMP0CSR	\ 
77 constant DIDR0	\ Digital Input Disable Register 0
78 constant DIDR1	\ Digital Input Disable Register 0

\ ANALOG_COMPARATOR
7D constant AC1CON	\ Analog Comparator 1 Control Register
7A constant AC1ECON	\ 
7E constant AC2CON	\ Analog Comparator 2 Control Register
7B constant AC2ECON	\ 
7F constant AC3CON	\ Analog Comparator3 Control Register
7C constant AC3ECON	\ 
20 constant ACSR	\ Analog Comparator Status Register

\ BOOT_LOAD
57 constant SPMCSR	\ Store Program Memory Control Register

\ CPU
81 constant BGCCR	\ BandGap Current Calibration Register
80 constant BGCRR	\ BandGap Resistor Calibration Register
84 constant CLKCSR	\ 
83 constant CLKPR	\ 
85 constant CLKSELR	\ 
39 constant GPIOR0	\ General Purpose IO Register 0
3A constant GPIOR1	\ General Purpose IO Register 1
3B constant GPIOR2	\ General Purpose IO Register 2
55 constant MCUCR	\ MCU Control Register
54 constant MCUSR	\ MCU Status Register
88 constant OSCCAL	\ Oscillator Calibration Value
87 constant PLLCSR	\ PLL Control And Status Register
86 constant PRR	\ Power Reduction Register
53 constant SMCR	\ Sleep Mode Control Register
5E constant SPH	\ Stack Pointer High
5D constant SPL	\ Stack Pointer Low
5F constant SREG	\ Status Register

\ DA_CONVERTER
59 constant DACH	\ DAC Data Register High Byte
58 constant DACL	\ DAC Data Register Low Byte
76 constant DACON	\ DAC Control Register

\ EEPROM
3F constant EEARH	\ EEPROM Read/Write Access High Byte
3E constant EEARL	\ EEPROM Read/Write Access Low Byte
3C constant EECR	\ EEPROM Control Register
3D constant EEDR	\ EEPROM Data Register

\ EXTERNAL_INTERRUPT
89 constant EICRA	\ External Interrupt Control Register A
40 constant EIFR	\ External Interrupt Flag Register
41 constant EIMSK	\ External Interrupt Mask Register

\ PORTB
24 constant DDRB	\ Port B Data Direction Register
23 constant PINB	\ Port B Input Pins
25 constant PORTB	\ Port B Data Register

\ PORTD
2A constant DDRD	\ Port D Data Direction Register
29 constant PIND	\ Port D Input Pins
2B constant PORTD	\ Port D Data Register

\ PORTE
2D constant DDRE	\ Port E Data Direction Register
2C constant PINE	\ Port E Input Pins
2E constant PORTE	\ Port E Data Register

\ PSC0
4B constant OCR0RAH	\ Output Compare RA Register High
4A constant OCR0RAL	\ Output Compare RA Register Low
45 constant OCR0RBH	\ Output Compare RB Register High
44 constant OCR0RBL	\ Output Compare RB Register Low
61 constant OCR0SAH	\ Output Compare SA Register High
60 constant OCR0SAL	\ Output Compare SA Register Low
43 constant OCR0SBH	\ Output Compare SB Register High
42 constant OCR0SBL	\ Output Compare SB Register Low
31 constant PCNF0	\ PSC 0 Configuration Register
32 constant PCTL0	\ PSC 0 Control Register
62 constant PFRC0A	\ PSC 0 Input A Control
63 constant PFRC0B	\ PSC 0 Input B Control
69 constant PICR0H	\ PSC 0 Input Capture Register High
68 constant PICR0L	\ PSC 0 Input Capture Register Low
30 constant PIFR0	\ PSC0 Interrupt Flag Register
2F constant PIM0	\ PSC0 Interrupt Mask Register
6A constant PSOC0	\ PSC0 Synchro and Output Configuration

\ PSC2
4F constant OCR2RAH	\ Output Compare RA Register High
4E constant OCR2RAL	\ Output Compare RA Register Low
49 constant OCR2RBH	\ Output Compare RB Register High
48 constant OCR2RBL	\ Output Compare RB Register Low
65 constant OCR2SAH	\ Output Compare SA Register High
64 constant OCR2SAL	\ Output Compare SA Register Low
47 constant OCR2SBH	\ Output Compare SB Register High
46 constant OCR2SBL	\ Output Compare SB Register Low
71 constant PASDLY2	\ Analog Synchronization Delay Register
35 constant PCNF2	\ PSC 2 Configuration Register
70 constant PCNFE2	\ PSC 2 Enhanced Configuration Register
36 constant PCTL2	\ PSC 2 Control Register
66 constant PFRC2A	\ PSC 2 Input B Control
67 constant PFRC2B	\ PSC 2 Input B Control
6D constant PICR2H	\ PSC 2 Input Capture Register High
6C constant PICR2L	\ PSC 2 Input Capture Register Low
34 constant PIFR2	\ PSC2 Interrupt Flag Register
33 constant PIM2	\ PSC2 Interrupt Mask Register
6F constant POM2	\ PSC 2 Output Matrix
6E constant PSOC2	\ PSC2 Synchro and Output Configuration

\ SPI
37 constant SPCR	\ SPI Control Register
56 constant SPDR	\ SPI Data Register
38 constant SPSR	\ SPI Status Register

\ TIMER_COUNTER_1
8D constant ICR1H	\ Timer/Counter1 Input Capture Register High Byte
8C constant ICR1L	\ Timer/Counter1 Input Capture Register Low Byte
8A constant TCCR1B	\ Timer/Counter1 Control Register B
5B constant TCNT1H	\ Timer/Counter1 High Byte
5A constant TCNT1L	\ Timer/Counter1 Low Byte
22 constant TIFR1	\ Timer/Counter Interrupt Flag register
21 constant TIMSK1	\ Timer/Counter Interrupt Mask Register

\ WATCHDOG
82 constant WDTCSR	\ Watchdog Timer Control Register

\ Interrupts
0001  constant PSC2_CAPTAddr \ PSC2 Capture Event
0002  constant PSC2_ECAddr \ PSC2 End Cycle
0003  constant PSC2_EECAddr \ PSC2 End Of Enhanced Cycle
0004  constant PSC0_CAPTAddr \ PSC0 Capture Event
0005  constant PSC0_ECAddr \ PSC0 End Cycle
0006  constant PSC0_EECAddr \ PSC0 End Of Enhanced Cycle
0007  constant ANALOG_COMP_1Addr \ Analog Comparator 1
0008  constant ANALOG_COMP_2Addr \ Analog Comparator 2
0009  constant ANALOG_COMP_3Addr \ Analog Comparator 3
000A  constant INT0Addr \ External Interrupt Request 0
000B  constant TIMER1_CAPTAddr \ Timer/Counter1 Capture Event
000C  constant TIMER1_OVFAddr \ Timer/Counter1 Overflow
000D  constant ADCAddr \ ADC Conversion Complete
000E  constant INT1Addr \ External Interrupt Request 1
000F  constant SPI_STCAddr \ SPI Serial Transfer Complet
0010  constant INT2Addr \ External Interrupt Request 2
0011  constant WDTAddr \ Watchdog Timeout Interrupt
0012  constant EE_READYAddr \ EEPROM Ready
0013  constant SPM_READYAddr \ Store Program Memory Read
