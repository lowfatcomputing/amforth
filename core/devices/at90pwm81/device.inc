; Partname:  AT90PWM81
; generated automatically, no not edit

.if WANT_PORTB == 1
; ( -- addr ) System Constant
; R( -- )
; Port B Data Register
VE_PORTB:
	.word 0xff05
	.db "PORTB",0
	.word VE_HEAD
	.set VE_HEAD=VE_PORTB
XT_PORTB:
	.word PFA_DOVARIABLE
PFA_PORTB:
	.word 37
; ( -- addr ) System Constant
; R( -- )
; Port B Data Direction Register
VE_DDRB:
	.word 0xff04
	.ascii "DDRB"
	.word VE_HEAD
	.set VE_HEAD=VE_DDRB
XT_DDRB:
	.word PFA_DOVARIABLE
PFA_DDRB:
	.word 36
; ( -- addr ) System Constant
; R( -- )
; Port B Input Pins
VE_PINB:
	.word 0xff04
	.ascii "PINB"
	.word VE_HEAD
	.set VE_HEAD=VE_PINB
XT_PINB:
	.word PFA_DOVARIABLE
PFA_PINB:
	.word 35

.endif
.if WANT_PORTD == 1
; ( -- addr ) System Constant
; R( -- )
; Port D Data Register
VE_PORTD:
	.word 0xff05
	.db "PORTD",0
	.word VE_HEAD
	.set VE_HEAD=VE_PORTD
XT_PORTD:
	.word PFA_DOVARIABLE
PFA_PORTD:
	.word 43
; ( -- addr ) System Constant
; R( -- )
; Port D Data Direction Register
VE_DDRD:
	.word 0xff04
	.ascii "DDRD"
	.word VE_HEAD
	.set VE_HEAD=VE_DDRD
XT_DDRD:
	.word PFA_DOVARIABLE
PFA_DDRD:
	.word 42
; ( -- addr ) System Constant
; R( -- )
; Port D Input Pins
VE_PIND:
	.word 0xff04
	.ascii "PIND"
	.word VE_HEAD
	.set VE_HEAD=VE_PIND
XT_PIND:
	.word PFA_DOVARIABLE
PFA_PIND:
	.word 41

.endif
.if WANT_DA_CONVERTER == 1
; ( -- addr ) System Constant
; R( -- )
; DAC Data Register High Byte
VE_DACH:
	.word 0xff04
	.ascii "DACH"
	.word VE_HEAD
	.set VE_HEAD=VE_DACH
XT_DACH:
	.word PFA_DOVARIABLE
PFA_DACH:
	.word 89
; ( -- addr ) System Constant
; R( -- )
; DAC Data Register Low Byte
VE_DACL:
	.word 0xff04
	.ascii "DACL"
	.word VE_HEAD
	.set VE_HEAD=VE_DACL
XT_DACL:
	.word PFA_DOVARIABLE
PFA_DACL:
	.word 88
; ( -- addr ) System Constant
; R( -- )
; DAC Control Register
VE_DACON:
	.word 0xff05
	.db "DACON",0
	.word VE_HEAD
	.set VE_HEAD=VE_DACON
XT_DACON:
	.word PFA_DOVARIABLE
PFA_DACON:
	.word 118

.endif
.if WANT_PORTE == 1
; ( -- addr ) System Constant
; R( -- )
; Port E Data Register
VE_PORTE:
	.word 0xff05
	.db "PORTE",0
	.word VE_HEAD
	.set VE_HEAD=VE_PORTE
XT_PORTE:
	.word PFA_DOVARIABLE
PFA_PORTE:
	.word 46
; ( -- addr ) System Constant
; R( -- )
; Port E Data Direction Register
VE_DDRE:
	.word 0xff04
	.ascii "DDRE"
	.word VE_HEAD
	.set VE_HEAD=VE_DDRE
XT_DDRE:
	.word PFA_DOVARIABLE
PFA_DDRE:
	.word 45
; ( -- addr ) System Constant
; R( -- )
; Port E Input Pins
VE_PINE:
	.word 0xff04
	.ascii "PINE"
	.word VE_HEAD
	.set VE_HEAD=VE_PINE
XT_PINE:
	.word PFA_DOVARIABLE
PFA_PINE:
	.word 44

.endif
.if WANT_SPI == 1
; ( -- addr ) System Constant
; R( -- )
; SPI Control Register
VE_SPCR:
	.word 0xff04
	.ascii "SPCR"
	.word VE_HEAD
	.set VE_HEAD=VE_SPCR
