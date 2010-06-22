; Partname:  ATmega169
; Built using part description XML file version 298

; ********
.ifdef WANT_AD_CONVERTER
; ********
; ( -- addr ) System Constant
; R( -- )
; ADC Data Register High Byte
VE_ADCH:
	.dw $ff 4
	.db "ADCH"
	.dw VE_HEAD
	.set VE_HEAD=VE_ADCH
XT_ADCH:
	.dw PFA_DOVARIABLE
PFA_ADCH:
	.dw $79
; ( -- addr ) System Constant
; R( -- )
; ADC Data Register Low Byte
VE_ADCL:
	.dw $ff 4
	.db "ADCL"
	.dw VE_HEAD
	.set VE_HEAD=VE_ADCL
XT_ADCL:
	.dw PFA_DOVARIABLE
PFA_ADCL:
	.dw $78
; ( -- addr ) System Constant
; R( -- )
; The ADC Control and Status register
VE_ADCSRA:
	.dw $ff 6
	.db "ADCSRA"
	.dw VE_HEAD
	.set VE_HEAD=VE_ADCSRA
XT_ADCSRA:
	.dw PFA_DOVARIABLE
PFA_ADCSRA:
	.dw $7A
; ( -- addr ) System Constant
; R( -- )
; ADC Control and Status Register B
VE_ADCSRB:
	.dw $ff 6
	.db "ADCSRB"
	.dw VE_HEAD
	.set VE_HEAD=VE_ADCSRB
XT_ADCSRB:
	.dw PFA_DOVARIABLE
PFA_ADCSRB:
	.dw $7B
; ( -- addr ) System Constant
; R( -- )
; The ADC multiplexer Selection Register
VE_ADMUX:
	.dw $ff 5
	.db "ADMUX",0
	.dw VE_HEAD
	.set VE_HEAD=VE_ADMUX
XT_ADMUX:
	.dw PFA_DOVARIABLE
PFA_ADMUX:
	.dw $7C
; ( -- addr ) System Constant
; R( -- )
; Digital Input Disable Register 0
VE_DIDR0:
	.dw $ff 5
	.db "DIDR0",0
	.dw VE_HEAD
	.set VE_HEAD=VE_DIDR0
XT_DIDR0:
	.dw PFA_DOVARIABLE
PFA_DIDR0:
	.dw $7E

.endif

; ********
.ifdef WANT_ANALOG_COMPARATOR
; ********
; ( -- addr ) System Constant
; R( -- )
; Analog Comparator Control And Status Register
VE_ACSR:
	.dw $ff 4
	.db "ACSR"
	.dw VE_HEAD
	.set VE_HEAD=VE_ACSR
XT_ACSR:
	.dw PFA_DOVARIABLE
PFA_ACSR:
	.dw $50
; ( -- addr ) System Constant
; R( -- )
; Digital Input Disable Register 1
VE_DIDR1:
	.dw $ff 5
	.db "DIDR1",0
	.dw VE_HEAD
	.set VE_HEAD=VE_DIDR1
XT_DIDR1:
	.dw PFA_DOVARIABLE
PFA_DIDR1:
	.dw $7F

.endif

; ********
.ifdef WANT_BOOT_LOAD
; ********
; ( -- addr ) System Constant
; R( -- )
; Store Program Memory Control Register
VE_SPMCSR:
	.dw $ff 6
	.db "SPMCSR"
	.dw VE_HEAD
	.set VE_HEAD=VE_SPMCSR
XT_SPMCSR:
	.dw PFA_DOVARIABLE
PFA_SPMCSR:
	.dw $57

.endif

; ********
.ifdef WANT_CPU
; ********
; ( -- addr ) System Constant
; R( -- )
; Clock Prescale Register
VE_CLKPR:
	.dw $ff 5
	.db "CLKPR",0
	.dw VE_HEAD
	.set VE_HEAD=VE_CLKPR
XT_CLKPR:
	.dw PFA_DOVARIABLE
PFA_CLKPR:
	.dw $61
; ( -- addr ) System Constant
; R( -- )
; General Purpose IO Register 0
VE_GPIOR0:
	.dw $ff 6
	.db "GPIOR0"
	.dw VE_HEAD
	.set VE_HEAD=VE_GPIOR0
XT_GPIOR0:
	.dw PFA_DOVARIABLE
PFA_GPIOR0:
	.dw $3E
; ( -- addr ) System Constant
; R( -- )
; General Purpose IO Register 1
VE_GPIOR1:
	.dw $ff 6
	.db "GPIOR1"
	.dw VE_HEAD
	.set VE_HEAD=VE_GPIOR1
XT_GPIOR1:
	.dw PFA_DOVARIABLE
PFA_GPIOR1:
	.dw $4A
; ( -- addr ) System Constant
; R( -- )
; General Purpose IO Register 2
VE_GPIOR2:
	.dw $ff 6
	.db "GPIOR2"
	.dw VE_HEAD
	.set VE_HEAD=VE_GPIOR2
XT_GPIOR2:
	.dw PFA_DOVARIABLE
PFA_GPIOR2:
	.dw $4B
