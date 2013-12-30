; Partname:  AT90PWM2
; Built using part description XML file version 168
; generated automatically, no not edit

; ********
.if WANT_AD_CONVERTER == 1
; ********
; ( -- addr ) System Constant
; R( -- )
; ADC Data Register High Byte
VE_ADCH:
	.word 0xff04
	.ascii "ADCH"
	.word VE_HEAD
	.set VE_HEAD=VE_ADCH
XT_ADCH:
	.word PFA_DOVARIABLE
PFA_ADCH:
	.word 0x79
; ( -- addr ) System Constant
; R( -- )
; ADC Data Register Low Byte
VE_ADCL:
	.word 0xff04
	.ascii "ADCL"
	.word VE_HEAD
	.set VE_HEAD=VE_ADCL
XT_ADCL:
	.word PFA_DOVARIABLE
PFA_ADCL:
	.word 0x78
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
	.word 0x7A
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
	.word 0x7B
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
	.word 0x7C
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
	.word 0x76
; ( -- addr ) System Constant
; R( -- )
; 
VE_AMP1CSR:
	.word 0xff07
	.db "AMP1CSR",0
	.word VE_HEAD
	.set VE_HEAD=VE_AMP1CSR
XT_AMP1CSR:
	.word PFA_DOVARIABLE
PFA_AMP1CSR:
	.word 0x77
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
	.word 0x7E
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
	.word 0x7F

.endif

; ********
.if WANT_ANALOG_COMPARATOR == 1
; ********
; ( -- addr ) System Constant
; R( -- )
; Analog Comparator 0 Control Register
VE_AC0CON:
	.word 0xff06
	.ascii "AC0CON"
	.word VE_HEAD
	.set VE_HEAD=VE_AC0CON
XT_AC0CON:
	.word PFA_DOVARIABLE
PFA_AC0CON:
	.word 0xAD
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
	.word 0xAE
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
	.word 0xAF
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
	.word 0x50

.endif

; ********
.if WANT_BOOT_LOAD == 1
; ********
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
	.word 0x57

.endif

; ********
.if WANT_CPU == 1
; ********
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
	.word 0x61
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
	.word 0x3E
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
	.word 0x39
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
	.word 0x3A
; ( -- addr ) System Constant
; R( -- )
; General Purpose IO Register 3
VE_GPIOR3:
	.word 0xff06
	.ascii "GPIOR3"
	.word VE_HEAD
	.set VE_HEAD=VE_GPIOR3
XT_GPIOR3:
	.word PFA_DOVARIABLE
PFA_GPIOR3:
	.word 0x3B
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
	.word 0x55
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
	.word 0x54
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
	.word 0x66
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
	.word 0x49
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
	.word 0x64
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
	.word 0x53
; ( -- addr ) System Constant
; R( -- )
; Stack Pointer High
VE_SPH:
	.word 0xff03
	.db "SPH",0
	.word VE_HEAD
	.set VE_HEAD=VE_SPH
XT_SPH:
	.word PFA_DOVARIABLE
PFA_SPH:
	.word 0x5E
; ( -- addr ) System Constant
; R( -- )
; Stack Pointer Low
VE_SPL:
	.word 0xff03
	.db "SPL",0
	.word VE_HEAD
	.set VE_HEAD=VE_SPL
XT_SPL:
	.word PFA_DOVARIABLE
PFA_SPL:
	.word 0x5D
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
	.word 0x5F

.endif

; ********
.if WANT_DA_CONVERTER == 1
; ********
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
	.word 0xAC
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
	.word 0xAB
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
	.word 0xAA

.endif

; ********
.if WANT_EEPROM == 1
; ********
; ( -- addr ) System Constant
; R( -- )
; EEPROM Read/Write Access High Byte
VE_EEARH:
	.word 0xff05
	.db "EEARH",0
	.word VE_HEAD
	.set VE_HEAD=VE_EEARH
XT_EEARH:
	.word PFA_DOVARIABLE
PFA_EEARH:
	.word 0x42
