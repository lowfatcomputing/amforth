\ Partname: AT90USB162
\ Built using part description XML file version 37
\ generated automatically

hex

\ ANALOG_COMPARATOR
50 constant ACSR	\ Analog Comparator Control And Status Register
7F constant DIDR1	\ 

\ BOOT_LOAD
57 constant SPMCSR	\ Store Program Memory Control Register

\ CPU
61 constant CLKPR	\ 
D0 constant CLKSEL0	\ 
D1 constant CLKSEL1	\ 
D2 constant CLKSTA	\ 
51 constant DWDR	\ debugWire communication register
5C constant EIND	\ Extended Indirect Register
3E constant GPIOR0	\ General Purpose IO Register 0
4A constant GPIOR1	\ General Purpose IO Register 1
4B constant GPIOR2	\ General Purpose IO Register 2
55 constant MCUCR	\ MCU Control Register
54 constant MCUSR	\ MCU Status Register
66 constant OSCCAL	\ Oscillator Calibration Value
64 constant PRR0	\ Power Reduction Register0
65 constant PRR1	\ Power Reduction Register1
53 constant SMCR	\ Sleep Mode Control Register
5E constant SPH	\ Stack Pointer High
5D constant SPL	\ Stack Pointer Low
5F constant SREG	\ Status Register

\ EEPROM
42 constant EEARH	\ EEPROM Address Register Low Byte
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

\ PLL
49 constant PLLCSR	\ PLL Status and Control register

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

\ PS2
FA constant PS2CON	\ PS2 Pad Enable register
FB constant UPOE	\ 

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
89 constant OCR1AH	\ Timer/Counter1 Output Compare Register A High Byte
88 constant OCR1AL	\ Timer/Counter1 Output Compare Register A Low Byte
8B constant OCR1BH	\ Timer/Counter1 Output Compare Register B High Byte
8A constant OCR1BL	\ Timer/Counter1 Output Compare Register B Low Byte
8D constant OCR1CH	\ Timer/Counter1 Output Compare Register C High Byte
8C constant OCR1CL	\ Timer/Counter1 Output Compare Register C Low Byte
80 constant TCCR1A	\ Timer/Counter1 Control Register A
81 constant TCCR1B	\ Timer/Counter1 Control Register B
82 constant TCCR1C	\ Timer/Counter 1 Control Register C
85 constant TCNT1H	\ Timer/Counter1 High Byte
84 constant TCNT1L	\ Timer/Counter1 Low Byte
36 constant TIFR1	\ Timer/Counter1 Interrupt Flag register
6F constant TIMSK1	\ Timer/Counter1 Interrupt Mask Register

\ USART1
CD constant UBRR1H	\ USART Baud Rate Register High Byte
CC constant UBRR1L	\ USART Baud Rate Register Low Byte
C8 constant UCSR1A	\ USART Control and Status Register A
C9 constant UCSR1B	\ USART Control and Status Register B
CA constant UCSR1C	\ USART Control and Status Register C
CB constant UCSR1D	\ USART Control and Status Register D
CE constant UDR1	\ USART I/O Data Register

\ USB_DEVICE
63 constant REGCR	\ Regulator Control Register
E3 constant UDADDR	\ 
E0 constant UDCON	\ 
E5 constant UDFNUMH	\ 
E4 constant UDFNUML	\ 
E2 constant UDIEN	\ 
E1 constant UDINT	\ 
E6 constant UDMFN	\ 
F2 constant UEBCLX	\ 
EC constant UECFG0X	\ 
ED constant UECFG1X	\ 
EB constant UECONX	\ 
F1 constant UEDATX	\ 
F0 constant UEIENX	\ 
F4 constant UEINT	\ 
E8 constant UEINTX	\ 
E9 constant UENUM	\ 
EA constant UERST	\ 
EE constant UESTA0X	\ 
EF constant UESTA1X	\ 
D8 constant USBCON	\ USB General Control Register

\ WATCHDOG
62 constant WDTCKD	\ Watchdog Timer Clock Divider
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
016  constant USB_GENAddr \ USB General Interrupt Request
018  constant USB_COMAddr \ USB Endpoint/Pipe Interrupt Communication Reque
01A  constant WDTAddr \ Watchdog Time-out Interrupt
01C  constant TIMER1_CAPTAddr \ Timer/Counter2 Capture Event
01E  constant TIMER1_COMPAAddr \ Timer/Counter2 Compare Match B
20  constant TIMER1_COMPBAddr \ Timer/Counter2 Compare Match B
22  constant TIMER1_COMPCAddr \ Timer/Counter2 Compare Match C
24  constant TIMER1_OVFAddr \ Timer/Counter1 Overflow
026  constant TIMER0_COMPAAddr \ Timer/Counter0 Compare Match A
028  constant TIMER0_COMPBAddr \ Timer/Counter0 Compare Match B
02A  constant TIMER0_OVFAddr \ Timer/Counter0 Overflow
02C  constant SPI_STCAddr \ SPI Serial Transfer Complete
02E  constant USART1_RXAddr \ USART1, Rx Complete
030  constant USART1_UDREAddr \ USART1 Data register Empty
032  constant USART1_TXAddr \ USART1, Tx Complete
034  constant ANALOG_COMPAddr \ Analog Comparator
036  constant EE_READYAddr \ EEPROM Ready
038  constant SPM_READYAddr \ Store Program Memory Read