; ( -- addr ) System Constant
; R( -- )
; MCU Control Register
VE_MCUCR:
	.dw $ff 5
	.db "MCUCR",0
	.dw VE_HEAD
	.set VE_HEAD=VE_MCUCR
XT_MCUCR:
	.dw PFA_DOVARIABLE
PFA_MCUCR:
	.dw $55
; ( -- addr ) System Constant
; R( -- )
; MCU Status Register
VE_MCUSR:
	.dw $ff 5
	.db "MCUSR",0
	.dw VE_HEAD
	.set VE_HEAD=VE_MCUSR
XT_MCUSR:
	.dw PFA_DOVARIABLE
PFA_MCUSR:
	.dw $54
; ( -- addr ) System Constant
; R( -- )
; Oscillator Calibration Value
VE_OSCCAL:
	.dw $ff 6
	.db "OSCCAL"
	.dw VE_HEAD
	.set VE_HEAD=VE_OSCCAL
XT_OSCCAL:
	.dw PFA_DOVARIABLE
PFA_OSCCAL:
	.dw $66
; ( -- addr ) System Constant
; R( -- )
; Power Reduction Register
VE_PRR:
	.dw $ff 3
	.db "PRR",0
	.dw VE_HEAD
	.set VE_HEAD=VE_PRR
XT_PRR:
	.dw PFA_DOVARIABLE
PFA_PRR:
	.dw $64
; ( -- addr ) System Constant
; R( -- )
; Sleep Mode Control Register
VE_SMCR:
	.dw $ff 4
	.db "SMCR"
	.dw VE_HEAD
	.set VE_HEAD=VE_SMCR
XT_SMCR:
	.dw PFA_DOVARIABLE
PFA_SMCR:
	.dw $53
; ( -- addr ) System Constant
; R( -- )
; Stack Pointer High
VE_SPH:
	.dw $ff 3
	.db "SPH",0
	.dw VE_HEAD
	.set VE_HEAD=VE_SPH
XT_SPH:
	.dw PFA_DOVARIABLE
PFA_SPH:
	.dw $5E
; ( -- addr ) System Constant
; R( -- )
; Stack Pointer Low
VE_SPL:
	.dw $ff 3
	.db "SPL",0
	.dw VE_HEAD
	.set VE_HEAD=VE_SPL
XT_SPL:
	.dw PFA_DOVARIABLE
PFA_SPL:
	.dw $5D
; ( -- addr ) System Constant
; R( -- )
; Status Register
VE_SREG:
	.dw $ff 4
	.db "SREG"
	.dw VE_HEAD
	.set VE_HEAD=VE_SREG
XT_SREG:
	.dw PFA_DOVARIABLE
PFA_SREG:
	.dw $5F

.endif

; ********
.ifdef WANT_EEPROM
; ********
; ( -- addr ) System Constant
; R( -- )
; EEPROM Address Register High Byte
VE_EEARH:
	.dw $ff 5
	.db "EEARH",0
	.dw VE_HEAD
	.set VE_HEAD=VE_EEARH
XT_EEARH:
	.dw PFA_DOVARIABLE
PFA_EEARH:
	.dw $42
; ( -- addr ) System Constant
; R( -- )
; EEPROM Address Register Low Byte
VE_EEARL:
	.dw $ff 5
	.db "EEARL",0
	.dw VE_HEAD
	.set VE_HEAD=VE_EEARL
XT_EEARL:
	.dw PFA_DOVARIABLE
PFA_EEARL:
	.dw $41
; ( -- addr ) System Constant
; R( -- )
; EEPROM Control Register
VE_EECR:
	.dw $ff 4
	.db "EECR"
	.dw VE_HEAD
	.set VE_HEAD=VE_EECR
XT_EECR:
	.dw PFA_DOVARIABLE
PFA_EECR:
	.dw $3F
; ( -- addr ) System Constant
; R( -- )
; EEPROM Data Register
VE_EEDR:
	.dw $ff 4
	.db "EEDR"
	.dw VE_HEAD
	.set VE_HEAD=VE_EEDR
XT_EEDR:
	.dw PFA_DOVARIABLE
PFA_EEDR:
	.dw $40

.endif

; ********
.ifdef WANT_EXTERNAL_INTERRUPT
; ********
; ( -- addr ) System Constant
; R( -- )
; External Interrupt Control Register 
VE_EICRA:
	.dw $ff 5
	.db "EICRA",0
	.dw VE_HEAD
	.set VE_HEAD=VE_EICRA
XT_EICRA:
	.dw PFA_DOVARIABLE
PFA_EICRA:
	.dw $69
; ( -- addr ) System Constant
; R( -- )
; External Interrupt Flag Register
VE_EIFR:
	.dw $ff 4
	.db "EIFR"
	.dw VE_HEAD
	.set VE_HEAD=VE_EIFR
XT_EIFR:
	.dw PFA_DOVARIABLE
PFA_EIFR:
	.dw $3C
; ( -- addr ) System Constant
; R( -- )
; External Interrupt Mask Register
VE_EIMSK:
	.dw $ff 5
	.db "EIMSK",0
	.dw VE_HEAD
	.set VE_HEAD=VE_EIMSK
