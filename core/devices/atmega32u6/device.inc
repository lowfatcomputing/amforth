; Partname:  ATmega32U6
; Built using part description XML file version 1
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
; Digital Input Disable Register 1
VE_DIDR0:
	.word 0xff05
	.db "DIDR0",0
	.word VE_HEAD
	.set VE_HEAD=VE_DIDR0
XT_DIDR0:
	.word PFA_DOVARIABLE
PFA_DIDR0:
	.word 0x7E

.endif

; ********
.if WANT_ANALOG_COMPARATOR == 1
; ********
; ( -- addr ) System Constant
; R( -- )
; Analog Comparator Control And Status Register
VE_ACSR:
	.word 0xff04
	.ascii "ACSR"
	.word VE_HEAD
	.set VE_HEAD=VE_ACSR
XT_ACSR:
	.word PFA_DOVARIABLE
PFA_ACSR:
	.word 0x50
; ( -- addr ) System Constant
; R( -- )
; 
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
	.word 0x4A
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
	.word 0x4B
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
; Power Reduction Register0
VE_PRR0:
	.word 0xff04
	.ascii "PRR0"
	.word VE_HEAD
	.set VE_HEAD=VE_PRR0
XT_PRR0:
	.word PFA_DOVARIABLE
PFA_PRR0:
	.word 0x64
; ( -- addr ) System Constant
; R( -- )
; Power Reduction Register1
VE_PRR1:
	.word 0xff04
	.ascii "PRR1"
	.word VE_HEAD
	.set VE_HEAD=VE_PRR1
XT_PRR1:
	.word PFA_DOVARIABLE
PFA_PRR1:
	.word 0x65
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
; ( -- addr ) System Constant
; R( -- )
; External Memory Control Register A
VE_XMCRA:
	.word 0xff05
	.db "XMCRA",0
	.word VE_HEAD
	.set VE_HEAD=VE_XMCRA
XT_XMCRA:
	.word PFA_DOVARIABLE
PFA_XMCRA:
	.word 0x74
; ( -- addr ) System Constant
; R( -- )
; External Memory Control Register B
VE_XMCRB:
	.word 0xff05
	.db "XMCRB",0
	.word VE_HEAD
	.set VE_HEAD=VE_XMCRB
XT_XMCRB:
	.word PFA_DOVARIABLE
PFA_XMCRB:
	.word 0x75

.endif

; ********
.if WANT_EEPROM == 1
; ********
; ( -- addr ) System Constant
; R( -- )
; EEPROM Address Register Low Byte
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
; EEPROM Address Register Low Byte
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
; External Interrupt Control Register B
VE_EICRB:
	.word 0xff05
	.db "EICRB",0
	.word VE_HEAD
	.set VE_HEAD=VE_EICRB
XT_EICRB:
	.word PFA_DOVARIABLE
PFA_EICRB:
	.word 0x6A
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
; ( -- addr ) System Constant
; R( -- )
; Pin Change Interrupt Control Register
VE_PCICR:
	.word 0xff05
	.db "PCICR",0
	.word VE_HEAD
	.set VE_HEAD=VE_PCICR
XT_PCICR:
	.word PFA_DOVARIABLE
PFA_PCICR:
	.word 0x68
; ( -- addr ) System Constant
; R( -- )
; Pin Change Interrupt Flag Register
VE_PCIFR:
	.word 0xff05
	.db "PCIFR",0
	.word VE_HEAD
	.set VE_HEAD=VE_PCIFR
XT_PCIFR:
	.word PFA_DOVARIABLE
PFA_PCIFR:
	.word 0x3B
; ( -- addr ) System Constant
; R( -- )
; Pin Change Mask Register 0
VE_PCMSK0:
	.word 0xff06
	.ascii "PCMSK0"
	.word VE_HEAD
	.set VE_HEAD=VE_PCMSK0
XT_PCMSK0:
	.word PFA_DOVARIABLE
PFA_PCMSK0:
	.word 0x6B

.endif

; ********
.if WANT_JTAG == 1
; ********
; ( -- addr ) System Constant
; R( -- )
; On-Chip Debug Related Register in I/O Memory
VE_OCDR:
	.word 0xff04
	.ascii "OCDR"
	.word VE_HEAD
	.set VE_HEAD=VE_OCDR
XT_OCDR:
	.word PFA_DOVARIABLE
PFA_OCDR:
	.word 0x51

.endif