XT_SPCR:
	.word PFA_DOVARIABLE
PFA_SPCR:
	.word 55
; ( -- addr ) System Constant
; R( -- )
; SPI Status Register
VE_SPSR:
	.word 0xff04
	.ascii "SPSR"
	.word VE_HEAD
	.set VE_HEAD=VE_SPSR
XT_SPSR:
	.word PFA_DOVARIABLE
PFA_SPSR:
	.word 56
; ( -- addr ) System Constant
; R( -- )
; SPI Data Register
VE_SPDR:
	.word 0xff04
	.ascii "SPDR"
	.word VE_HEAD
	.set VE_HEAD=VE_SPDR
XT_SPDR:
	.word PFA_DOVARIABLE
PFA_SPDR:
	.word 86

.endif
.if WANT_WATCHDOG == 1
; ( -- addr ) System Constant
; R( -- )
; Watchdog Timer Control Register
VE_WDTCSR:
	.word 0xff06
	.ascii "WDTCSR"
	.word VE_HEAD
	.set VE_HEAD=VE_WDTCSR
XT_WDTCSR:
	.word PFA_DOVARIABLE
PFA_WDTCSR:
	.word 130

.endif
.if WANT_EXTERNAL_INTERRUPT == 1
; ( -- addr ) System Constant
; R( -- )
; External Interrupt Control Register A
VE_EICRA:
	.word 0xff05
	.db "EICRA",0
	.word VE_HEAD
	.set VE_HEAD=VE_EICRA
XT_EICRA:
	.word PFA_DOVARIABLE
PFA_EICRA:
	.word 137
; ( -- addr ) System Constant
; R( -- )
; External Interrupt Mask Register
VE_EIMSK:
	.word 0xff05
	.db "EIMSK",0
	.word VE_HEAD
	.set VE_HEAD=VE_EIMSK
XT_EIMSK:
	.word PFA_DOVARIABLE
PFA_EIMSK:
	.word 65
; ( -- addr ) System Constant
; R( -- )
; External Interrupt Flag Register
VE_EIFR:
	.word 0xff04
	.ascii "EIFR"
	.word VE_HEAD
	.set VE_HEAD=VE_EIFR
XT_EIFR:
	.word PFA_DOVARIABLE
PFA_EIFR:
	.word 64

.endif
.if WANT_AD_CONVERTER == 1
; ( -- addr ) System Constant
; R( -- )
; The ADC multiplexer Selection Register
VE_ADMUX:
	.word 0xff05
	.db "ADMUX",0
	.word VE_HEAD
	.set VE_HEAD=VE_ADMUX
XT_ADMUX:
	.word PFA_DOVARIABLE
PFA_ADMUX:
	.word 40
; ( -- addr ) System Constant
; R( -- )
; The ADC Control and Status register
VE_ADCSRA:
	.word 0xff06
	.ascii "ADCSRA"
	.word VE_HEAD
	.set VE_HEAD=VE_ADCSRA
XT_ADCSRA:
	.word PFA_DOVARIABLE
PFA_ADCSRA:
	.word 38
; ( -- addr ) System Constant
; R( -- )
; ADC Data Register  Bytes
VE_ADC:
	.word 0xff03
	.db "ADC",0
	.word VE_HEAD
	.set VE_HEAD=VE_ADC
XT_ADC:
	.word PFA_DOVARIABLE
PFA_ADC:
	.word 76
; ( -- addr ) System Constant
; R( -- )
; ADC Control and Status Register B
VE_ADCSRB:
	.word 0xff06
	.ascii "ADCSRB"
	.word VE_HEAD
	.set VE_HEAD=VE_ADCSRB
XT_ADCSRB:
	.word PFA_DOVARIABLE
PFA_ADCSRB:
	.word 39
; ( -- addr ) System Constant
; R( -- )
; Digital Input Disable Register 0
VE_DIDR0:
	.word 0xff05
	.db "DIDR0",0
	.word VE_HEAD
	.set VE_HEAD=VE_DIDR0
XT_DIDR0:
	.word PFA_DOVARIABLE
PFA_DIDR0:
	.word 119
; ( -- addr ) System Constant
; R( -- )
; Digital Input Disable Register 0
VE_DIDR1:
	.word 0xff05
	.db "DIDR1",0
	.word VE_HEAD
	.set VE_HEAD=VE_DIDR1