XT_EIMSK:
	.dw PFA_DOVARIABLE
PFA_EIMSK:
	.dw $3D
; ( -- addr ) System Constant
; R( -- )
; Pin Change Mask Register 0
VE_PCMSK0:
	.dw $ff 6
	.db "PCMSK0"
	.dw VE_HEAD
	.set VE_HEAD=VE_PCMSK0
XT_PCMSK0:
	.dw PFA_DOVARIABLE
PFA_PCMSK0:
	.dw $6B
; ( -- addr ) System Constant
; R( -- )
; Pin Change Mask Register 1
VE_PCMSK1:
	.dw $ff 6
	.db "PCMSK1"
	.dw VE_HEAD
	.set VE_HEAD=VE_PCMSK1
XT_PCMSK1:
	.dw PFA_DOVARIABLE
PFA_PCMSK1:
	.dw $6C

.endif

; ********
.ifdef WANT_JTAG
; ********
; ( -- addr ) System Constant
; R( -- )
; On-Chip Debug Related Register in I/O Memory
VE_OCDR:
	.dw $ff 4
	.db "OCDR"
	.dw VE_HEAD
	.set VE_HEAD=VE_OCDR
XT_OCDR:
	.dw PFA_DOVARIABLE
PFA_OCDR:
	.dw $51

.endif

; ********
.ifdef WANT_LCD
; ********
; ( -- addr ) System Constant
; R( -- )
; LCD Contrast Control Register
VE_LCDCCR:
	.dw $ff 6
	.db "LCDCCR"
	.dw VE_HEAD
	.set VE_HEAD=VE_LCDCCR
XT_LCDCCR:
	.dw PFA_DOVARIABLE
PFA_LCDCCR:
	.dw $E7
; ( -- addr ) System Constant
; R( -- )
; LCD Control Register A
VE_LCDCRA:
	.dw $ff 6
	.db "LCDCRA"
	.dw VE_HEAD
	.set VE_HEAD=VE_LCDCRA
XT_LCDCRA:
	.dw PFA_DOVARIABLE
PFA_LCDCRA:
	.dw $E4
; ( -- addr ) System Constant
; R( -- )
; LCD Control and Status Register B
VE_LCDCRB:
	.dw $ff 6
	.db "LCDCRB"
	.dw VE_HEAD
	.set VE_HEAD=VE_LCDCRB
XT_LCDCRB:
	.dw PFA_DOVARIABLE
PFA_LCDCRB:
	.dw $E5
; ( -- addr ) System Constant
; R( -- )
; LCD Data Register 0
VE_LCDDR0:
	.dw $ff 6
	.db "LCDDR0"
	.dw VE_HEAD
	.set VE_HEAD=VE_LCDDR0
XT_LCDDR0:
	.dw PFA_DOVARIABLE
PFA_LCDDR0:
	.dw $EC
; ( -- addr ) System Constant
; R( -- )
; LCD Data Register 1
VE_LCDDR1:
	.dw $ff 6
	.db "LCDDR1"
	.dw VE_HEAD
	.set VE_HEAD=VE_LCDDR1
XT_LCDDR1:
	.dw PFA_DOVARIABLE
PFA_LCDDR1:
	.dw $ED
; ( -- addr ) System Constant
; R( -- )
; LCD Data Register 10
VE_LCDDR10:
	.dw $ff 7
	.db "LCDDR10",0
	.dw VE_HEAD
	.set VE_HEAD=VE_LCDDR10
XT_LCDDR10:
	.dw PFA_DOVARIABLE
PFA_LCDDR10:
	.dw $F6
; ( -- addr ) System Constant
; R( -- )
; LCD Data Register 11
VE_LCDDR11:
	.dw $ff 7
	.db "LCDDR11",0
	.dw VE_HEAD
	.set VE_HEAD=VE_LCDDR11
XT_LCDDR11:
	.dw PFA_DOVARIABLE
PFA_LCDDR11:
	.dw $F7
; ( -- addr ) System Constant
; R( -- )
; LCD Data Register 12
VE_LCDDR12:
	.dw $ff 7
	.db "LCDDR12",0
	.dw VE_HEAD
	.set VE_HEAD=VE_LCDDR12
XT_LCDDR12:
	.dw PFA_DOVARIABLE
PFA_LCDDR12:
	.dw $F8
; ( -- addr ) System Constant
; R( -- )
; LCD Data Register 13
VE_LCDDR13:
	.dw $ff 7
	.db "LCDDR13",0
	.dw VE_HEAD
	.set VE_HEAD=VE_LCDDR13
XT_LCDDR13:
	.dw PFA_DOVARIABLE
PFA_LCDDR13:
	.dw $F9
; ( -- addr ) System Constant
; R( -- )
; LCD Data Register 15
VE_LCDDR15:
	.dw $ff 7
	.db "LCDDR15",0
	.dw VE_HEAD
	.set VE_HEAD=VE_LCDDR15
XT_LCDDR15:
	.dw PFA_DOVARIABLE
PFA_LCDDR15:
	.dw $FB