; ********
.if WANT_PLL == 1
; ********
; ( -- addr ) System Constant
; R( -- )
; PLL Status and Control register
VE_PLLCSR:
	.word 0xff06
	.ascii "PLLCSR"
	.word VE_HEAD
	.set VE_HEAD=VE_PLLCSR
XT_PLLCSR:
	.word PFA_DOVARIABLE
PFA_PLLCSR:
	.word 0x49

.endif

; ********
.if WANT_PORTA == 1
; ********
; ( -- addr ) System Constant
; R( -- )
; Port A Data Direction Register
VE_DDRA:
	.word 0xff04
	.ascii "DDRA"
	.word VE_HEAD
	.set VE_HEAD=VE_DDRA
XT_DDRA:
	.word PFA_DOVARIABLE
PFA_DDRA:
	.word 0x21
; ( -- addr ) System Constant
; R( -- )
; Port A Input Pins
VE_PINA:
	.word 0xff04
	.ascii "PINA"
	.word VE_HEAD
	.set VE_HEAD=VE_PINA
XT_PINA:
	.word PFA_DOVARIABLE
PFA_PINA:
	.word 0x20
; ( -- addr ) System Constant
; R( -- )
; Port A Data Register
VE_PORTA:
	.word 0xff05
	.db "PORTA",0
	.word VE_HEAD
	.set VE_HEAD=VE_PORTA
XT_PORTA:
	.word PFA_DOVARIABLE
PFA_PORTA:
	.word 0x22

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
.if WANT_PORTC == 1
; ********
; ( -- addr ) System Constant
; R( -- )
; Port C Data Direction Register
VE_DDRC:
	.word 0xff04
	.ascii "DDRC"
	.word VE_HEAD
	.set VE_HEAD=VE_DDRC
XT_DDRC:
	.word PFA_DOVARIABLE
PFA_DDRC:
	.word 0x27
; ( -- addr ) System Constant
; R( -- )
; Port C Input Pins
VE_PINC:
	.word 0xff04
	.ascii "PINC"
	.word VE_HEAD
	.set VE_HEAD=VE_PINC
XT_PINC:
	.word PFA_DOVARIABLE
PFA_PINC:
	.word 0x26
; ( -- addr ) System Constant
; R( -- )
; Port C Data Register
VE_PORTC:
	.word 0xff05
	.db "PORTC",0
	.word VE_HEAD
	.set VE_HEAD=VE_PORTC
XT_PORTC:
	.word PFA_DOVARIABLE
PFA_PORTC:
	.word 0x28

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
; Data Direction Register, Port E
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
; Input Pins, Port E
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
; Data Register, Port E
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
.if WANT_PORTF == 1
; ********
; ( -- addr ) System Constant
; R( -- )
; Data Direction Register, Port F
VE_DDRF:
	.word 0xff04
	.ascii "DDRF"
	.word VE_HEAD
	.set VE_HEAD=VE_DDRF
XT_DDRF:
	.word PFA_DOVARIABLE
PFA_DDRF:
	.word 0x30
; ( -- addr ) System Constant
; R( -- )
; Input Pins, Port F
VE_PINF:
	.word 0xff04
	.ascii "PINF"
	.word VE_HEAD
	.set VE_HEAD=VE_PINF
XT_PINF:
	.word PFA_DOVARIABLE
PFA_PINF:
	.word 0x2F
; ( -- addr ) System Constant
; R( -- )
; Data Register, Port F
VE_PORTF:
	.word 0xff05
	.db "PORTF",0
	.word VE_HEAD
	.set VE_HEAD=VE_PORTF
XT_PORTF:
	.word PFA_DOVARIABLE
PFA_PORTF:
	.word 0x31

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
; Timer/Counter1 Output Compare Register A High Byte
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
; Timer/Counter1 Output Compare Register A Low Byte
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
; Timer/Counter1 Output Compare Register B High Byte
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
; Timer/Counter1 Output Compare Register B Low Byte
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
; Timer/Counter1 Output Compare Register C High Byte
VE_OCR1CH:
	.word 0xff06
	.ascii "OCR1CH"
	.word VE_HEAD
	.set VE_HEAD=VE_OCR1CH
XT_OCR1CH:
	.word PFA_DOVARIABLE
PFA_OCR1CH:
	.word 0x8D