XT_DIDR1:
	.word PFA_DOVARIABLE
PFA_DIDR1:
	.word 120
; ( -- addr ) System Constant
; R( -- )
; 
VE_AMP0CSR:
	.word 0xff07
	.db "AMP0CSR",0
	.word VE_HEAD
	.set VE_HEAD=VE_AMP0CSR
XT_AMP0CSR:
	.word PFA_DOVARIABLE
PFA_AMP0CSR:
	.word 121

.endif
.if WANT_ANALOG_COMPARATOR == 1
; ( -- addr ) System Constant
; R( -- )
; Analog Comparator3 Control Register
VE_AC3CON:
	.word 0xff06
	.ascii "AC3CON"
	.word VE_HEAD
	.set VE_HEAD=VE_AC3CON
XT_AC3CON:
	.word PFA_DOVARIABLE
PFA_AC3CON:
	.word 127
; ( -- addr ) System Constant
; R( -- )
; Analog Comparator 1 Control Register
VE_AC1CON:
	.word 0xff06
	.ascii "AC1CON"
	.word VE_HEAD
	.set VE_HEAD=VE_AC1CON
XT_AC1CON:
	.word PFA_DOVARIABLE
PFA_AC1CON:
	.word 125
; ( -- addr ) System Constant
; R( -- )
; Analog Comparator 2 Control Register
VE_AC2CON:
	.word 0xff06
	.ascii "AC2CON"
	.word VE_HEAD
	.set VE_HEAD=VE_AC2CON
XT_AC2CON:
	.word PFA_DOVARIABLE
PFA_AC2CON:
	.word 126
; ( -- addr ) System Constant
; R( -- )
; Analog Comparator Status Register
VE_ACSR:
	.word 0xff04
	.ascii "ACSR"
	.word VE_HEAD
	.set VE_HEAD=VE_ACSR
XT_ACSR:
	.word PFA_DOVARIABLE
PFA_ACSR:
	.word 32
; ( -- addr ) System Constant
; R( -- )
; 
VE_AC3ECON:
	.word 0xff07
	.db "AC3ECON",0
	.word VE_HEAD
	.set VE_HEAD=VE_AC3ECON
XT_AC3ECON:
	.word PFA_DOVARIABLE
PFA_AC3ECON:
	.word 124
; ( -- addr ) System Constant
; R( -- )
; 
VE_AC2ECON:
	.word 0xff07
	.db "AC2ECON",0
	.word VE_HEAD
	.set VE_HEAD=VE_AC2ECON
XT_AC2ECON:
	.word PFA_DOVARIABLE
PFA_AC2ECON:
	.word 123
; ( -- addr ) System Constant
; R( -- )
; 
VE_AC1ECON:
	.word 0xff07
	.db "AC1ECON",0
	.word VE_HEAD
	.set VE_HEAD=VE_AC1ECON
XT_AC1ECON:
	.word PFA_DOVARIABLE
PFA_AC1ECON:
	.word 122

.endif
.if WANT_CPU == 1
; ( -- addr ) System Constant
; R( -- )
; Status Register
VE_SREG:
	.word 0xff04
	.ascii "SREG"
	.word VE_HEAD
	.set VE_HEAD=VE_SREG
XT_SREG:
	.word PFA_DOVARIABLE
PFA_SREG:
	.word 95
; ( -- addr ) System Constant
; R( -- )
; Stack Pointer 
VE_SP:
	.word 0xff02
	.ascii "SP"
	.word VE_HEAD
	.set VE_HEAD=VE_SP
XT_SP:
	.word PFA_DOVARIABLE
PFA_SP:
	.word 93
; ( -- addr ) System Constant
; R( -- )
; MCU Control Register
VE_MCUCR:
	.word 0xff05
	.db "MCUCR",0
	.word VE_HEAD
	.set VE_HEAD=VE_MCUCR
XT_MCUCR:
	.word PFA_DOVARIABLE
PFA_MCUCR:
	.word 85
; ( -- addr ) System Constant
; R( -- )
; MCU Status Register
VE_MCUSR:
	.word 0xff05
	.db "MCUSR",0
	.word VE_HEAD
	.set VE_HEAD=VE_MCUSR
XT_MCUSR:
	.word PFA_DOVARIABLE
PFA_MCUSR:
	.word 84
