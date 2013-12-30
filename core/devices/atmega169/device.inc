; Partname:  ATmega169
; Built using part description XML file version 300
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
; Digital Input Disable Register 1
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
; Clock Prescale Register
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
.if WANT_EEPROM == 1
; ********
; ( -- addr ) System Constant
; R( -- )
; EEPROM Address Register High Byte
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
; External Interrupt Control Register 
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
; ( -- addr ) System Constant
; R( -- )
; Pin Change Mask Register 1
VE_PCMSK1:
	.word 0xff06
	.ascii "PCMSK1"
	.word VE_HEAD
	.set VE_HEAD=VE_PCMSK1
XT_PCMSK1:
	.word PFA_DOVARIABLE
PFA_PCMSK1:
	.word 0x6C

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
.if WANT_LCD == 1
; ********
; ( -- addr ) System Constant
; R( -- )
; LCD Contrast Control Register
VE_LCDCCR:
	.word 0xff06
	.ascii "LCDCCR"
	.word VE_HEAD
	.set VE_HEAD=VE_LCDCCR
XT_LCDCCR:
	.word PFA_DOVARIABLE
PFA_LCDCCR:
	.word 0xE7
; ( -- addr ) System Constant
; R( -- )
; LCD Control Register A
VE_LCDCRA:
	.word 0xff06
	.ascii "LCDCRA"
	.word VE_HEAD
	.set VE_HEAD=VE_LCDCRA
XT_LCDCRA:
	.word PFA_DOVARIABLE
PFA_LCDCRA:
	.word 0xE4
; ( -- addr ) System Constant
; R( -- )
; LCD Control and Status Register B
VE_LCDCRB:
	.word 0xff06
	.ascii "LCDCRB"
	.word VE_HEAD
	.set VE_HEAD=VE_LCDCRB
XT_LCDCRB:
	.word PFA_DOVARIABLE
PFA_LCDCRB:
	.word 0xE5
; ( -- addr ) System Constant
; R( -- )
; LCD Data Register 0
VE_LCDDR0:
	.word 0xff06
	.ascii "LCDDR0"
	.word VE_HEAD
	.set VE_HEAD=VE_LCDDR0
XT_LCDDR0:
	.word PFA_DOVARIABLE
PFA_LCDDR0:
	.word 0xEC
; ( -- addr ) System Constant
; R( -- )
; LCD Data Register 1
VE_LCDDR1:
	.word 0xff06
	.ascii "LCDDR1"
	.word VE_HEAD
	.set VE_HEAD=VE_LCDDR1
XT_LCDDR1:
	.word PFA_DOVARIABLE
PFA_LCDDR1:
	.word 0xED
; ( -- addr ) System Constant
; R( -- )
; LCD Data Register 10
VE_LCDDR10:
	.word 0xff07
	.db "LCDDR10",0
	.word VE_HEAD
	.set VE_HEAD=VE_LCDDR10
XT_LCDDR10:
	.word PFA_DOVARIABLE
PFA_LCDDR10:
	.word 0xF6
; ( -- addr ) System Constant
; R( -- )
; LCD Data Register 11
VE_LCDDR11:
	.word 0xff07
	.db "LCDDR11",0
	.word VE_HEAD
	.set VE_HEAD=VE_LCDDR11
XT_LCDDR11:
	.word PFA_DOVARIABLE
PFA_LCDDR11:
	.word 0xF7
; ( -- addr ) System Constant
; R( -- )
; LCD Data Register 12
VE_LCDDR12:
	.word 0xff07
	.db "LCDDR12",0
	.word VE_HEAD
	.set VE_HEAD=VE_LCDDR12
XT_LCDDR12:
	.word PFA_DOVARIABLE
PFA_LCDDR12:
	.word 0xF8
; ( -- addr ) System Constant
; R( -- )
; LCD Data Register 13
VE_LCDDR13:
	.word 0xff07
	.db "LCDDR13",0
	.word VE_HEAD
	.set VE_HEAD=VE_LCDDR13
XT_LCDDR13:
	.word PFA_DOVARIABLE
PFA_LCDDR13:
	.word 0xF9
; ( -- addr ) System Constant
; R( -- )
; LCD Data Register 15
VE_LCDDR15:
	.word 0xff07
	.db "LCDDR15",0
	.word VE_HEAD
	.set VE_HEAD=VE_LCDDR15
XT_LCDDR15:
	.word PFA_DOVARIABLE