; ( -- addr ) System Constant
; R( -- )
; Timer/Counter1 Output Compare Register C Low Byte
VE_OCR1CL:
	.word 0xff06
	.ascii "OCR1CL"
	.word VE_HEAD
	.set VE_HEAD=VE_OCR1CL
XT_OCR1CL:
	.word PFA_DOVARIABLE
PFA_OCR1CL:
	.word 0x8C
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
; Timer/Counter 1 Control Register C
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
; Timer/Counter1 Interrupt Flag register
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
; Timer/Counter1 Interrupt Mask Register
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
.if WANT_TIMER_COUNTER_2 == 1
; ********
; ( -- addr ) System Constant
; R( -- )
; Asynchronous Status Register
VE_ASSR:
	.word 0xff04
	.ascii "ASSR"
	.word VE_HEAD
	.set VE_HEAD=VE_ASSR
XT_ASSR:
	.word PFA_DOVARIABLE
PFA_ASSR:
	.word 0xB6
; ( -- addr ) System Constant
; R( -- )
; Timer/Counter2 Output Compare Register A
VE_OCR2A:
	.word 0xff05
	.db "OCR2A",0
	.word VE_HEAD
	.set VE_HEAD=VE_OCR2A
XT_OCR2A:
	.word PFA_DOVARIABLE
PFA_OCR2A:
	.word 0xB3
; ( -- addr ) System Constant
; R( -- )
; Timer/Counter2 Output Compare Register B
VE_OCR2B:
	.word 0xff05
	.db "OCR2B",0
	.word VE_HEAD
	.set VE_HEAD=VE_OCR2B
XT_OCR2B:
	.word PFA_DOVARIABLE
PFA_OCR2B:
	.word 0xB4
; ( -- addr ) System Constant
; R( -- )
; Timer/Counter2 Control Register A
VE_TCCR2A:
	.word 0xff06
	.ascii "TCCR2A"
	.word VE_HEAD
	.set VE_HEAD=VE_TCCR2A
XT_TCCR2A:
	.word PFA_DOVARIABLE
PFA_TCCR2A:
	.word 0xB0
; ( -- addr ) System Constant
; R( -- )
; Timer/Counter2 Control Register B
VE_TCCR2B:
	.word 0xff06
	.ascii "TCCR2B"
	.word VE_HEAD
	.set VE_HEAD=VE_TCCR2B
XT_TCCR2B:
	.word PFA_DOVARIABLE
PFA_TCCR2B:
	.word 0xB1
; ( -- addr ) System Constant
; R( -- )
; Timer/Counter2
VE_TCNT2:
	.word 0xff05
	.db "TCNT2",0
	.word VE_HEAD
	.set VE_HEAD=VE_TCNT2
XT_TCNT2:
	.word PFA_DOVARIABLE
PFA_TCNT2:
	.word 0xB2
; ( -- addr ) System Constant
; R( -- )
; Timer/Counter Interrupt Flag Register
VE_TIFR2:
	.word 0xff05
	.db "TIFR2",0
	.word VE_HEAD
	.set VE_HEAD=VE_TIFR2
XT_TIFR2:
	.word PFA_DOVARIABLE
PFA_TIFR2:
	.word 0x37
; ( -- addr ) System Constant
; R( -- )
; Timer/Counter Interrupt Mask register
VE_TIMSK2:
	.word 0xff06
	.ascii "TIMSK2"
	.word VE_HEAD
	.set VE_HEAD=VE_TIMSK2
XT_TIMSK2:
	.word PFA_DOVARIABLE
PFA_TIMSK2:
	.word 0x70

.endif

; ********
.if WANT_TIMER_COUNTER_3 == 1
; ********
; ( -- addr ) System Constant
; R( -- )
; Timer/Counter3 Input Capture Register High Byte
VE_ICR3H:
	.word 0xff05
	.db "ICR3H",0
	.word VE_HEAD
	.set VE_HEAD=VE_ICR3H
XT_ICR3H:
	.word PFA_DOVARIABLE
PFA_ICR3H:
	.word 0x97
; ( -- addr ) System Constant
; R( -- )
; Timer/Counter3 Input Capture Register Low Byte
VE_ICR3L:
	.word 0xff05
	.db "ICR3L",0
	.word VE_HEAD
	.set VE_HEAD=VE_ICR3L
XT_ICR3L:
	.word PFA_DOVARIABLE
PFA_ICR3L:
	.word 0x96