; ( -- addr ) System Constant
; R( -- )
; Oscillator Calibration Value
VE_OSCCAL:
	.word 0xff06
	.ascii "OSCCAL"
	.word VE_HEAD
	.set VE_HEAD=VE_OSCCAL
XT_OSCCAL:
	.word PFA_DOVARIABLE
PFA_OSCCAL:
	.word 136
; ( -- addr ) System Constant
; R( -- )
; 
VE_CLKPR:
	.word 0xff05
	.db "CLKPR",0
	.word VE_HEAD
	.set VE_HEAD=VE_CLKPR
XT_CLKPR:
	.word PFA_DOVARIABLE
PFA_CLKPR:
	.word 131
; ( -- addr ) System Constant
; R( -- )
; Sleep Mode Control Register
VE_SMCR:
	.word 0xff04
	.ascii "SMCR"
	.word VE_HEAD
	.set VE_HEAD=VE_SMCR
XT_SMCR:
	.word PFA_DOVARIABLE
PFA_SMCR:
	.word 83
; ( -- addr ) System Constant
; R( -- )
; General Purpose IO Register 2
VE_GPIOR2:
	.word 0xff06
	.ascii "GPIOR2"
	.word VE_HEAD
	.set VE_HEAD=VE_GPIOR2
XT_GPIOR2:
	.word PFA_DOVARIABLE
PFA_GPIOR2:
	.word 59
; ( -- addr ) System Constant
; R( -- )
; General Purpose IO Register 1
VE_GPIOR1:
	.word 0xff06
	.ascii "GPIOR1"
	.word VE_HEAD
	.set VE_HEAD=VE_GPIOR1
XT_GPIOR1:
	.word PFA_DOVARIABLE
PFA_GPIOR1:
	.word 58
; ( -- addr ) System Constant
; R( -- )
; General Purpose IO Register 0
VE_GPIOR0:
	.word 0xff06
	.ascii "GPIOR0"
	.word VE_HEAD
	.set VE_HEAD=VE_GPIOR0
XT_GPIOR0:
	.word PFA_DOVARIABLE
PFA_GPIOR0:
	.word 57
; ( -- addr ) System Constant
; R( -- )
; PLL Control And Status Register
VE_PLLCSR:
	.word 0xff06
	.ascii "PLLCSR"
	.word VE_HEAD
	.set VE_HEAD=VE_PLLCSR
XT_PLLCSR:
	.word PFA_DOVARIABLE
PFA_PLLCSR:
	.word 135
; ( -- addr ) System Constant
; R( -- )
; Power Reduction Register
VE_PRR:
	.word 0xff03
	.db "PRR",0
	.word VE_HEAD
	.set VE_HEAD=VE_PRR
XT_PRR:
	.word PFA_DOVARIABLE
PFA_PRR:
	.word 134
; ( -- addr ) System Constant
; R( -- )
; 
VE_CLKCSR:
	.word 0xff06
	.ascii "CLKCSR"
	.word VE_HEAD
	.set VE_HEAD=VE_CLKCSR
XT_CLKCSR:
	.word PFA_DOVARIABLE
PFA_CLKCSR:
	.word 132
; ( -- addr ) System Constant
; R( -- )
; 
VE_CLKSELR:
	.word 0xff07
	.db "CLKSELR",0
	.word VE_HEAD
	.set VE_HEAD=VE_CLKSELR
XT_CLKSELR:
	.word PFA_DOVARIABLE
PFA_CLKSELR:
	.word 133
; ( -- addr ) System Constant
; R( -- )
; BandGap Current Calibration Register
VE_BGCCR:
	.word 0xff05
	.db "BGCCR",0
	.word VE_HEAD
	.set VE_HEAD=VE_BGCCR
XT_BGCCR:
	.word PFA_DOVARIABLE
PFA_BGCCR:
	.word 129
; ( -- addr ) System Constant
; R( -- )
; BandGap Resistor Calibration Register
VE_BGCRR:
	.word 0xff05
	.db "BGCRR",0
	.word VE_HEAD
	.set VE_HEAD=VE_BGCRR
XT_BGCRR:
	.word PFA_DOVARIABLE
PFA_BGCRR:
	.word 128

.endif
.if WANT_EEPROM == 1
; ( -- addr ) System Constant
; R( -- )
; EEPROM Read/Write Access  Bytes
VE_EEAR:
	.word 0xff04
	.ascii "EEAR"
	.word VE_HEAD
	.set VE_HEAD=VE_EEAR