; ( -- addr ) System Constant
; R( -- )
; EEPROM Read/Write Access Low Byte
VE_EEARL:
	.word 0xff05
	.db "EEARL",0
	.word VE_HEAD
	.set VE_HEAD=VE_EEARL
XT_EEARL:
	.word PFA_DOVARIABLE
PFA_EEARL:
	.word 0x41
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
	.word 0x3F
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
	.word 0x40

.endif

; ********
.if WANT_EUSART == 1
; ********
; ( -- addr ) System Constant
; R( -- )
; EUSART Control and Status Register A
VE_EUCSRA:
	.word 0xff06
	.ascii "EUCSRA"
	.word VE_HEAD
	.set VE_HEAD=VE_EUCSRA
XT_EUCSRA:
	.word PFA_DOVARIABLE
PFA_EUCSRA:
	.word 0xC8
; ( -- addr ) System Constant
; R( -- )
; EUSART Control Register B
VE_EUCSRB:
	.word 0xff06
	.ascii "EUCSRB"
	.word VE_HEAD
	.set VE_HEAD=VE_EUCSRB
XT_EUCSRB:
	.word PFA_DOVARIABLE
PFA_EUCSRB:
	.word 0xC9
; ( -- addr ) System Constant
; R( -- )
; EUSART Status Register C
VE_EUCSRC:
	.word 0xff06
	.ascii "EUCSRC"
	.word VE_HEAD
	.set VE_HEAD=VE_EUCSRC
XT_EUCSRC:
	.word PFA_DOVARIABLE
PFA_EUCSRC:
	.word 0xCA
; ( -- addr ) System Constant
; R( -- )
; EUSART I/O Data Register
VE_EUDR:
	.word 0xff04
	.ascii "EUDR"
	.word VE_HEAD
	.set VE_HEAD=VE_EUDR
XT_EUDR:
	.word PFA_DOVARIABLE
PFA_EUDR:
	.word 0xCE
; ( -- addr ) System Constant
; R( -- )
; Manchester Receiver Baud Rate Register High Byte
VE_MUBRRH:
	.word 0xff06
	.ascii "MUBRRH"
	.word VE_HEAD
	.set VE_HEAD=VE_MUBRRH
XT_MUBRRH:
	.word PFA_DOVARIABLE
PFA_MUBRRH:
	.word 0xCD
; ( -- addr ) System Constant
; R( -- )
; Manchester Receiver Baud Rate Register Low Byte
VE_MUBRRL:
	.word 0xff06
	.ascii "MUBRRL"
	.word VE_HEAD
	.set VE_HEAD=VE_MUBRRL
XT_MUBRRL:
	.word PFA_DOVARIABLE
PFA_MUBRRL:
	.word 0xCC

.endif

; ********
.if WANT_EXTERNAL_INTERRUPT == 1
; ********
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
	.word 0x69
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
	.word 0x3C
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
	.word 0x3D

.endif

; ********
.if WANT_PORTB == 1
; ********
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
	.word 0x24
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
	.word 0x23
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
	.word 0x25

.endif

; ********
.if WANT_PORTD == 1
; ********
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
	.word 0x2A
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
	.word 0x29
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
	.word 0x2B

.endif

; ********
.if WANT_PORTE == 1
; ********
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
	.word 0x2D
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
	.word 0x2C
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
	.word 0x2E

.endif

; ********
.if WANT_PSC0 == 1
; ********
; ( -- addr ) System Constant
; R( -- )
; Output Compare RA Register High
VE_OCR0RAH:
	.word 0xff07
	.db "OCR0RAH",0
	.word VE_HEAD
	.set VE_HEAD=VE_OCR0RAH
XT_OCR0RAH:
	.word PFA_DOVARIABLE
PFA_OCR0RAH:
	.word 0xD5
; ( -- addr ) System Constant
; R( -- )
; Output Compare RA Register Low
VE_OCR0RAL:
	.word 0xff07
	.db "OCR0RAL",0
	.word VE_HEAD
	.set VE_HEAD=VE_OCR0RAL
XT_OCR0RAL:
	.word PFA_DOVARIABLE