; ( -- addr ) System Constant
; R( -- )
; LCD Data Register 16
VE_LCDDR16:
	.dw $ff 7
	.db "LCDDR16",0
	.dw VE_HEAD
	.set VE_HEAD=VE_LCDDR16
XT_LCDDR16:
	.dw PFA_DOVARIABLE
PFA_LCDDR16:
	.dw $FC
; ( -- addr ) System Constant
; R( -- )
; LCD Data Register 17
VE_LCDDR17:
	.dw $ff 7
	.db "LCDDR17",0
	.dw VE_HEAD
	.set VE_HEAD=VE_LCDDR17
XT_LCDDR17:
	.dw PFA_DOVARIABLE
PFA_LCDDR17:
	.dw $FD
; ( -- addr ) System Constant
; R( -- )
; LCD Data Register 18
VE_LCDDR18:
	.dw $ff 7
	.db "LCDDR18",0
	.dw VE_HEAD
	.set VE_HEAD=VE_LCDDR18
XT_LCDDR18:
	.dw PFA_DOVARIABLE
PFA_LCDDR18:
	.dw $FE
; ( -- addr ) System Constant
; R( -- )
; LCD Data Register 2
VE_LCDDR2:
	.dw $ff 6
	.db "LCDDR2"
	.dw VE_HEAD
	.set VE_HEAD=VE_LCDDR2
XT_LCDDR2:
	.dw PFA_DOVARIABLE
PFA_LCDDR2:
	.dw $EE
; ( -- addr ) System Constant
; R( -- )
; LCD Data Register 3
VE_LCDDR3:
	.dw $ff 6
	.db "LCDDR3"
	.dw VE_HEAD
	.set VE_HEAD=VE_LCDDR3
XT_LCDDR3:
	.dw PFA_DOVARIABLE
PFA_LCDDR3:
	.dw $EF
; ( -- addr ) System Constant
; R( -- )
; LCD Data Register 5
VE_LCDDR5:
	.dw $ff 6
	.db "LCDDR5"
	.dw VE_HEAD
	.set VE_HEAD=VE_LCDDR5
XT_LCDDR5:
	.dw PFA_DOVARIABLE
PFA_LCDDR5:
	.dw $F1
; ( -- addr ) System Constant
; R( -- )
; LCD Data Register 6
VE_LCDDR6:
	.dw $ff 6
	.db "LCDDR6"
	.dw VE_HEAD
	.set VE_HEAD=VE_LCDDR6
XT_LCDDR6:
	.dw PFA_DOVARIABLE
PFA_LCDDR6:
	.dw $F2
; ( -- addr ) System Constant
; R( -- )
; LCD Data Register 7
VE_LCDDR7:
	.dw $ff 6
	.db "LCDDR7"
	.dw VE_HEAD
	.set VE_HEAD=VE_LCDDR7
XT_LCDDR7:
	.dw PFA_DOVARIABLE
PFA_LCDDR7:
	.dw $F3
; ( -- addr ) System Constant
; R( -- )
; LCD Data Register 8
VE_LCDDR8:
	.dw $ff 6
	.db "LCDDR8"
	.dw VE_HEAD
	.set VE_HEAD=VE_LCDDR8
XT_LCDDR8:
	.dw PFA_DOVARIABLE
PFA_LCDDR8:
	.dw $F4
; ( -- addr ) System Constant
; R( -- )
; LCD Frame Rate Register
VE_LCDFRR:
	.dw $ff 6
	.db "LCDFRR"
	.dw VE_HEAD
	.set VE_HEAD=VE_LCDFRR
XT_LCDFRR:
	.dw PFA_DOVARIABLE
PFA_LCDFRR:
	.dw $E6

.endif

; ********
.ifdef WANT_PORTA
; ********
; ( -- addr ) System Constant
; R( -- )
; Port A Data Direction Register
VE_DDRA:
	.dw $ff 4
	.db "DDRA"
	.dw VE_HEAD
	.set VE_HEAD=VE_DDRA
XT_DDRA:
	.dw PFA_DOVARIABLE
PFA_DDRA:
	.dw $21
; ( -- addr ) System Constant
; R( -- )
; Port A Input Pins
VE_PINA:
	.dw $ff 4
	.db "PINA"
	.dw VE_HEAD
	.set VE_HEAD=VE_PINA
XT_PINA:
	.dw PFA_DOVARIABLE
PFA_PINA:
	.dw $20
; ( -- addr ) System Constant
; R( -- )
; Port A Data Register
VE_PORTA:
	.dw $ff 5
	.db "PORTA",0
	.dw VE_HEAD
	.set VE_HEAD=VE_PORTA
XT_PORTA:
	.dw PFA_DOVARIABLE
PFA_PORTA:
	.dw $22

.endif

; ********
.ifdef WANT_PORTB
; ********
; ( -- addr ) System Constant
; R( -- )
; Port B Data Direction Register
VE_DDRB:
	.dw $ff 4
	.db "DDRB"
	.dw VE_HEAD
	.set VE_HEAD=VE_DDRB
XT_DDRB:
	.dw PFA_DOVARIABLE
PFA_DDRB:
	.dw $24