XT_EEAR:
	.word PFA_DOVARIABLE
PFA_EEAR:
	.word 62
; ( -- addr ) System Constant
; R( -- )
; EEPROM Data Register
VE_EEDR:
	.word 0xff04
	.ascii "EEDR"
	.word VE_HEAD
	.set VE_HEAD=VE_EEDR
XT_EEDR:
	.word PFA_DOVARIABLE
PFA_EEDR:
	.word 61
; ( -- addr ) System Constant
; R( -- )
; EEPROM Control Register
VE_EECR:
	.word 0xff04
	.ascii "EECR"
	.word VE_HEAD
	.set VE_HEAD=VE_EECR
XT_EECR:
	.word PFA_DOVARIABLE
PFA_EECR:
	.word 60

.endif
.if WANT_PSC0 == 1
; ( -- addr ) System Constant
; R( -- )
; PSC 0 Input Capture Register 
VE_PICR0:
	.word 0xff05
	.db "PICR0",0
	.word VE_HEAD
	.set VE_HEAD=VE_PICR0
XT_PICR0:
	.word PFA_DOVARIABLE
PFA_PICR0:
	.word 104
; ( -- addr ) System Constant
; R( -- )
; PSC 0 Input B Control
VE_PFRC0B:
	.word 0xff06
	.ascii "PFRC0B"
	.word VE_HEAD
	.set VE_HEAD=VE_PFRC0B
XT_PFRC0B:
	.word PFA_DOVARIABLE
PFA_PFRC0B:
	.word 99
; ( -- addr ) System Constant
; R( -- )
; PSC 0 Input A Control
VE_PFRC0A:
	.word 0xff06
	.ascii "PFRC0A"
	.word VE_HEAD
	.set VE_HEAD=VE_PFRC0A
XT_PFRC0A:
	.word PFA_DOVARIABLE
PFA_PFRC0A:
	.word 98
; ( -- addr ) System Constant
; R( -- )
; PSC 0 Control Register
VE_PCTL0:
	.word 0xff05
	.db "PCTL0",0
	.word VE_HEAD
	.set VE_HEAD=VE_PCTL0
XT_PCTL0:
	.word PFA_DOVARIABLE
PFA_PCTL0:
	.word 50
; ( -- addr ) System Constant
; R( -- )
; PSC 0 Configuration Register
VE_PCNF0:
	.word 0xff05
	.db "PCNF0",0
	.word VE_HEAD
	.set VE_HEAD=VE_PCNF0
XT_PCNF0:
	.word PFA_DOVARIABLE
PFA_PCNF0:
	.word 49
; ( -- addr ) System Constant
; R( -- )
; Output Compare RB Register 
VE_OCR0RB:
	.word 0xff06
	.ascii "OCR0RB"
	.word VE_HEAD
	.set VE_HEAD=VE_OCR0RB
XT_OCR0RB:
	.word PFA_DOVARIABLE
PFA_OCR0RB:
	.word 68
; ( -- addr ) System Constant
; R( -- )
; Output Compare SB Register 
VE_OCR0SB:
	.word 0xff06
	.ascii "OCR0SB"
	.word VE_HEAD
	.set VE_HEAD=VE_OCR0SB
XT_OCR0SB:
	.word PFA_DOVARIABLE
PFA_OCR0SB:
	.word 66
; ( -- addr ) System Constant
; R( -- )
; Output Compare RA Register 
VE_OCR0RA:
	.word 0xff06
	.ascii "OCR0RA"
	.word VE_HEAD
	.set VE_HEAD=VE_OCR0RA
XT_OCR0RA:
	.word PFA_DOVARIABLE
PFA_OCR0RA:
	.word 74
; ( -- addr ) System Constant
; R( -- )
; Output Compare SA Register 
VE_OCR0SA:
	.word 0xff06
	.ascii "OCR0SA"
	.word VE_HEAD
	.set VE_HEAD=VE_OCR0SA
XT_OCR0SA:
	.word PFA_DOVARIABLE
PFA_OCR0SA:
	.word 96
; ( -- addr ) System Constant
; R( -- )
; PSC0 Synchro and Output Configuration
VE_PSOC0:
	.word 0xff05
	.db "PSOC0",0
	.word VE_HEAD
	.set VE_HEAD=VE_PSOC0
XT_PSOC0:
	.word PFA_DOVARIABLE
PFA_PSOC0:
	.word 106