; ( -- addr ) System Constant
; R( -- )
; Timer/Counter3 Output Compare Register A High Byte
VE_OCR3AH:
	.word 0xff06
	.ascii "OCR3AH"
	.word VE_HEAD
	.set VE_HEAD=VE_OCR3AH
XT_OCR3AH:
	.word PFA_DOVARIABLE
PFA_OCR3AH:
	.word 0x99
; ( -- addr ) System Constant
; R( -- )
; Timer/Counter3 Output Compare Register A Low Byte
VE_OCR3AL:
	.word 0xff06
	.ascii "OCR3AL"
	.word VE_HEAD
	.set VE_HEAD=VE_OCR3AL
XT_OCR3AL:
	.word PFA_DOVARIABLE
PFA_OCR3AL:
	.word 0x98
; ( -- addr ) System Constant
; R( -- )
; Timer/Counter3 Output Compare Register B High Byte
VE_OCR3BH:
	.word 0xff06
	.ascii "OCR3BH"
	.word VE_HEAD
	.set VE_HEAD=VE_OCR3BH
XT_OCR3BH:
	.word PFA_DOVARIABLE
PFA_OCR3BH:
	.word 0x9B
; ( -- addr ) System Constant
; R( -- )
; Timer/Counter3 Output Compare Register B Low Byte
VE_OCR3BL:
	.word 0xff06
	.ascii "OCR3BL"
	.word VE_HEAD
	.set VE_HEAD=VE_OCR3BL
XT_OCR3BL:
	.word PFA_DOVARIABLE
PFA_OCR3BL:
	.word 0x9A
; ( -- addr ) System Constant
; R( -- )
; Timer/Counter3 Output Compare Register B High Byte
VE_OCR3CH:
	.word 0xff06
	.ascii "OCR3CH"
	.word VE_HEAD
	.set VE_HEAD=VE_OCR3CH
XT_OCR3CH:
	.word PFA_DOVARIABLE
PFA_OCR3CH:
	.word 0x9D
; ( -- addr ) System Constant
; R( -- )
; Timer/Counter3 Output Compare Register B Low Byte
VE_OCR3CL:
	.word 0xff06
	.ascii "OCR3CL"
	.word VE_HEAD
	.set VE_HEAD=VE_OCR3CL
XT_OCR3CL:
	.word PFA_DOVARIABLE
PFA_OCR3CL:
	.word 0x9C
; ( -- addr ) System Constant
; R( -- )
; Timer/Counter3 Control Register A
VE_TCCR3A:
	.word 0xff06
	.ascii "TCCR3A"
	.word VE_HEAD
	.set VE_HEAD=VE_TCCR3A
XT_TCCR3A:
	.word PFA_DOVARIABLE
PFA_TCCR3A:
	.word 0x90
; ( -- addr ) System Constant
; R( -- )
; Timer/Counter3 Control Register B
VE_TCCR3B:
	.word 0xff06
	.ascii "TCCR3B"
	.word VE_HEAD
	.set VE_HEAD=VE_TCCR3B
XT_TCCR3B:
	.word PFA_DOVARIABLE
PFA_TCCR3B:
	.word 0x91
; ( -- addr ) System Constant
; R( -- )
; Timer/Counter 3 Control Register C
VE_TCCR3C:
	.word 0xff06
	.ascii "TCCR3C"
	.word VE_HEAD
	.set VE_HEAD=VE_TCCR3C
XT_TCCR3C:
	.word PFA_DOVARIABLE
PFA_TCCR3C:
	.word 0x92
; ( -- addr ) System Constant
; R( -- )
; Timer/Counter3 High Byte
VE_TCNT3H:
	.word 0xff06
	.ascii "TCNT3H"
	.word VE_HEAD
	.set VE_HEAD=VE_TCNT3H
XT_TCNT3H:
	.word PFA_DOVARIABLE
PFA_TCNT3H:
	.word 0x95
; ( -- addr ) System Constant
; R( -- )
; Timer/Counter3 Low Byte
VE_TCNT3L:
	.word 0xff06
	.ascii "TCNT3L"
	.word VE_HEAD
	.set VE_HEAD=VE_TCNT3L
XT_TCNT3L:
	.word PFA_DOVARIABLE
PFA_TCNT3L:
	.word 0x94
; ( -- addr ) System Constant
; R( -- )
; Timer/Counter3 Interrupt Flag register
VE_TIFR3:
	.word 0xff05
	.db "TIFR3",0
	.word VE_HEAD
	.set VE_HEAD=VE_TIFR3