; ( -- addr ) System Constant
; R( -- )
; Port B Input Pins
VE_PINB:
	.dw $ff 4
	.db "PINB"
	.dw VE_HEAD
	.set VE_HEAD=VE_PINB
XT_PINB:
	.dw PFA_DOVARIABLE
PFA_PINB:
	.dw $23
; ( -- addr ) System Constant
; R( -- )
; Port B Data Register
VE_PORTB:
	.dw $ff 5
	.db "PORTB",0
	.dw VE_HEAD
	.set VE_HEAD=VE_PORTB
XT_PORTB:
	.dw PFA_DOVARIABLE
PFA_PORTB:
	.dw $25

.endif

; ********
.ifdef WANT_PORTC
; ********
; ( -- addr ) System Constant
; R( -- )
; Port C Data Direction Register
VE_DDRC:
	.dw $ff 4
	.db "DDRC"
	.dw VE_HEAD
	.set VE_HEAD=VE_DDRC
XT_DDRC:
	.dw PFA_DOVARIABLE
PFA_DDRC:
	.dw $27
; ( -- addr ) System Constant
; R( -- )
; Port C Input Pins
VE_PINC:
	.dw $ff 4
	.db "PINC"
	.dw VE_HEAD
	.set VE_HEAD=VE_PINC
XT_PINC:
	.dw PFA_DOVARIABLE
PFA_PINC:
	.dw $26
; ( -- addr ) System Constant
; R( -- )
; Port C Data Register
VE_PORTC:
	.dw $ff 5
	.db "PORTC",0
	.dw VE_HEAD
	.set VE_HEAD=VE_PORTC
XT_PORTC:
	.dw PFA_DOVARIABLE
PFA_PORTC:
	.dw $28

.endif

; ********
.ifdef WANT_PORTD
; ********
; ( -- addr ) System Constant
; R( -- )
; Port D Data Direction Register
VE_DDRD:
	.dw $ff 4
	.db "DDRD"
	.dw VE_HEAD
	.set VE_HEAD=VE_DDRD
XT_DDRD:
	.dw PFA_DOVARIABLE
PFA_DDRD:
	.dw $2A
; ( -- addr ) System Constant
; R( -- )
; Port D Input Pins
VE_PIND:
	.dw $ff 4
	.db "PIND"
	.dw VE_HEAD
	.set VE_HEAD=VE_PIND
XT_PIND:
	.dw PFA_DOVARIABLE
PFA_PIND:
	.dw $29
; ( -- addr ) System Constant
; R( -- )
; Port D Data Register
VE_PORTD:
	.dw $ff 5
	.db "PORTD",0
	.dw VE_HEAD
	.set VE_HEAD=VE_PORTD
XT_PORTD:
	.dw PFA_DOVARIABLE
PFA_PORTD:
	.dw $2B

.endif

; ********
.ifdef WANT_PORTE
; ********
; ( -- addr ) System Constant
; R( -- )
; Data Direction Register, Port E
VE_DDRE:
	.dw $ff 4
	.db "DDRE"
	.dw VE_HEAD
	.set VE_HEAD=VE_DDRE
XT_DDRE:
	.dw PFA_DOVARIABLE
PFA_DDRE:
	.dw $2D
; ( -- addr ) System Constant
; R( -- )
; Input Pins, Port E
VE_PINE:
	.dw $ff 4
	.db "PINE"
	.dw VE_HEAD
	.set VE_HEAD=VE_PINE
XT_PINE:
	.dw PFA_DOVARIABLE
PFA_PINE:
	.dw $2C
; ( -- addr ) System Constant
; R( -- )
; Data Register, Port E
VE_PORTE:
	.dw $ff 5
	.db "PORTE",0
	.dw VE_HEAD
	.set VE_HEAD=VE_PORTE
XT_PORTE:
	.dw PFA_DOVARIABLE
PFA_PORTE:
	.dw $2E

.endif

; ********
.ifdef WANT_PORTF
; ********
; ( -- addr ) System Constant
; R( -- )
; Data Direction Register, Port F
VE_DDRF:
	.dw $ff 4
	.db "DDRF"
	.dw VE_HEAD
	.set VE_HEAD=VE_DDRF
XT_DDRF:
	.dw PFA_DOVARIABLE
PFA_DDRF:
	.dw $30
; ( -- addr ) System Constant
; R( -- )
; Input Pins, Port F
VE_PINF:
	.dw $ff 4
	.db "PINF"
	.dw VE_HEAD
	.set VE_HEAD=VE_PINF
XT_PINF:
	.dw PFA_DOVARIABLE
PFA_PINF:
	.dw $2F
; ( -- addr ) System Constant
; R( -- )
; Data Register, Port F
VE_PORTF:
	.dw $ff 5
	.db "PORTF",0
	.dw VE_HEAD
	.set VE_HEAD=VE_PORTF
XT_PORTF:
	.dw PFA_DOVARIABLE
PFA_PORTF:
	.dw $31

.endif

; ********
.ifdef WANT_PORTG
; ********
; ( -- addr ) System Constant
; R( -- )
; Port G Data Direction Register
VE_DDRG:
	.dw $ff 4
	.db "DDRG"
	.dw VE_HEAD
	.set VE_HEAD=VE_DDRG