; ( -- addr ) System Constant
; R( -- )
; PSC0 Interrupt Mask Register
VE_PIM0:
	.word 0xff04
	.ascii "PIM0"
	.word VE_HEAD
	.set VE_HEAD=VE_PIM0
XT_PIM0:
	.word PFA_DOVARIABLE
PFA_PIM0:
	.word 47
; ( -- addr ) System Constant
; R( -- )
; PSC0 Interrupt Flag Register
VE_PIFR0:
	.word 0xff05
	.db "PIFR0",0
	.word VE_HEAD
	.set VE_HEAD=VE_PIFR0
XT_PIFR0:
	.word PFA_DOVARIABLE
PFA_PIFR0:
	.word 48

.endif
.if WANT_PSC2 == 1
; ( -- addr ) System Constant
; R( -- )
; PSC 2 Input Capture Register High
VE_PICR2H:
	.word 0xff06
	.ascii "PICR2H"
	.word VE_HEAD
	.set VE_HEAD=VE_PICR2H
XT_PICR2H:
	.word PFA_DOVARIABLE
PFA_PICR2H:
	.word 109
; ( -- addr ) System Constant
; R( -- )
; PSC 2 Input Capture Register Low
VE_PICR2L:
	.word 0xff06
	.ascii "PICR2L"
	.word VE_HEAD
	.set VE_HEAD=VE_PICR2L
XT_PICR2L:
	.word PFA_DOVARIABLE
PFA_PICR2L:
	.word 108
; ( -- addr ) System Constant
; R( -- )
; PSC 2 Input B Control
VE_PFRC2B:
	.word 0xff06
	.ascii "PFRC2B"
	.word VE_HEAD
	.set VE_HEAD=VE_PFRC2B
XT_PFRC2B:
	.word PFA_DOVARIABLE
PFA_PFRC2B:
	.word 103
; ( -- addr ) System Constant
; R( -- )
; PSC 2 Input B Control
VE_PFRC2A:
	.word 0xff06
	.ascii "PFRC2A"
	.word VE_HEAD
	.set VE_HEAD=VE_PFRC2A
XT_PFRC2A:
	.word PFA_DOVARIABLE
PFA_PFRC2A:
	.word 102
; ( -- addr ) System Constant
; R( -- )
; PSC 2 Control Register
VE_PCTL2:
	.word 0xff05
	.db "PCTL2",0
	.word VE_HEAD
	.set VE_HEAD=VE_PCTL2
XT_PCTL2:
	.word PFA_DOVARIABLE
PFA_PCTL2:
	.word 54
; ( -- addr ) System Constant
; R( -- )
; PSC 2 Configuration Register
VE_PCNF2:
	.word 0xff05
	.db "PCNF2",0
	.word VE_HEAD
	.set VE_HEAD=VE_PCNF2
XT_PCNF2:
	.word PFA_DOVARIABLE
PFA_PCNF2:
	.word 53
; ( -- addr ) System Constant
; R( -- )
; PSC 2 Enhanced Configuration Register
VE_PCNFE2:
	.word 0xff06
	.ascii "PCNFE2"
	.word VE_HEAD
	.set VE_HEAD=VE_PCNFE2
XT_PCNFE2:
	.word PFA_DOVARIABLE
PFA_PCNFE2:
	.word 112
; ( -- addr ) System Constant
; R( -- )
; Output Compare RB Register 
VE_OCR2RB:
	.word 0xff06
	.ascii "OCR2RB"
	.word VE_HEAD
	.set VE_HEAD=VE_OCR2RB
XT_OCR2RB:
	.word PFA_DOVARIABLE
PFA_OCR2RB:
	.word 72
; ( -- addr ) System Constant
; R( -- )
; Output Compare SB Register 
VE_OCR2SB:
	.word 0xff06
	.ascii "OCR2SB"
	.word VE_HEAD
	.set VE_HEAD=VE_OCR2SB
XT_OCR2SB:
	.word PFA_DOVARIABLE
PFA_OCR2SB:
	.word 70
; ( -- addr ) System Constant
; R( -- )
; Output Compare RA Register 
VE_OCR2RA:
	.word 0xff06
	.ascii "OCR2RA"
	.word VE_HEAD
	.set VE_HEAD=VE_OCR2RA
XT_OCR2RA:
	.word PFA_DOVARIABLE
PFA_OCR2RA:
	.word 78