XT_TIFR3:
	.word PFA_DOVARIABLE
PFA_TIFR3:
	.word 0x38
; ( -- addr ) System Constant
; R( -- )
; Timer/Counter3 Interrupt Mask Register
VE_TIMSK3:
	.word 0xff06
	.ascii "TIMSK3"
	.word VE_HEAD
	.set VE_HEAD=VE_TIMSK3
XT_TIMSK3:
	.word PFA_DOVARIABLE
PFA_TIMSK3:
	.word 0x71

.endif

; ********
.if WANT_TWI == 1
; ********
; ( -- addr ) System Constant
; R( -- )
; TWI (Slave) Address Mask Register
VE_TWAMR:
	.word 0xff05
	.db "TWAMR",0
	.word VE_HEAD
	.set VE_HEAD=VE_TWAMR
XT_TWAMR:
	.word PFA_DOVARIABLE
PFA_TWAMR:
	.word 0xBD
; ( -- addr ) System Constant
; R( -- )
; TWI (Slave) Address register
VE_TWAR:
	.word 0xff04
	.ascii "TWAR"
	.word VE_HEAD
	.set VE_HEAD=VE_TWAR
XT_TWAR:
	.word PFA_DOVARIABLE
PFA_TWAR:
	.word 0xBA
; ( -- addr ) System Constant
; R( -- )
; TWI Bit Rate register
VE_TWBR:
	.word 0xff04
	.ascii "TWBR"
	.word VE_HEAD
	.set VE_HEAD=VE_TWBR
XT_TWBR:
	.word PFA_DOVARIABLE
PFA_TWBR:
	.word 0xB8
; ( -- addr ) System Constant
; R( -- )
; TWI Control Register
VE_TWCR:
	.word 0xff04
	.ascii "TWCR"
	.word VE_HEAD
	.set VE_HEAD=VE_TWCR
XT_TWCR:
	.word PFA_DOVARIABLE
PFA_TWCR:
	.word 0xBC
; ( -- addr ) System Constant
; R( -- )
; TWI Data register
VE_TWDR:
	.word 0xff04
	.ascii "TWDR"
	.word VE_HEAD
	.set VE_HEAD=VE_TWDR
XT_TWDR:
	.word PFA_DOVARIABLE
PFA_TWDR:
	.word 0xBB
; ( -- addr ) System Constant
; R( -- )
; TWI Status Register
VE_TWSR:
	.word 0xff04
	.ascii "TWSR"
	.word VE_HEAD
	.set VE_HEAD=VE_TWSR
XT_TWSR:
	.word PFA_DOVARIABLE
PFA_TWSR:
	.word 0xB9

.endif

; ********
.if WANT_USART1 == 1
; ********
; ( -- addr ) System Constant
; R( -- )
; USART Baud Rate Register High Byte
VE_UBRR1H:
	.word 0xff06
	.ascii "UBRR1H"
	.word VE_HEAD
	.set VE_HEAD=VE_UBRR1H
XT_UBRR1H:
	.word PFA_DOVARIABLE
PFA_UBRR1H:
	.word 0xCD
; ( -- addr ) System Constant
; R( -- )
; USART Baud Rate Register Low Byte
VE_UBRR1L:
	.word 0xff06
	.ascii "UBRR1L"
	.word VE_HEAD
	.set VE_HEAD=VE_UBRR1L
XT_UBRR1L:
	.word PFA_DOVARIABLE
PFA_UBRR1L:
	.word 0xCC
; ( -- addr ) System Constant
; R( -- )
; USART Control and Status Register A
VE_UCSR1A:
	.word 0xff06
	.ascii "UCSR1A"
	.word VE_HEAD
	.set VE_HEAD=VE_UCSR1A
XT_UCSR1A:
	.word PFA_DOVARIABLE
PFA_UCSR1A:
	.word 0xC8
; ( -- addr ) System Constant
; R( -- )
; USART Control and Status Register B
VE_UCSR1B:
	.word 0xff06
	.ascii "UCSR1B"
	.word VE_HEAD
	.set VE_HEAD=VE_UCSR1B
XT_UCSR1B:
	.word PFA_DOVARIABLE
PFA_UCSR1B:
	.word 0xC9