XT_DDRG:
	.dw PFA_DOVARIABLE
PFA_DDRG:
	.dw $33
; ( -- addr ) System Constant
; R( -- )
; Port G Input Pins
VE_PING:
	.dw $ff 4
	.db "PING"
	.dw VE_HEAD
	.set VE_HEAD=VE_PING
XT_PING:
	.dw PFA_DOVARIABLE
PFA_PING:
	.dw $32
; ( -- addr ) System Constant
; R( -- )
;  Port G Data Register
VE_PORTG:
	.dw $ff 5
	.db "PORTG",0
	.dw VE_HEAD
	.set VE_HEAD=VE_PORTG
XT_PORTG:
	.dw PFA_DOVARIABLE
PFA_PORTG:
	.dw $34

.endif

; ********
.ifdef WANT_SPI
; ********
; ( -- addr ) System Constant
; R( -- )
; SPI Control Register
VE_SPCR:
	.dw $ff 4
	.db "SPCR"
	.dw VE_HEAD
	.set VE_HEAD=VE_SPCR
XT_SPCR:
	.dw PFA_DOVARIABLE
PFA_SPCR:
	.dw $4C
; ( -- addr ) System Constant
; R( -- )
; SPI Data Register
VE_SPDR:
	.dw $ff 4
	.db "SPDR"
	.dw VE_HEAD
	.set VE_HEAD=VE_SPDR
XT_SPDR:
	.dw PFA_DOVARIABLE
PFA_SPDR:
	.dw $4E
; ( -- addr ) System Constant
; R( -- )
; SPI Status Register
VE_SPSR:
	.dw $ff 4
	.db "SPSR"
	.dw VE_HEAD
	.set VE_HEAD=VE_SPSR
XT_SPSR:
	.dw PFA_DOVARIABLE
PFA_SPSR:
	.dw $4D

.endif

; ********
.ifdef WANT_TIMER_COUNTER_0
; ********
; ( -- addr ) System Constant
; R( -- )
; General Timer/Control Register
VE_GTCCR:
	.dw $ff 5
	.db "GTCCR",0
	.dw VE_HEAD
	.set VE_HEAD=VE_GTCCR
XT_GTCCR:
	.dw PFA_DOVARIABLE
PFA_GTCCR:
	.dw $43
; ( -- addr ) System Constant
; R( -- )
; Timer/Counter0 Output Compare Register
VE_OCR0A:
	.dw $ff 5
	.db "OCR0A",0
	.dw VE_HEAD
	.set VE_HEAD=VE_OCR0A
XT_OCR0A:
	.dw PFA_DOVARIABLE
PFA_OCR0A:
	.dw $47
; ( -- addr ) System Constant
; R( -- )
; Timer/Counter0 Control Register
VE_TCCR0A:
	.dw $ff 6
	.db "TCCR0A"
	.dw VE_HEAD
	.set VE_HEAD=VE_TCCR0A
XT_TCCR0A:
	.dw PFA_DOVARIABLE
PFA_TCCR0A:
	.dw $44
; ( -- addr ) System Constant
; R( -- )
; Timer/Counter0
VE_TCNT0:
	.dw $ff 5
	.db "TCNT0",0
	.dw VE_HEAD
	.set VE_HEAD=VE_TCNT0
XT_TCNT0:
	.dw PFA_DOVARIABLE
PFA_TCNT0:
	.dw $46
; ( -- addr ) System Constant
; R( -- )
; Timer/Counter0 Interrupt Flag register
VE_TIFR0:
	.dw $ff 5
	.db "TIFR0",0
	.dw VE_HEAD
	.set VE_HEAD=VE_TIFR0
XT_TIFR0:
	.dw PFA_DOVARIABLE
PFA_TIFR0:
	.dw $35
; ( -- addr ) System Constant
; R( -- )
; Timer/Counter0 Interrupt Mask Register
VE_TIMSK0:
	.dw $ff 6
	.db "TIMSK0"
	.dw VE_HEAD
	.set VE_HEAD=VE_TIMSK0
XT_TIMSK0:
	.dw PFA_DOVARIABLE
PFA_TIMSK0:
	.dw $6E

.endif

; ********
.ifdef WANT_TIMER_COUNTER_1
; ********
; ( -- addr ) System Constant
; R( -- )
; Timer/Counter1 Input Capture Register High Byte
VE_ICR1H:
	.dw $ff 5
	.db "ICR1H",0
	.dw VE_HEAD
	.set VE_HEAD=VE_ICR1H
XT_ICR1H:
	.dw PFA_DOVARIABLE
PFA_ICR1H:
	.dw $87
; ( -- addr ) System Constant
; R( -- )
; Timer/Counter1 Input Capture Register Low Byte
VE_ICR1L:
	.dw $ff 5
	.db "ICR1L",0
	.dw VE_HEAD
	.set VE_HEAD=VE_ICR1L
XT_ICR1L:
	.dw PFA_DOVARIABLE
PFA_ICR1L:
	.dw $86