PFA_OCR0RAL:
	.word 0xD4
; ( -- addr ) System Constant
; R( -- )
; Output Compare RB Register High
VE_OCR0RBH:
	.word 0xff07
	.db "OCR0RBH",0
	.word VE_HEAD
	.set VE_HEAD=VE_OCR0RBH
XT_OCR0RBH:
	.word PFA_DOVARIABLE
PFA_OCR0RBH:
	.word 0xD9
; ( -- addr ) System Constant
; R( -- )
; Output Compare RB Register Low
VE_OCR0RBL:
	.word 0xff07
	.db "OCR0RBL",0
	.word VE_HEAD
	.set VE_HEAD=VE_OCR0RBL
XT_OCR0RBL:
	.word PFA_DOVARIABLE
PFA_OCR0RBL:
	.word 0xD8
; ( -- addr ) System Constant
; R( -- )
; Output Compare SA Register High
VE_OCR0SAH:
	.word 0xff07
	.db "OCR0SAH",0
	.word VE_HEAD
	.set VE_HEAD=VE_OCR0SAH
XT_OCR0SAH:
	.word PFA_DOVARIABLE
PFA_OCR0SAH:
	.word 0xD3
; ( -- addr ) System Constant
; R( -- )
; Output Compare SA Register Low
VE_OCR0SAL:
	.word 0xff07
	.db "OCR0SAL",0
	.word VE_HEAD
	.set VE_HEAD=VE_OCR0SAL
XT_OCR0SAL:
	.word PFA_DOVARIABLE
PFA_OCR0SAL:
	.word 0xD2
; ( -- addr ) System Constant
; R( -- )
; Output Compare SB Register High
VE_OCR0SBH:
	.word 0xff07
	.db "OCR0SBH",0
	.word VE_HEAD
	.set VE_HEAD=VE_OCR0SBH
XT_OCR0SBH:
	.word PFA_DOVARIABLE
PFA_OCR0SBH:
	.word 0xD7
; ( -- addr ) System Constant
; R( -- )
; Output Compare SB Register Low
VE_OCR0SBL:
	.word 0xff07
	.db "OCR0SBL",0
	.word VE_HEAD
	.set VE_HEAD=VE_OCR0SBL
XT_OCR0SBL:
	.word PFA_DOVARIABLE
PFA_OCR0SBL:
	.word 0xD6
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
	.word 0xDA
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
	.word 0xDB
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
	.word 0xDC
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
	.word 0xDD
; ( -- addr ) System Constant
; R( -- )
; PSC 0 Input Capture Register High
VE_PICR0H:
	.word 0xff06
	.ascii "PICR0H"
	.word VE_HEAD
	.set VE_HEAD=VE_PICR0H
XT_PICR0H:
	.word PFA_DOVARIABLE
PFA_PICR0H:
	.word 0xDF
; ( -- addr ) System Constant
; R( -- )
; PSC 0 Input Capture Register Low
VE_PICR0L:
	.word 0xff06
	.ascii "PICR0L"
	.word VE_HEAD
	.set VE_HEAD=VE_PICR0L
XT_PICR0L:
	.word PFA_DOVARIABLE
PFA_PICR0L:
	.word 0xDE
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
	.word 0xA0
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
	.word 0xA1
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
	.word 0xD0

.endif

; ********
.if WANT_PSC2 == 1
; ********
; ( -- addr ) System Constant
; R( -- )
; Output Compare RA Register High
VE_OCR2RAH:
	.word 0xff07
	.db "OCR2RAH",0
	.word VE_HEAD
	.set VE_HEAD=VE_OCR2RAH
XT_OCR2RAH:
	.word PFA_DOVARIABLE
PFA_OCR2RAH:
	.word 0xF5
; ( -- addr ) System Constant
; R( -- )
; Output Compare RA Register Low
VE_OCR2RAL:
	.word 0xff07
	.db "OCR2RAL",0
	.word VE_HEAD
	.set VE_HEAD=VE_OCR2RAL
XT_OCR2RAL:
	.word PFA_DOVARIABLE