PFA_LCDDR15:
	.word 0xFB
; ( -- addr ) System Constant
; R( -- )
; LCD Data Register 16
VE_LCDDR16:
	.word 0xff07
	.db "LCDDR16",0
	.word VE_HEAD
	.set VE_HEAD=VE_LCDDR16
XT_LCDDR16:
	.word PFA_DOVARIABLE
PFA_LCDDR16:
	.word 0xFC
; ( -- addr ) System Constant
; R( -- )
; LCD Data Register 17
VE_LCDDR17:
	.word 0xff07
	.db "LCDDR17",0
	.word VE_HEAD
	.set VE_HEAD=VE_LCDDR17
XT_LCDDR17:
	.word PFA_DOVARIABLE
PFA_LCDDR17:
	.word 0xFD
; ( -- addr ) System Constant
; R( -- )
; LCD Data Register 18
VE_LCDDR18:
	.word 0xff07
	.db "LCDDR18",0
	.word VE_HEAD
	.set VE_HEAD=VE_LCDDR18
XT_LCDDR18:
	.word PFA_DOVARIABLE
PFA_LCDDR18:
	.word 0xFE
; ( -- addr ) System Constant
; R( -- )
; LCD Data Register 2
VE_LCDDR2:
	.word 0xff06
	.ascii "LCDDR2"
	.word VE_HEAD
	.set VE_HEAD=VE_LCDDR2
XT_LCDDR2:
	.word PFA_DOVARIABLE
PFA_LCDDR2:
	.word 0xEE
; ( -- addr ) System Constant
; R( -- )
; LCD Data Register 3
VE_LCDDR3:
	.word 0xff06
	.ascii "LCDDR3"
	.word VE_HEAD
	.set VE_HEAD=VE_LCDDR3
XT_LCDDR3:
	.word PFA_DOVARIABLE
PFA_LCDDR3:
	.word 0xEF
; ( -- addr ) System Constant
; R( -- )
; LCD Data Register 5
VE_LCDDR5:
	.word 0xff06
	.ascii "LCDDR5"
	.word VE_HEAD
	.set VE_HEAD=VE_LCDDR5
XT_LCDDR5:
	.word PFA_DOVARIABLE
PFA_LCDDR5:
	.word 0xF1
; ( -- addr ) System Constant
; R( -- )
; LCD Data Register 6
VE_LCDDR6:
	.word 0xff06
	.ascii "LCDDR6"
	.word VE_HEAD
	.set VE_HEAD=VE_LCDDR6
XT_LCDDR6:
	.word PFA_DOVARIABLE
PFA_LCDDR6:
	.word 0xF2
; ( -- addr ) System Constant
; R( -- )
; LCD Data Register 7
VE_LCDDR7:
	.word 0xff06
	.ascii "LCDDR7"
	.word VE_HEAD
	.set VE_HEAD=VE_LCDDR7
XT_LCDDR7:
	.word PFA_DOVARIABLE
PFA_LCDDR7:
	.word 0xF3
; ( -- addr ) System Constant
; R( -- )
; LCD Data Register 8
VE_LCDDR8:
	.word 0xff06
	.ascii "LCDDR8"
	.word VE_HEAD
	.set VE_HEAD=VE_LCDDR8
XT_LCDDR8:
	.word PFA_DOVARIABLE
PFA_LCDDR8:
	.word 0xF4
; ( -- addr ) System Constant
; R( -- )
; LCD Frame Rate Register
VE_LCDFRR:
	.word 0xff06
	.ascii "LCDFRR"
	.word VE_HEAD
	.set VE_HEAD=VE_LCDFRR
XT_LCDFRR:
	.word PFA_DOVARIABLE
PFA_LCDFRR:
	.word 0xE6

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
.if WANT_PORTG == 1
; ********
; ( -- addr ) System Constant
; R( -- )
; Port G Data Direction Register
VE_DDRG:
	.word 0xff04
	.ascii "DDRG"
	.word VE_HEAD
	.set VE_HEAD=VE_DDRG
XT_DDRG:
	.word PFA_DOVARIABLE
PFA_DDRG:
	.word 0x33
; ( -- addr ) System Constant
; R( -- )
; Port G Input Pins
VE_PING:
	.word 0xff04
	.ascii "PING"
	.word VE_HEAD
	.set VE_HEAD=VE_PING
XT_PING:
	.word PFA_DOVARIABLE