; ( -- addr ) System Constant
; R( -- )
; Timer/Counter1 Output Compare Register A High Byte
VE_OCR1AH:
	.dw $ff 6
	.db "OCR1AH"
	.dw VE_HEAD
	.set VE_HEAD=VE_OCR1AH
XT_OCR1AH:
	.dw PFA_DOVARIABLE
PFA_OCR1AH:
	.dw $89
; ( -- addr ) System Constant
; R( -- )
; Timer/Counter1 Output Compare Register A Low Byte
VE_OCR1AL:
	.dw $ff 6
	.db "OCR1AL"
	.dw VE_HEAD
	.set VE_HEAD=VE_OCR1AL
XT_OCR1AL:
	.dw PFA_DOVARIABLE
PFA_OCR1AL:
	.dw $88
; ( -- addr ) System Constant
; R( -- )
; Timer/Counter1 Output Compare Register B High Byte
VE_OCR1BH:
	.dw $ff 6
	.db "OCR1BH"
	.dw VE_HEAD
	.set VE_HEAD=VE_OCR1BH
XT_OCR1BH:
	.dw PFA_DOVARIABLE
PFA_OCR1BH:
	.dw $8B
; ( -- addr ) System Constant
; R( -- )
; Timer/Counter1 Output Compare Register B Low Byte
VE_OCR1BL:
	.dw $ff 6
	.db "OCR1BL"
	.dw VE_HEAD
	.set VE_HEAD=VE_OCR1BL
XT_OCR1BL:
	.dw PFA_DOVARIABLE
PFA_OCR1BL:
	.dw $8A
; ( -- addr ) System Constant
; R( -- )
; Timer/Counter1 Control Register A
VE_TCCR1A:
	.dw $ff 6
	.db "TCCR1A"
	.dw VE_HEAD
	.set VE_HEAD=VE_TCCR1A
XT_TCCR1A:
	.dw PFA_DOVARIABLE
PFA_TCCR1A:
	.dw $80
; ( -- addr ) System Constant
; R( -- )
; Timer/Counter1 Control Register B
VE_TCCR1B:
	.dw $ff 6
	.db "TCCR1B"
	.dw VE_HEAD
	.set VE_HEAD=VE_TCCR1B
XT_TCCR1B:
	.dw PFA_DOVARIABLE
PFA_TCCR1B:
	.dw $81
; ( -- addr ) System Constant
; R( -- )
; Timer/Counter 1 Control Register C
VE_TCCR1C:
	.dw $ff 6
	.db "TCCR1C"
	.dw VE_HEAD
	.set VE_HEAD=VE_TCCR1C
XT_TCCR1C:
	.dw PFA_DOVARIABLE
PFA_TCCR1C:
	.dw $82
; ( -- addr ) System Constant
; R( -- )
; Timer/Counter1 High Byte
VE_TCNT1H:
	.dw $ff 6
	.db "TCNT1H"
	.dw VE_HEAD
	.set VE_HEAD=VE_TCNT1H
XT_TCNT1H:
	.dw PFA_DOVARIABLE
PFA_TCNT1H:
	.dw $85
; ( -- addr ) System Constant
; R( -- )
; Timer/Counter1 Low Byte
VE_TCNT1L:
	.dw $ff 6
	.db "TCNT1L"
	.dw VE_HEAD
	.set VE_HEAD=VE_TCNT1L
XT_TCNT1L:
	.dw PFA_DOVARIABLE
PFA_TCNT1L:
	.dw $84
; ( -- addr ) System Constant
; R( -- )
; Timer/Counter1 Interrupt Flag register
VE_TIFR1:
	.dw $ff 5
	.db "TIFR1",0
	.dw VE_HEAD
	.set VE_HEAD=VE_TIFR1
XT_TIFR1:
	.dw PFA_DOVARIABLE
PFA_TIFR1:
	.dw $36
; ( -- addr ) System Constant
; R( -- )
; Timer/Counter1 Interrupt Mask Register
VE_TIMSK1:
	.dw $ff 6
	.db "TIMSK1"
	.dw VE_HEAD
	.set VE_HEAD=VE_TIMSK1
XT_TIMSK1:
	.dw PFA_DOVARIABLE
PFA_TIMSK1:
	.dw $6F

.endif

; ********
.ifdef WANT_TIMER_COUNTER_2
; ********
; ( -- addr ) System Constant
; R( -- )
; Asynchronous Status Register
VE_ASSR:
	.dw $ff 4
	.db "ASSR"
	.dw VE_HEAD
	.set VE_HEAD=VE_ASSR
XT_ASSR:
	.dw PFA_DOVARIABLE
PFA_ASSR:
	.dw $B6
; ( -- addr ) System Constant
; R( -- )
; Timer/Counter2 Output Compare Register
VE_OCR2A:
	.dw $ff 5
	.db "OCR2A",0
	.dw VE_HEAD
	.set VE_HEAD=VE_OCR2A
XT_OCR2A:
	.dw PFA_DOVARIABLE
PFA_OCR2A:
	.dw $B3
; ( -- addr ) System Constant
; R( -- )
; Timer/Counter2 Control Register
VE_TCCR2A:
	.dw $ff 6
	.db "TCCR2A"
	.dw VE_HEAD
	.set VE_HEAD=VE_TCCR2A