; ( -- addr ) System Constant
; R( -- )
; USART Control and Status Register C
VE_UCSR1C:
	.word 0xff06
	.ascii "UCSR1C"
	.word VE_HEAD
	.set VE_HEAD=VE_UCSR1C
XT_UCSR1C:
	.word PFA_DOVARIABLE
PFA_UCSR1C:
	.word 0xCA
; ( -- addr ) System Constant
; R( -- )
; USART I/O Data Register
VE_UDR1:
	.word 0xff04
	.ascii "UDR1"
	.word VE_HEAD
	.set VE_HEAD=VE_UDR1
XT_UDR1:
	.word PFA_DOVARIABLE
PFA_UDR1:
	.word 0xCE

.endif

; ********
.if WANT_USB_DEVICE == 1
; ********
; ( -- addr ) System Constant
; R( -- )
; 
VE_UDADDR:
	.word 0xff06
	.ascii "UDADDR"
	.word VE_HEAD
	.set VE_HEAD=VE_UDADDR
XT_UDADDR:
	.word PFA_DOVARIABLE
PFA_UDADDR:
	.word 0xE3
; ( -- addr ) System Constant
; R( -- )
; 
VE_UDCON:
	.word 0xff05
	.db "UDCON",0
	.word VE_HEAD
	.set VE_HEAD=VE_UDCON
XT_UDCON:
	.word PFA_DOVARIABLE
PFA_UDCON:
	.word 0xE0
; ( -- addr ) System Constant
; R( -- )
; 
VE_UDFNUMH:
	.word 0xff07
	.db "UDFNUMH",0
	.word VE_HEAD
	.set VE_HEAD=VE_UDFNUMH
XT_UDFNUMH:
	.word PFA_DOVARIABLE
PFA_UDFNUMH:
	.word 0xE5
; ( -- addr ) System Constant
; R( -- )
; 
VE_UDFNUML:
	.word 0xff07
	.db "UDFNUML",0
	.word VE_HEAD
	.set VE_HEAD=VE_UDFNUML
XT_UDFNUML:
	.word PFA_DOVARIABLE
PFA_UDFNUML:
	.word 0xE4
; ( -- addr ) System Constant
; R( -- )
; 
VE_UDIEN:
	.word 0xff05
	.db "UDIEN",0
	.word VE_HEAD
	.set VE_HEAD=VE_UDIEN
XT_UDIEN:
	.word PFA_DOVARIABLE
PFA_UDIEN:
	.word 0xE2
; ( -- addr ) System Constant
; R( -- )
; 
VE_UDINT:
	.word 0xff05
	.db "UDINT",0
	.word VE_HEAD
	.set VE_HEAD=VE_UDINT
XT_UDINT:
	.word PFA_DOVARIABLE
PFA_UDINT:
	.word 0xE1
; ( -- addr ) System Constant
; R( -- )
; 
VE_UDMFN:
	.word 0xff05
	.db "UDMFN",0
	.word VE_HEAD
	.set VE_HEAD=VE_UDMFN
XT_UDMFN:
	.word PFA_DOVARIABLE
PFA_UDMFN:
	.word 0xE6
; ( -- addr ) System Constant
; R( -- )
; 
VE_UEBCHX:
	.word 0xff06
	.ascii "UEBCHX"
	.word VE_HEAD
	.set VE_HEAD=VE_UEBCHX
XT_UEBCHX:
	.word PFA_DOVARIABLE
PFA_UEBCHX:
	.word 0xF3
; ( -- addr ) System Constant
; R( -- )
; 
VE_UEBCLX:
	.word 0xff06
	.ascii "UEBCLX"
	.word VE_HEAD
	.set VE_HEAD=VE_UEBCLX
XT_UEBCLX:
	.word PFA_DOVARIABLE
PFA_UEBCLX:
	.word 0xF2
; ( -- addr ) System Constant
; R( -- )
; 
VE_UECFG0X:
	.word 0xff07
	.db "UECFG0X",0
	.word VE_HEAD
	.set VE_HEAD=VE_UECFG0X
XT_UECFG0X:
	.word PFA_DOVARIABLE
PFA_UECFG0X:
	.word 0xEC
; ( -- addr ) System Constant
; R( -- )
; 
VE_UECFG1X:
	.word 0xff07
	.db "UECFG1X",0
	.word VE_HEAD
	.set VE_HEAD=VE_UECFG1X
XT_UECFG1X:
	.word PFA_DOVARIABLE
PFA_UECFG1X:
	.word 0xED