; ( -- addr ) System Constant
; R( -- )
; Output Compare SA Register 
VE_OCR2SA:
	.word 0xff06
	.ascii "OCR2SA"
	.word VE_HEAD
	.set VE_HEAD=VE_OCR2SA
XT_OCR2SA:
	.word PFA_DOVARIABLE
PFA_OCR2SA:
	.word 100
; ( -- addr ) System Constant
; R( -- )
; PSC 2 Output Matrix
VE_POM2:
	.word 0xff04
	.ascii "POM2"
	.word VE_HEAD
	.set VE_HEAD=VE_POM2
XT_POM2:
	.word PFA_DOVARIABLE
PFA_POM2:
	.word 111
; ( -- addr ) System Constant
; R( -- )
; PSC2 Synchro and Output Configuration
VE_PSOC2:
	.word 0xff05
	.db "PSOC2",0
	.word VE_HEAD
	.set VE_HEAD=VE_PSOC2
XT_PSOC2:
	.word PFA_DOVARIABLE
PFA_PSOC2:
	.word 110
; ( -- addr ) System Constant
; R( -- )
; PSC2 Interrupt Mask Register
VE_PIM2:
	.word 0xff04
	.ascii "PIM2"
	.word VE_HEAD
	.set VE_HEAD=VE_PIM2
XT_PIM2:
	.word PFA_DOVARIABLE
PFA_PIM2:
	.word 51
; ( -- addr ) System Constant
; R( -- )
; PSC2 Interrupt Flag Register
VE_PIFR2:
	.word 0xff05
	.db "PIFR2",0
	.word VE_HEAD
	.set VE_HEAD=VE_PIFR2
XT_PIFR2:
	.word PFA_DOVARIABLE
PFA_PIFR2:
	.word 52
; ( -- addr ) System Constant
; R( -- )
; Analog Synchronization Delay Register
VE_PASDLY2:
	.word 0xff07
	.db "PASDLY2",0
	.word VE_HEAD
	.set VE_HEAD=VE_PASDLY2
XT_PASDLY2:
	.word PFA_DOVARIABLE
PFA_PASDLY2:
	.word 113

.endif
.if WANT_TIMER_COUNTER_1 == 1
; ( -- addr ) System Constant
; R( -- )
; Timer/Counter Interrupt Mask Register
VE_TIMSK1:
	.word 0xff06
	.ascii "TIMSK1"
	.word VE_HEAD
	.set VE_HEAD=VE_TIMSK1
XT_TIMSK1:
	.word PFA_DOVARIABLE
PFA_TIMSK1:
	.word 33
; ( -- addr ) System Constant
; R( -- )
; Timer/Counter Interrupt Flag register
VE_TIFR1:
	.word 0xff05
	.db "TIFR1",0
	.word VE_HEAD
	.set VE_HEAD=VE_TIFR1
XT_TIFR1:
	.word PFA_DOVARIABLE
PFA_TIFR1:
	.word 34
; ( -- addr ) System Constant
; R( -- )
; Timer/Counter1 Control Register B
VE_TCCR1B:
	.word 0xff06
	.ascii "TCCR1B"
	.word VE_HEAD
	.set VE_HEAD=VE_TCCR1B
XT_TCCR1B:
	.word PFA_DOVARIABLE
PFA_TCCR1B:
	.word 138
; ( -- addr ) System Constant
; R( -- )
; Timer/Counter1  Bytes
VE_TCNT1:
	.word 0xff05
	.db "TCNT1",0
	.word VE_HEAD
	.set VE_HEAD=VE_TCNT1
XT_TCNT1:
	.word PFA_DOVARIABLE
PFA_TCNT1:
	.word 90
; ( -- addr ) System Constant
; R( -- )
; Timer/Counter1 Input Capture Register  Bytes
VE_ICR1:
	.word 0xff04
	.ascii "ICR1"
	.word VE_HEAD
	.set VE_HEAD=VE_ICR1
XT_ICR1:
	.word PFA_DOVARIABLE
PFA_ICR1:
	.word 140

.endif
.if WANT_BOOT_LOAD == 1
; ( -- addr ) System Constant
; R( -- )
; Store Program Memory Control Register
VE_SPMCSR:
	.word 0xff06
	.ascii "SPMCSR"
	.word VE_HEAD
	.set VE_HEAD=VE_SPMCSR
XT_SPMCSR:
	.word PFA_DOVARIABLE
PFA_SPMCSR:
	.word 87

.endif
