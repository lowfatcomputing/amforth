\ Partname: ATmega406
\ Built using part description XML file version 202
\ generated automatically

hex

\ AD_CONVERTER
79 constant VADCH	\ VADC Data Register High Byte
78 constant VADCL	\ VADC Data Register Low Byte
7A constant VADCSR	\ The VADC Control and Status register
7C constant VADMUX	\ The VADC multiplexer Selection Register

\ BANDGAP
D0 constant BGCCR	\ Bandgap Calibration Register
D1 constant BGCRR	\ Bandgap Calibration of Resistor Ladder

\ BATTERY_PROTECTION
F7 constant BPCR	\ Battery Protection Control Register
F3 constant BPDUV	\ Battery Protection Deep Under Voltage Register
F2 constant BPIR	\ Battery Protection Interrupt Register
F5 constant BPOCD	\ Battery Protection OverCurrent Detection Level Register
F8 constant BPPLR	\ Battery Protection Parameter Lock Register
F4 constant BPSCD	\ Battery Protection Short-Circuit Detection Level Register
F6 constant CBPTR	\ Current Battery Protection Timing Register

\ BOOT_LOAD
57 constant SPMCSR	\ Store Program Memory Control Register

\ CELL_BALANCING
F1 constant CBCR	\ Cell Balancing Control Register

\ COULOMB_COUNTER
E0 constant CADAC0	\ ADC Accumulate Current
E1 constant CADAC1	\ ADC Accumulate Current
E2 constant CADAC2	\ ADC Accumulate Current
E3 constant CADAC3	\ ADC Accumulate Current
E4 constant CADCSRA	\ CC-ADC Control and Status Register A
E5 constant CADCSRB	\ CC-ADC Control and Status Register B
E9 constant CADICH	\ CC-ADC Instantaneous Current
E8 constant CADICL	\ CC-ADC Instantaneous Current
E6 constant CADRCC	\ CC-ADC Regular Charge Current
E7 constant CADRDC	\ CC-ADC Regular Discharge Current

\ CPU
C0 constant CCSR	\ Clock Control and Status Register
7E constant DIDR0	\ Digital Input Disable Register
66 constant FOSCCAL	\ Fast Oscillator Calibration Value
3E constant GPIOR0	\ General Purpose IO Register 0
4A constant GPIOR1	\ General Purpose IO Register 1
4B constant GPIOR2	\ General Purpose IO Register 2
55 constant MCUCR	\ MCU Control Register
54 constant MCUSR	\ MCU Status Register
64 constant PRR0	\ Power Reduction Register 0
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
69 constant EICRA	\ External Interrupt Control Register 
3C constant EIFR	\ External Interrupt Flag Register
3D constant EIMSK	\ External Interrupt Mask Register
68 constant PCICR	\ Pin Change Interrupt Control Register
3B constant PCIFR	\ Pin Change Interrupt Flag Register
6B constant PCMSK0	\ Pin Change Enable Mask Register 0
6C constant PCMSK1	\ Pin Change Enable Mask Register 1

\ FET
F0 constant FCSR	\ 

\ PORTA
21 constant DDRA	\ Port A Data Direction Register
20 constant PINA	\ Port A Input Pins
22 constant PORTA	\ Port A Data Register

\ PORTB
24 constant DDRB	\ Port B Data Direction Register
23 constant PINB	\ Port B Input Pins
25 constant PORTB	\ Port B Data Register

\ PORTC
28 constant PORTC	\ Port C Data Register

\ PORTD
2A constant DDRD	\ Data Direction Register, Port D
29 constant PIND	\ Input Pins, Port D
2B constant PORTD	\ Data Register, Port D

\ TIMER_COUNTER_0
47 constant OCR0A	\ Output compare Register A
48 constant OCR0B	\ Output compare Register B
44 constant TCCR0A	\ Timer/Counter0 Control Register
45 constant TCCR0B	\ Timer/Counter0 Control Register
46 constant TCNT0	\ Timer Counter 0
35 constant TIFR0	\ Timer/Counter Interrupt Flag register
6E constant TIMSK0	\ Timer/Counter Interrupt Mask Register

\ TIMER_COUNTER_1
43 constant GTCCR	\ General Timer/Counter Control Register
89 constant OCR1AH	\ Output Compare Register 1A High byte
88 constant OCR1AL	\ Output Compare Register 1A Low byte
81 constant TCCR1B	\ Timer/Counter1 Control Register B
85 constant TCNT1H	\ Timer Counter 1 High Byte
84 constant TCNT1L	\ Timer Counter 1 Low Byte
36 constant TIFR1	\ Timer/Counter Interrupt Flag register
6F constant TIMSK1	\ Timer/Counter Interrupt Mask Register

\ TWI
BD constant TWAMR	\ TWI (Slave) Address Mask Register
BA constant TWAR	\ TWI (Slave) Address register
BE constant TWBCSR	\ TWI Bus Control and Status Register
B8 constant TWBR	\ TWI Bit Rate register
BC constant TWCR	\ TWI Control Register
BB constant TWDR	\ TWI Data register
B9 constant TWSR	\ TWI Status Register

\ WAKEUP_TIMER
62 constant WUTCSR	\ Wake-up Timer Control Register

\ WATCHDOG
60 constant WDTCSR	\ Watchdog Timer Control Register

\ Interrupts
002  constant BPINTAddr \ Battery Protection Interrupt
004  constant INT0Addr \ External Interrupt Request 0
006  constant INT1Addr \ External Interrupt Request 1
008  constant INT2Addr \ External Interrupt Request 2
00A  constant INT3Addr \ External Interrupt Request 3
00C  constant PCINT0Addr \ Pin Change Interrupt 0
00E  constant PCINT1Addr \ Pin Change Interrupt 1
010  constant WDTAddr \ Watchdog Timeout Interrupt
0012  constant WAKE_UPAddr \ Wakeup timer overflow
014  constant TIM1_COMPAddr \ Timer/Counter 1 Compare Match
016  constant TIM1_OVFAddr \ Timer/Counter 1 Overflow
018  constant TIM0_COMPAAddr \ Timer/Counter0 Compare A Match
01A  constant TIM0_COMPBAddr \ Timer/Counter0 Compare B Match
001C  constant TIM0_OVFAddr \ Timer/Counter0 Overflow
001E  constant TWI_BUS_CDAddr \ Two-Wire Bus Connect/Disconnect
0020  constant TWIAddr \ Two-Wire Serial Interface
0022  constant VADCAddr \ Voltage ADC Conversion Complete
0024  constant CCADC_CONVAddr \ Coulomb Counter ADC Conversion Complete
0026  constant CCADC_REG_CURAddr \ Coloumb Counter ADC Regular Current
0028  constant CCADC_ACCAddr \ Coloumb Counter ADC Accumulator
02A  constant EE_READYAddr \ EEPROM Ready
02C  constant SPM_READYAddr \ Store Program Memory Ready