XT_TCCR2A:
	.dw PFA_DOVARIABLE
PFA_TCCR2A:
	.dw $B0
; ( -- addr ) System Constant
; R( -- )
; Timer/Counter2
VE_TCNT2:
	.dw $ff 5
	.db "TCNT2",0
	.dw VE_HEAD
	.set VE_HEAD=VE_TCNT2
XT_TCNT2:
	.dw PFA_DOVARIABLE
PFA_TCNT2:
	.dw $B2
; ( -- addr ) System Constant
; R( -- )
; Timer/Counter2 Interrupt Flag Register
VE_TIFR2:
	.dw $ff 5
	.db "TIFR2",0
	.dw VE_HEAD
	.set VE_HEAD=VE_TIFR2
XT_TIFR2:
	.dw PFA_DOVARIABLE
PFA_TIFR2:
	.dw $37
; ( -- addr ) System Constant
; R( -- )
; Timer/Counter2 Interrupt Mask register
VE_TIMSK2:
	.dw $ff 6
	.db "TIMSK2"
	.dw VE_HEAD
	.set VE_HEAD=VE_TIMSK2
XT_TIMSK2:
	.dw PFA_DOVARIABLE
PFA_TIMSK2:
	.dw $70

.endif

; ********
.ifdef WANT_USART0
; ********
; ( -- addr ) System Constant
; R( -- )
; USART Baud Rate Register High Byte
VE_UBRR0H:
	.dw $ff 6
	.db "UBRR0H"
	.dw VE_HEAD
	.set VE_HEAD=VE_UBRR0H
XT_UBRR0H:
	.dw PFA_DOVARIABLE
PFA_UBRR0H:
	.dw $C5
; ( -- addr ) System Constant
; R( -- )
; USART Baud Rate Register Low Byte
VE_UBRR0L:
	.dw $ff 6
	.db "UBRR0L"
	.dw VE_HEAD
	.set VE_HEAD=VE_UBRR0L
XT_UBRR0L:
	.dw PFA_DOVARIABLE
PFA_UBRR0L:
	.dw $C4
; ( -- addr ) System Constant
; R( -- )
; USART Control and Status Register A
VE_UCSR0A:
	.dw $ff 6
	.db "UCSR0A"
	.dw VE_HEAD
	.set VE_HEAD=VE_UCSR0A
XT_UCSR0A:
	.dw PFA_DOVARIABLE
PFA_UCSR0A:
	.dw $C0
; ( -- addr ) System Constant
; R( -- )
; USART Control and Status Register B
VE_UCSR0B:
	.dw $ff 6
	.db "UCSR0B"
	.dw VE_HEAD
	.set VE_HEAD=VE_UCSR0B
XT_UCSR0B:
	.dw PFA_DOVARIABLE
PFA_UCSR0B:
	.dw $C1
; ( -- addr ) System Constant
; R( -- )
; USART Control and Status Register C
VE_UCSR0C:
	.dw $ff 6
	.db "UCSR0C"
	.dw VE_HEAD
	.set VE_HEAD=VE_UCSR0C
XT_UCSR0C:
	.dw PFA_DOVARIABLE
PFA_UCSR0C:
	.dw $C2
; ( -- addr ) System Constant
; R( -- )
; USART I/O Data Register
VE_UDR0:
	.dw $ff 4
	.db "UDR0"
	.dw VE_HEAD
	.set VE_HEAD=VE_UDR0
XT_UDR0:
	.dw PFA_DOVARIABLE
PFA_UDR0:
	.dw $C6

.endif

; ********
.ifdef WANT_USI
; ********
; ( -- addr ) System Constant
; R( -- )
; USI Control Register
VE_USICR:
	.dw $ff 5
	.db "USICR",0
	.dw VE_HEAD
	.set VE_HEAD=VE_USICR
XT_USICR:
	.dw PFA_DOVARIABLE
PFA_USICR:
	.dw $B8
; ( -- addr ) System Constant
; R( -- )
; USI Data Register
VE_USIDR:
	.dw $ff 5
	.db "USIDR",0
	.dw VE_HEAD
	.set VE_HEAD=VE_USIDR
XT_USIDR:
	.dw PFA_DOVARIABLE
PFA_USIDR:
	.dw $BA
; ( -- addr ) System Constant
; R( -- )
; USI Status Register
VE_USISR:
	.dw $ff 5
	.db "USISR",0
	.dw VE_HEAD
	.set VE_HEAD=VE_USISR
XT_USISR:
	.dw PFA_DOVARIABLE
PFA_USISR:
	.dw $B9

.endif

; ********
.ifdef WANT_WATCHDOG
; ********
; ( -- addr ) System Constant
; R( -- )
; Watchdog Timer Control Register
VE_WDTCR:
	.dw $ff 5
	.db "WDTCR",0
	.dw VE_HEAD
	.set VE_HEAD=VE_WDTCR
XT_WDTCR:
	.dw PFA_DOVARIABLE
PFA_WDTCR:
	.dw $60

.endif