; ( -- addr ) System Constant
; R( -- )
; 
VE_UECONX:
	.word 0xff06
	.ascii "UECONX"
	.word VE_HEAD
	.set VE_HEAD=VE_UECONX
XT_UECONX:
	.word PFA_DOVARIABLE
PFA_UECONX:
	.word 0xEB
; ( -- addr ) System Constant
; R( -- )
; 
VE_UEDATX:
	.word 0xff06
	.ascii "UEDATX"
	.word VE_HEAD
	.set VE_HEAD=VE_UEDATX
XT_UEDATX:
	.word PFA_DOVARIABLE
PFA_UEDATX:
	.word 0xF1
; ( -- addr ) System Constant
; R( -- )
; 
VE_UEIENX:
	.word 0xff06
	.ascii "UEIENX"
	.word VE_HEAD
	.set VE_HEAD=VE_UEIENX
XT_UEIENX:
	.word PFA_DOVARIABLE
PFA_UEIENX:
	.word 0xF0
; ( -- addr ) System Constant
; R( -- )
; 
VE_UEINT:
	.word 0xff05
	.db "UEINT",0
	.word VE_HEAD
	.set VE_HEAD=VE_UEINT
XT_UEINT:
	.word PFA_DOVARIABLE
PFA_UEINT:
	.word 0xF4
; ( -- addr ) System Constant
; R( -- )
; 
VE_UEINTX:
	.word 0xff06
	.ascii "UEINTX"
	.word VE_HEAD
	.set VE_HEAD=VE_UEINTX
XT_UEINTX:
	.word PFA_DOVARIABLE
PFA_UEINTX:
	.word 0xE8
; ( -- addr ) System Constant
; R( -- )
; 
VE_UENUM:
	.word 0xff05
	.db "UENUM",0
	.word VE_HEAD
	.set VE_HEAD=VE_UENUM
XT_UENUM:
	.word PFA_DOVARIABLE
PFA_UENUM:
	.word 0xE9
; ( -- addr ) System Constant
; R( -- )
; 
VE_UERST:
	.word 0xff05
	.db "UERST",0
	.word VE_HEAD
	.set VE_HEAD=VE_UERST
XT_UERST:
	.word PFA_DOVARIABLE
PFA_UERST:
	.word 0xEA
; ( -- addr ) System Constant
; R( -- )
; 
VE_UESTA0X:
	.word 0xff07
	.db "UESTA0X",0
	.word VE_HEAD
	.set VE_HEAD=VE_UESTA0X
XT_UESTA0X:
	.word PFA_DOVARIABLE
PFA_UESTA0X:
	.word 0xEE
; ( -- addr ) System Constant
; R( -- )
; 
VE_UESTA1X:
	.word 0xff07
	.db "UESTA1X",0
	.word VE_HEAD
	.set VE_HEAD=VE_UESTA1X
XT_UESTA1X:
	.word PFA_DOVARIABLE
PFA_UESTA1X:
	.word 0xEF

.endif

; ********
.if WANT_USB_GLOBAL == 1
; ********
; ( -- addr ) System Constant
; R( -- )
; USB Hardware Configuration Register
VE_UHWCON:
	.word 0xff06
	.ascii "UHWCON"
	.word VE_HEAD
	.set VE_HEAD=VE_UHWCON
XT_UHWCON:
	.word PFA_DOVARIABLE
PFA_UHWCON:
	.word 0xD7
; ( -- addr ) System Constant
; R( -- )
; USB General Control Register
VE_USBCON:
	.word 0xff06
	.ascii "USBCON"
	.word VE_HEAD
	.set VE_HEAD=VE_USBCON
XT_USBCON:
	.word PFA_DOVARIABLE
PFA_USBCON:
	.word 0xD8
; ( -- addr ) System Constant
; R( -- )
; 
VE_USBINT:
	.word 0xff06
	.ascii "USBINT"
	.word VE_HEAD
	.set VE_HEAD=VE_USBINT
XT_USBINT:
	.word PFA_DOVARIABLE
PFA_USBINT:
	.word 0xDA
; ( -- addr ) System Constant
; R( -- )
; 
VE_USBSTA:
	.word 0xff06
	.ascii "USBSTA"
	.word VE_HEAD
	.set VE_HEAD=VE_USBSTA
XT_USBSTA:
	.word PFA_DOVARIABLE
PFA_USBSTA:
	.word 0xD9

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