PFA_OCR2RAL:
	.word 0xF4
; ( -- addr ) System Constant
; R( -- )
; Output Compare RB Register High
VE_OCR2RBH:
	.word 0xff07
	.db "OCR2RBH",0
	.word VE_HEAD
	.set VE_HEAD=VE_OCR2RBH
XT_OCR2RBH:
	.word PFA_DOVARIABLE
PFA_OCR2RBH:
	.word 0xF9
; ( -- addr ) System Constant
; R( -- )
; Output Compare RB Register Low
VE_OCR2RBL:
	.word 0xff07
	.db "OCR2RBL",0
	.word VE_HEAD
	.set VE_HEAD=VE_OCR2RBL
XT_OCR2RBL:
	.word PFA_DOVARIABLE
PFA_OCR2RBL:
	.word 0xF8
; ( -- addr ) System Constant
; R( -- )
; Output Compare SA Register High
VE_OCR2SAH:
	.word 0xff07
	.db "OCR2SAH",0
	.word VE_HEAD
	.set VE_HEAD=VE_OCR2SAH
XT_OCR2SAH:
	.word PFA_DOVARIABLE
PFA_OCR2SAH:
	.word 0xF3
; ( -- addr ) System Constant
; R( -- )
; Output Compare SA Register Low
VE_OCR2SAL:
	.word 0xff07
	.db "OCR2SAL",0
	.word VE_HEAD
	.set VE_HEAD=VE_OCR2SAL
XT_OCR2SAL:
	.word PFA_DOVARIABLE
PFA_OCR2SAL:
	.word 0xF2
; ( -- addr ) System Constant
; R( -- )
; Output Compare SB Register High
VE_OCR2SBH:
	.word 0xff07
	.db "OCR2SBH",0
	.word VE_HEAD
	.set VE_HEAD=VE_OCR2SBH
XT_OCR2SBH:
	.word PFA_DOVARIABLE
PFA_OCR2SBH:
	.word 0xF7
; ( -- addr ) System Constant
; R( -- )
; Output Compare SB Register Low
VE_OCR2SBL:
	.word 0xff07
	.db "OCR2SBL",0
	.word VE_HEAD
	.set VE_HEAD=VE_OCR2SBL
XT_OCR2SBL:
	.word PFA_DOVARIABLE
PFA_OCR2SBL:
	.word 0xF6
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
	.word 0xFA
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
	.word 0xFB
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
	.word 0xFC
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
	.word 0xFD
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
	.word 0xFF
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
	.word 0xFE
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
	.word 0xA4
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
	.word 0xA5
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
	.word 0xF1
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
	.word 0xF0

.endif

; ********
.if WANT_SPI == 1
; ********
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
	.word 0x4C
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
	.word 0x4E
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
	.word 0x4D

.endif

; ********
.if WANT_TIMER_COUNTER_0 == 1
; ********
; ( -- addr ) System Constant
; R( -- )
; General Timer/Counter Control Register
VE_GTCCR:
	.word 0xff05
	.db "GTCCR",0
	.word VE_HEAD
	.set VE_HEAD=VE_GTCCR
XT_GTCCR:
	.word PFA_DOVARIABLE
PFA_GTCCR:
	.word 0x43
; ( -- addr ) System Constant
; R( -- )
; Timer/Counter0 Output Compare Register
VE_OCR0A:
	.word 0xff05
	.db "OCR0A",0
	.word VE_HEAD
	.set VE_HEAD=VE_OCR0A
XT_OCR0A:
	.word PFA_DOVARIABLE
PFA_OCR0A:
	.word 0x47
; ( -- addr ) System Constant
; R( -- )
; Timer/Counter0 Output Compare Register
VE_OCR0B:
	.word 0xff05
	.db "OCR0B",0
	.word VE_HEAD
	.set VE_HEAD=VE_OCR0B
XT_OCR0B:
	.word PFA_DOVARIABLE
PFA_OCR0B:
	.word 0x48