PFA_PING:
	.word 0x32
; ( -- addr ) System Constant
; R( -- )
;  Port G Data Register
VE_PORTG:
	.word 0xff05
	.db "PORTG",0
	.word VE_HEAD
	.set VE_HEAD=VE_PORTG
XT_PORTG:
	.word PFA_DOVARIABLE
PFA_PORTG:
	.word 0x34

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
; General Timer/Control Register
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
; Timer/Counter0 Control Register
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
; Timer/Counter2 Output Compare Register
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
; Timer/Counter2 Control Register
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
; Timer/Counter2 Interrupt Flag Register
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
; Timer/Counter2 Interrupt Mask register
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
.if WANT_USART0 == 1
; ********
; ( -- addr ) System Constant
; R( -- )
; USART Baud Rate Register High Byte
VE_UBRR0H:
	.word 0xff06
	.ascii "UBRR0H"
	.word VE_HEAD
	.set VE_HEAD=VE_UBRR0H
XT_UBRR0H:
	.word PFA_DOVARIABLE
PFA_UBRR0H:
	.word 0xC5
; ( -- addr ) System Constant
; R( -- )
; USART Baud Rate Register Low Byte
VE_UBRR0L:
	.word 0xff06
	.ascii "UBRR0L"
	.word VE_HEAD
	.set VE_HEAD=VE_UBRR0L
XT_UBRR0L:
	.word PFA_DOVARIABLE
PFA_UBRR0L:
	.word 0xC4
; ( -- addr ) System Constant
; R( -- )
; USART Control and Status Register A
VE_UCSR0A:
	.word 0xff06
	.ascii "UCSR0A"
	.word VE_HEAD
	.set VE_HEAD=VE_UCSR0A
XT_UCSR0A:
	.word PFA_DOVARIABLE
PFA_UCSR0A:
	.word 0xC0
; ( -- addr ) System Constant
; R( -- )
; USART Control and Status Register B
VE_UCSR0B:
	.word 0xff06
	.ascii "UCSR0B"
	.word VE_HEAD
	.set VE_HEAD=VE_UCSR0B
XT_UCSR0B:
	.word PFA_DOVARIABLE
PFA_UCSR0B:
	.word 0xC1
; ( -- addr ) System Constant
; R( -- )
; USART Control and Status Register C
VE_UCSR0C:
	.word 0xff06
	.ascii "UCSR0C"
	.word VE_HEAD
	.set VE_HEAD=VE_UCSR0C
XT_UCSR0C:
	.word PFA_DOVARIABLE
PFA_UCSR0C:
	.word 0xC2
; ( -- addr ) System Constant
; R( -- )
; USART I/O Data Register
VE_UDR0:
	.word 0xff04
	.ascii "UDR0"
	.word VE_HEAD
	.set VE_HEAD=VE_UDR0
XT_UDR0:
	.word PFA_DOVARIABLE
PFA_UDR0:
	.word 0xC6

.endif

; ********
.if WANT_USI == 1
; ********
; ( -- addr ) System Constant
; R( -- )
; USI Control Register
VE_USICR:
	.word 0xff05
	.db "USICR",0
	.word VE_HEAD
	.set VE_HEAD=VE_USICR
XT_USICR:
	.word PFA_DOVARIABLE
PFA_USICR:
	.word 0xB8
; ( -- addr ) System Constant
; R( -- )
; USI Data Register
VE_USIDR:
	.word 0xff05
	.db "USIDR",0
	.word VE_HEAD
	.set VE_HEAD=VE_USIDR
XT_USIDR:
	.word PFA_DOVARIABLE
PFA_USIDR:
	.word 0xBA
; ( -- addr ) System Constant
; R( -- )
; USI Status Register
VE_USISR:
	.word 0xff05
	.db "USISR",0
	.word VE_HEAD
	.set VE_HEAD=VE_USISR
XT_USISR:
	.word PFA_DOVARIABLE
PFA_USISR:
	.word 0xB9

.endif

; ********
.if WANT_WATCHDOG == 1
; ********
; ( -- addr ) System Constant
; R( -- )
; Watchdog Timer Control Register
VE_WDTCR:
	.word 0xff05
	.db "WDTCR",0
	.word VE_HEAD
	.set VE_HEAD=VE_WDTCR
XT_WDTCR:
	.word PFA_DOVARIABLE
PFA_WDTCR:
	.word 0x60

.endif