; ( -- addr ) System Constant
; R( -- )
; Timer/Counter  Control Register A
VE_TCCR0A:
	.word 0xff06
	.ascii "TCCR0A"
	.word VE_HEAD
	.set VE_HEAD=VE_TCCR0A
XT_TCCR0A:
	.word PFA_DOVARIABLE
PFA_TCCR0A:
	.word 0x44
; ( -- addr ) System Constant
; R( -- )
; Timer/Counter Control Register B
VE_TCCR0B:
	.word 0xff06
	.ascii "TCCR0B"
	.word VE_HEAD
	.set VE_HEAD=VE_TCCR0B
XT_TCCR0B:
	.word PFA_DOVARIABLE
PFA_TCCR0B:
	.word 0x45
; ( -- addr ) System Constant
; R( -- )
; Timer/Counter0
VE_TCNT0:
	.word 0xff05
	.db "TCNT0",0
	.word VE_HEAD
	.set VE_HEAD=VE_TCNT0
XT_TCNT0:
	.word PFA_DOVARIABLE
PFA_TCNT0:
	.word 0x46
; ( -- addr ) System Constant
; R( -- )
; Timer/Counter0 Interrupt Flag register
VE_TIFR0:
	.word 0xff05
	.db "TIFR0",0
	.word VE_HEAD
	.set VE_HEAD=VE_TIFR0
XT_TIFR0:
	.word PFA_DOVARIABLE
PFA_TIFR0:
	.word 0x35
; ( -- addr ) System Constant
; R( -- )
; Timer/Counter0 Interrupt Mask Register
VE_TIMSK0:
	.word 0xff06
	.ascii "TIMSK0"
	.word VE_HEAD
	.set VE_HEAD=VE_TIMSK0
XT_TIMSK0:
	.word PFA_DOVARIABLE
PFA_TIMSK0:
	.word 0x6E

.endif

; ********
.if WANT_TIMER_COUNTER_1 == 1
; ********
; ( -- addr ) System Constant
; R( -- )
; Timer/Counter1 Input Capture Register High Byte
VE_ICR1H:
	.word 0xff05
	.db "ICR1H",0
	.word VE_HEAD
	.set VE_HEAD=VE_ICR1H
XT_ICR1H:
	.word PFA_DOVARIABLE
PFA_ICR1H:
	.word 0x87
; ( -- addr ) System Constant
; R( -- )
; Timer/Counter1 Input Capture Register Low Byte
VE_ICR1L:
	.word 0xff05
	.db "ICR1L",0
	.word VE_HEAD
	.set VE_HEAD=VE_ICR1L
XT_ICR1L:
	.word PFA_DOVARIABLE
PFA_ICR1L:
	.word 0x86
; ( -- addr ) System Constant
; R( -- )
; Timer/Counter1 Output Compare Register High Byte
VE_OCR1AH:
	.word 0xff06
	.ascii "OCR1AH"
	.word VE_HEAD
	.set VE_HEAD=VE_OCR1AH
XT_OCR1AH:
	.word PFA_DOVARIABLE
PFA_OCR1AH:
	.word 0x89
; ( -- addr ) System Constant
; R( -- )
; Timer/Counter1 Output Compare Register Low Byte
VE_OCR1AL:
	.word 0xff06
	.ascii "OCR1AL"
	.word VE_HEAD
	.set VE_HEAD=VE_OCR1AL
XT_OCR1AL:
	.word PFA_DOVARIABLE
PFA_OCR1AL:
	.word 0x88
; ( -- addr ) System Constant
; R( -- )
; Timer/Counter1 Output Compare Register High Byte
VE_OCR1BH:
	.word 0xff06
	.ascii "OCR1BH"
	.word VE_HEAD
	.set VE_HEAD=VE_OCR1BH
XT_OCR1BH:
	.word PFA_DOVARIABLE
PFA_OCR1BH:
	.word 0x8B
; ( -- addr ) System Constant
; R( -- )
; Timer/Counter1 Output Compare Register Low Byte
VE_OCR1BL:
	.word 0xff06
	.ascii "OCR1BL"
	.word VE_HEAD
	.set VE_HEAD=VE_OCR1BL
XT_OCR1BL:
	.word PFA_DOVARIABLE
PFA_OCR1BL:
	.word 0x8A
; ( -- addr ) System Constant
; R( -- )
; Timer/Counter1 Control Register A
VE_TCCR1A:
	.word 0xff06
	.ascii "TCCR1A"
	.word VE_HEAD
	.set VE_HEAD=VE_TCCR1A
XT_TCCR1A:
	.word PFA_DOVARIABLE
PFA_TCCR1A:
	.word 0x80
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
	.word 0x81
; ( -- addr ) System Constant
; R( -- )
; Timer/Counter1 Control Register C
VE_TCCR1C:
	.word 0xff06
	.ascii "TCCR1C"
	.word VE_HEAD
	.set VE_HEAD=VE_TCCR1C
XT_TCCR1C:
	.word PFA_DOVARIABLE
PFA_TCCR1C:
	.word 0x82
; ( -- addr ) System Constant
; R( -- )
; Timer/Counter1 High Byte
VE_TCNT1H:
	.word 0xff06
	.ascii "TCNT1H"
	.word VE_HEAD
	.set VE_HEAD=VE_TCNT1H
XT_TCNT1H:
	.word PFA_DOVARIABLE
PFA_TCNT1H:
	.word 0x85
; ( -- addr ) System Constant
; R( -- )
; Timer/Counter1 Low Byte
VE_TCNT1L:
	.word 0xff06
	.ascii "TCNT1L"
	.word VE_HEAD
	.set VE_HEAD=VE_TCNT1L
XT_TCNT1L:
	.word PFA_DOVARIABLE
PFA_TCNT1L:
	.word 0x84
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
	.word 0x36
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
	.word 0x6F

.endif

; ********
.if WANT_USART == 1
; ********
; ( -- addr ) System Constant
; R( -- )
; USART Baud Rate Register High Byte
VE_UBRRH:
	.word 0xff05
	.db "UBRRH",0
	.word VE_HEAD
	.set VE_HEAD=VE_UBRRH
XT_UBRRH:
	.word PFA_DOVARIABLE
PFA_UBRRH:
	.word 0xC5
; ( -- addr ) System Constant
; R( -- )
; USART Baud Rate Register Low Byte
VE_UBRRL:
	.word 0xff05
	.db "UBRRL",0
	.word VE_HEAD
	.set VE_HEAD=VE_UBRRL
XT_UBRRL:
	.word PFA_DOVARIABLE
PFA_UBRRL:
	.word 0xC4
; ( -- addr ) System Constant
; R( -- )
; USART Control and Status register A
VE_UCSRA:
	.word 0xff05
	.db "UCSRA",0
	.word VE_HEAD
	.set VE_HEAD=VE_UCSRA
XT_UCSRA:
	.word PFA_DOVARIABLE
PFA_UCSRA:
	.word 0xC0
; ( -- addr ) System Constant
; R( -- )
; USART Control an Status register B
VE_UCSRB:
	.word 0xff05
	.db "UCSRB",0
	.word VE_HEAD
	.set VE_HEAD=VE_UCSRB
XT_UCSRB:
	.word PFA_DOVARIABLE
PFA_UCSRB:
	.word 0xC1
; ( -- addr ) System Constant
; R( -- )
; USART Control an Status register C
VE_UCSRC:
	.word 0xff05
	.db "UCSRC",0
	.word VE_HEAD
	.set VE_HEAD=VE_UCSRC
XT_UCSRC:
	.word PFA_DOVARIABLE
PFA_UCSRC:
	.word 0xC2
; ( -- addr ) System Constant
; R( -- )
; USART I/O Data Register
VE_UDR:
	.word 0xff03
	.db "UDR",0
	.word VE_HEAD
	.set VE_HEAD=VE_UDR
XT_UDR:
	.word PFA_DOVARIABLE
PFA_UDR:
	.word 0xC6

.endif

; ********
.if WANT_WATCHDOG == 1
; ********
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
	.word 0x60

.endif
