; Partname:  ATmega128RFA1
; Built using part description XML file version 1
; generated automatically, no not edit

; ********
.if WANT_AD_CONVERTER == 1
; ********
; ( -- addr ) System Constant
; R( -- )
; ADC Data Register High Byte
VE_ADCH:
	.dw $ff04
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
	.dw $ff04
	.db "ADCL"
	.dw VE_HEAD
	.set VE_HEAD=VE_ADCL
XT_ADCL:
	.dw PFA_DOVARIABLE
PFA_ADCL:
	.dw $78
; ( -- addr ) System Constant
; R( -- )
; The ADC Control and Status Register A
VE_ADCSRA:
	.dw $ff06
	.db "ADCSRA"
	.dw VE_HEAD
	.set VE_HEAD=VE_ADCSRA
XT_ADCSRA:
	.dw PFA_DOVARIABLE
PFA_ADCSRA:
	.dw $7A
; ( -- addr ) System Constant
; R( -- )
; The ADC Control and Status Register B
VE_ADCSRB:
	.dw $ff06
	.db "ADCSRB"
	.dw VE_HEAD
	.set VE_HEAD=VE_ADCSRB
XT_ADCSRB:
	.dw PFA_DOVARIABLE
PFA_ADCSRB:
	.dw $7B
; ( -- addr ) System Constant
; R( -- )
; The ADC Control and Status Register C
VE_ADCSRC:
	.dw $ff06
	.db "ADCSRC"
	.dw VE_HEAD
	.set VE_HEAD=VE_ADCSRC
XT_ADCSRC:
	.dw PFA_DOVARIABLE
PFA_ADCSRC:
	.dw $77
; ( -- addr ) System Constant
; R( -- )
; The ADC Multiplexer Selection Register
VE_ADMUX:
	.dw $ff05
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
	.dw $ff05
	.db "DIDR0",0
	.dw VE_HEAD
	.set VE_HEAD=VE_DIDR0
XT_DIDR0:
	.dw PFA_DOVARIABLE
PFA_DIDR0:
	.dw $7E
; ( -- addr ) System Constant
; R( -- )
; Digital Input Disable Register 2
VE_DIDR2:
	.dw $ff05
	.db "DIDR2",0
	.dw VE_HEAD
	.set VE_HEAD=VE_DIDR2
XT_DIDR2:
	.dw PFA_DOVARIABLE
PFA_DIDR2:
	.dw $7D

.endif

; ********
.if WANT_ANALOG_COMPARATOR == 1
; ********
; ( -- addr ) System Constant
; R( -- )
; Analog Comparator Control And Status Register
VE_ACSR:
	.dw $ff04
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
	.dw $ff05
	.db "DIDR1",0
	.dw VE_HEAD
	.set VE_HEAD=VE_DIDR1
XT_DIDR1:
	.dw PFA_DOVARIABLE
PFA_DIDR1:
	.dw $7F

.endif

; ********
.if WANT_BOOT_LOAD == 1
; ********
; ( -- addr ) System Constant
; R( -- )
; Store Program Memory Control Register
VE_SPMCSR:
	.dw $ff06
	.db "SPMCSR"
	.dw VE_HEAD
	.set VE_HEAD=VE_SPMCSR
XT_SPMCSR:
	.dw PFA_DOVARIABLE
PFA_SPMCSR:
	.dw $57

.endif

; ********
.if WANT_CPU == 1
; ********
; ( -- addr ) System Constant
; R( -- )
; Clock Prescale Register
VE_CLKPR:
	.dw $ff05
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
	.dw $ff06
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
	.dw $ff06
	.db "GPIOR1"
	.dw VE_HEAD
	.set VE_HEAD=VE_GPIOR1
XT_GPIOR1:
	.dw PFA_DOVARIABLE
PFA_GPIOR1:
	.dw $4A
; ( -- addr ) System Constant
; R( -- )
; General Purpose I/O Register 2
VE_GPIOR2:
	.dw $ff06
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
	.dw $ff05
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
	.dw $ff05
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
	.dw $ff06
	.db "OSCCAL"
	.dw VE_HEAD
	.set VE_HEAD=VE_OSCCAL
XT_OSCCAL:
	.dw PFA_DOVARIABLE
PFA_OSCCAL:
	.dw $66
; ( -- addr ) System Constant
; R( -- )
; Power Reduction Register0
VE_PRR0:
	.dw $ff04
	.db "PRR0"
	.dw VE_HEAD
	.set VE_HEAD=VE_PRR0
XT_PRR0:
	.dw PFA_DOVARIABLE
PFA_PRR0:
	.dw $64
; ( -- addr ) System Constant
; R( -- )
; Power Reduction Register 1
VE_PRR1:
	.dw $ff04
	.db "PRR1"
	.dw VE_HEAD
	.set VE_HEAD=VE_PRR1
XT_PRR1:
	.dw PFA_DOVARIABLE
PFA_PRR1:
	.dw $65
; ( -- addr ) System Constant
; R( -- )
; Power Reduction Register 2
VE_PRR2:
	.dw $ff04
	.db "PRR2"
	.dw VE_HEAD
	.set VE_HEAD=VE_PRR2
XT_PRR2:
	.dw PFA_DOVARIABLE
PFA_PRR2:
	.dw $63
; ( -- addr ) System Constant
; R( -- )
; Extended Z-pointer Register for ELPM/SPM
VE_RAMPZ:
	.dw $ff05
	.db "RAMPZ",0
	.dw VE_HEAD
	.set VE_HEAD=VE_RAMPZ
XT_RAMPZ:
	.dw PFA_DOVARIABLE
PFA_RAMPZ:
	.dw $5B
; ( -- addr ) System Constant
; R( -- )
; Sleep Mode Control Register
VE_SMCR:
	.dw $ff04
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
	.dw $ff03
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
	.dw $ff03
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
	.dw $ff04
	.db "SREG"
	.dw VE_HEAD
	.set VE_HEAD=VE_SREG
XT_SREG:
	.dw PFA_DOVARIABLE
PFA_SREG:
	.dw $5F

.endif

; ********
.if WANT_EEPROM == 1
; ********
; ( -- addr ) System Constant
; R( -- )
; EEPROM Address Register High Byte
VE_EEARH:
	.dw $ff05
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
	.dw $ff05
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
	.dw $ff04
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
	.dw $ff04
	.db "EEDR"
	.dw VE_HEAD
	.set VE_HEAD=VE_EEDR
XT_EEDR:
	.dw PFA_DOVARIABLE
PFA_EEDR:
	.dw $40

.endif

; ********
.if WANT_EXTERNAL_INTERRUPT == 1
; ********
; ( -- addr ) System Constant
; R( -- )
; External Interrupt Control Register A
VE_EICRA:
	.dw $ff05
	.db "EICRA",0
	.dw VE_HEAD
	.set VE_HEAD=VE_EICRA
XT_EICRA:
	.dw PFA_DOVARIABLE
PFA_EICRA:
	.dw $69
; ( -- addr ) System Constant
; R( -- )
; External Interrupt Control Register B
VE_EICRB:
	.dw $ff05
	.db "EICRB",0
	.dw VE_HEAD
	.set VE_HEAD=VE_EICRB
XT_EICRB:
	.dw PFA_DOVARIABLE
PFA_EICRB:
	.dw $6A
; ( -- addr ) System Constant
; R( -- )
; External Interrupt Flag Register
VE_EIFR:
	.dw $ff04
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
	.dw $ff05
	.db "EIMSK",0
	.dw VE_HEAD
	.set VE_HEAD=VE_EIMSK
XT_EIMSK:
	.dw PFA_DOVARIABLE
PFA_EIMSK:
	.dw $3D
; ( -- addr ) System Constant
; R( -- )
; Pin Change Interrupt Control Register
VE_PCICR:
	.dw $ff05
	.db "PCICR",0
	.dw VE_HEAD
	.set VE_HEAD=VE_PCICR
XT_PCICR:
	.dw PFA_DOVARIABLE
PFA_PCICR:
	.dw $68
; ( -- addr ) System Constant
; R( -- )
; Pin Change Interrupt Flag Register
VE_PCIFR:
	.dw $ff05
	.db "PCIFR",0
	.dw VE_HEAD
	.set VE_HEAD=VE_PCIFR
XT_PCIFR:
	.dw PFA_DOVARIABLE
PFA_PCIFR:
	.dw $3B
; ( -- addr ) System Constant
; R( -- )
; Pin Change Mask Register 0
VE_PCMSK0:
	.dw $ff06
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
	.dw $ff06
	.db "PCMSK1"
	.dw VE_HEAD
	.set VE_HEAD=VE_PCMSK1
XT_PCMSK1:
	.dw PFA_DOVARIABLE
PFA_PCMSK1:
	.dw $6C
; ( -- addr ) System Constant
; R( -- )
; Pin Change Mask Register 2
VE_PCMSK2:
	.dw $ff06
	.db "PCMSK2"
	.dw VE_HEAD
	.set VE_HEAD=VE_PCMSK2
XT_PCMSK2:
	.dw PFA_DOVARIABLE
PFA_PCMSK2:
	.dw $6D

.endif

; ********
.if WANT_FLASH == 1
; ********
; ( -- addr ) System Constant
; R( -- )
; Reference Voltage Calibration Register
VE_BGCR:
	.dw $ff04
	.db "BGCR"
	.dw VE_HEAD
	.set VE_HEAD=VE_BGCR
XT_BGCR:
	.dw PFA_DOVARIABLE
PFA_BGCR:
	.dw $67
; ( -- addr ) System Constant
; R( -- )
; Flash Extended-Mode Control-Register
VE_NEMCR:
	.dw $ff05
	.db "NEMCR",0
	.dw VE_HEAD
	.set VE_HEAD=VE_NEMCR
XT_NEMCR:
	.dw PFA_DOVARIABLE
PFA_NEMCR:
	.dw $75

.endif

; ********
.if WANT_JTAG == 1
; ********
; ( -- addr ) System Constant
; R( -- )
; On-Chip Debug Register
VE_OCDR:
	.dw $ff04
	.db "OCDR"
	.dw VE_HEAD
	.set VE_HEAD=VE_OCDR
XT_OCDR:
	.dw PFA_DOVARIABLE
PFA_OCDR:
	.dw $51

.endif

; ********
.if WANT_PORTA == 1
; ********
; ( -- addr ) System Constant
; R( -- )
; Port A Data Direction Register
VE_DDRA:
	.dw $ff04
	.db "DDRA"
	.dw VE_HEAD
	.set VE_HEAD=VE_DDRA
XT_DDRA:
	.dw PFA_DOVARIABLE
PFA_DDRA:
	.dw $21
; ( -- addr ) System Constant
; R( -- )
; Port A Input Pins Address
VE_PINA:
	.dw $ff04
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
	.dw $ff05
	.db "PORTA",0
	.dw VE_HEAD
	.set VE_HEAD=VE_PORTA
XT_PORTA:
	.dw PFA_DOVARIABLE
PFA_PORTA:
	.dw $22

.endif

; ********
.if WANT_PORTB == 1
; ********
; ( -- addr ) System Constant
; R( -- )
; Port B Data Direction Register
VE_DDRB:
	.dw $ff04
	.db "DDRB"
	.dw VE_HEAD
	.set VE_HEAD=VE_DDRB
XT_DDRB:
	.dw PFA_DOVARIABLE
PFA_DDRB:
	.dw $24
; ( -- addr ) System Constant
; R( -- )
; Port B Input Pins Address
VE_PINB:
	.dw $ff04
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
	.dw $ff05
	.db "PORTB",0
	.dw VE_HEAD
	.set VE_HEAD=VE_PORTB
XT_PORTB:
	.dw PFA_DOVARIABLE
PFA_PORTB:
	.dw $25

.endif

; ********
.if WANT_PORTC == 1
; ********
; ( -- addr ) System Constant
; R( -- )
; Port C Data Direction Register
VE_DDRC:
	.dw $ff04
	.db "DDRC"
	.dw VE_HEAD
	.set VE_HEAD=VE_DDRC
XT_DDRC:
	.dw PFA_DOVARIABLE
PFA_DDRC:
	.dw $27
; ( -- addr ) System Constant
; R( -- )
; Port C Input Pins Address
VE_PINC:
	.dw $ff04
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
	.dw $ff05
	.db "PORTC",0
	.dw VE_HEAD
	.set VE_HEAD=VE_PORTC
XT_PORTC:
	.dw PFA_DOVARIABLE
PFA_PORTC:
	.dw $28

.endif

; ********
.if WANT_PORTD == 1
; ********
; ( -- addr ) System Constant
; R( -- )
; Port D Data Direction Register
VE_DDRD:
	.dw $ff04
	.db "DDRD"
	.dw VE_HEAD
	.set VE_HEAD=VE_DDRD
XT_DDRD:
	.dw PFA_DOVARIABLE
PFA_DDRD:
	.dw $2A
; ( -- addr ) System Constant
; R( -- )
; Port D Input Pins Address
VE_PIND:
	.dw $ff04
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
	.dw $ff05
	.db "PORTD",0
	.dw VE_HEAD
	.set VE_HEAD=VE_PORTD
XT_PORTD:
	.dw PFA_DOVARIABLE
PFA_PORTD:
	.dw $2B

.endif

; ********
.if WANT_PORTE == 1
; ********
; ( -- addr ) System Constant
; R( -- )
; Port E Data Direction Register
VE_DDRE:
	.dw $ff04
	.db "DDRE"
	.dw VE_HEAD
	.set VE_HEAD=VE_DDRE
XT_DDRE:
	.dw PFA_DOVARIABLE
PFA_DDRE:
	.dw $2D
; ( -- addr ) System Constant
; R( -- )
; Port E Input Pins Address
VE_PINE:
	.dw $ff04
	.db "PINE"
	.dw VE_HEAD
	.set VE_HEAD=VE_PINE
XT_PINE:
	.dw PFA_DOVARIABLE
PFA_PINE:
	.dw $2C
; ( -- addr ) System Constant
; R( -- )
; Port E Data Register
VE_PORTE:
	.dw $ff05
	.db "PORTE",0
	.dw VE_HEAD
	.set VE_HEAD=VE_PORTE
XT_PORTE:
	.dw PFA_DOVARIABLE
PFA_PORTE:
	.dw $2E

.endif

; ********
.if WANT_PORTF == 1
; ********
; ( -- addr ) System Constant
; R( -- )
; Port F Data Direction Register
VE_DDRF:
	.dw $ff04
	.db "DDRF"
	.dw VE_HEAD
	.set VE_HEAD=VE_DDRF
XT_DDRF:
	.dw PFA_DOVARIABLE
PFA_DDRF:
	.dw $30
; ( -- addr ) System Constant
; R( -- )
; Port F Input Pins Address
VE_PINF:
	.dw $ff04
	.db "PINF"
	.dw VE_HEAD
	.set VE_HEAD=VE_PINF
XT_PINF:
	.dw PFA_DOVARIABLE
PFA_PINF:
	.dw $2F
; ( -- addr ) System Constant
; R( -- )
; Port F Data Register
VE_PORTF:
	.dw $ff05
	.db "PORTF",0
	.dw VE_HEAD
	.set VE_HEAD=VE_PORTF
XT_PORTF:
	.dw PFA_DOVARIABLE
PFA_PORTF:
	.dw $31

.endif

; ********
.if WANT_PORTG == 1
; ********
; ( -- addr ) System Constant
; R( -- )
; Port G Data Direction Register
VE_DDRG:
	.dw $ff04
	.db "DDRG"
	.dw VE_HEAD
	.set VE_HEAD=VE_DDRG
XT_DDRG:
	.dw PFA_DOVARIABLE
PFA_DDRG:
	.dw $33
; ( -- addr ) System Constant
; R( -- )
; Port G Input Pins Address
VE_PING:
	.dw $ff04
	.db "PING"
	.dw VE_HEAD
	.set VE_HEAD=VE_PING
XT_PING:
	.dw PFA_DOVARIABLE
PFA_PING:
	.dw $32
; ( -- addr ) System Constant
; R( -- )
; Port G Data Register
VE_PORTG:
	.dw $ff05
	.db "PORTG",0
	.dw VE_HEAD
	.set VE_HEAD=VE_PORTG
XT_PORTG:
	.dw PFA_DOVARIABLE
PFA_PORTG:
	.dw $34

.endif

; ********
.if WANT_PWRCTRL == 1
; ********
; ( -- addr ) System Constant
; R( -- )
; Port Driver Strength Register 0
VE_DPDS0:
	.dw $ff05
	.db "DPDS0",0
	.dw VE_HEAD
	.set VE_HEAD=VE_DPDS0
XT_DPDS0:
	.dw PFA_DOVARIABLE
PFA_DPDS0:
	.dw $136
; ( -- addr ) System Constant
; R( -- )
; Port Driver Strength Register 1
VE_DPDS1:
	.dw $ff05
	.db "DPDS1",0
	.dw VE_HEAD
	.set VE_HEAD=VE_DPDS1
XT_DPDS1:
	.dw PFA_DOVARIABLE
PFA_DPDS1:
	.dw $137
; ( -- addr ) System Constant
; R( -- )
; Data Retention Configuration Register of SRAM 0
VE_DRTRAM0:
	.dw $ff07
	.db "DRTRAM0",0
	.dw VE_HEAD
	.set VE_HEAD=VE_DRTRAM0
XT_DRTRAM0:
	.dw PFA_DOVARIABLE
PFA_DRTRAM0:
	.dw $135
; ( -- addr ) System Constant
; R( -- )
; Data Retention Configuration Register of SRAM 1
VE_DRTRAM1:
	.dw $ff07
	.db "DRTRAM1",0
	.dw VE_HEAD
	.set VE_HEAD=VE_DRTRAM1
XT_DRTRAM1:
	.dw PFA_DOVARIABLE
PFA_DRTRAM1:
	.dw $134
; ( -- addr ) System Constant
; R( -- )
; Data Retention Configuration Register of SRAM 2
VE_DRTRAM2:
	.dw $ff07
	.db "DRTRAM2",0
	.dw VE_HEAD
	.set VE_HEAD=VE_DRTRAM2
XT_DRTRAM2:
	.dw PFA_DOVARIABLE
PFA_DRTRAM2:
	.dw $133
; ( -- addr ) System Constant
; R( -- )
; Data Retention Configuration Register of SRAM 3
VE_DRTRAM3:
	.dw $ff07
	.db "DRTRAM3",0
	.dw VE_HEAD
	.set VE_HEAD=VE_DRTRAM3
XT_DRTRAM3:
	.dw PFA_DOVARIABLE
PFA_DRTRAM3:
	.dw $132
; ( -- addr ) System Constant
; R( -- )
; Low Leakage Voltage Regulator Control Register
VE_LLCR:
	.dw $ff04
	.db "LLCR"
	.dw VE_HEAD
	.set VE_HEAD=VE_LLCR
XT_LLCR:
	.dw PFA_DOVARIABLE
PFA_LLCR:
	.dw $12F
; ( -- addr ) System Constant
; R( -- )
; Low Leakage Voltage Regulator Data Register (High-Byte)
VE_LLDRH:
	.dw $ff05
	.db "LLDRH",0
	.dw VE_HEAD
	.set VE_HEAD=VE_LLDRH
XT_LLDRH:
	.dw PFA_DOVARIABLE
PFA_LLDRH:
	.dw $131
; ( -- addr ) System Constant
; R( -- )
; Low Leakage Voltage Regulator Data Register (Low-Byte)
VE_LLDRL:
	.dw $ff05
	.db "LLDRL",0
	.dw VE_HEAD
	.set VE_HEAD=VE_LLDRL
XT_LLDRL:
	.dw PFA_DOVARIABLE
PFA_LLDRL:
	.dw $130
; ( -- addr ) System Constant
; R( -- )
; Transceiver Pin Register
VE_TRXPR:
	.dw $ff05
	.db "TRXPR",0
	.dw VE_HEAD
	.set VE_HEAD=VE_TRXPR
XT_TRXPR:
	.dw PFA_DOVARIABLE
PFA_TRXPR:
	.dw $139

.endif

; ********
.if WANT_SPI == 1
; ********
; ( -- addr ) System Constant
; R( -- )
; SPI Control Register
VE_SPCR:
	.dw $ff04
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
	.dw $ff04
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
	.dw $ff04
	.db "SPSR"
	.dw VE_HEAD
	.set VE_HEAD=VE_SPSR
XT_SPSR:
	.dw PFA_DOVARIABLE
PFA_SPSR:
	.dw $4D

.endif

; ********
.if WANT_SYMCNT == 1
; ********
; ( -- addr ) System Constant
; R( -- )
; Symbol Counter Beacon Timestamp Register HH-Byte
VE_SCBTSRHH:
	.dw $ff08
	.db "SCBTSRHH"
	.dw VE_HEAD
	.set VE_HEAD=VE_SCBTSRHH
XT_SCBTSRHH:
	.dw PFA_DOVARIABLE
PFA_SCBTSRHH:
	.dw $E8
; ( -- addr ) System Constant
; R( -- )
; Symbol Counter Beacon Timestamp Register HL-Byte
VE_SCBTSRHL:
	.dw $ff08
	.db "SCBTSRHL"
	.dw VE_HEAD
	.set VE_HEAD=VE_SCBTSRHL
XT_SCBTSRHL:
	.dw PFA_DOVARIABLE
PFA_SCBTSRHL:
	.dw $E7
; ( -- addr ) System Constant
; R( -- )
; Symbol Counter Beacon Timestamp Register LH-Byte
VE_SCBTSRLH:
	.dw $ff08
	.db "SCBTSRLH"
	.dw VE_HEAD
	.set VE_HEAD=VE_SCBTSRLH
XT_SCBTSRLH:
	.dw PFA_DOVARIABLE
PFA_SCBTSRLH:
	.dw $E6
; ( -- addr ) System Constant
; R( -- )
; Symbol Counter Beacon Timestamp Register LL-Byte
VE_SCBTSRLL:
	.dw $ff08
	.db "SCBTSRLL"
	.dw VE_HEAD
	.set VE_HEAD=VE_SCBTSRLL
XT_SCBTSRLL:
	.dw PFA_DOVARIABLE
PFA_SCBTSRLL:
	.dw $E5
; ( -- addr ) System Constant
; R( -- )
; Symbol Counter Register HH-Byte
VE_SCCNTHH:
	.dw $ff07
	.db "SCCNTHH",0
	.dw VE_HEAD
	.set VE_HEAD=VE_SCCNTHH
XT_SCCNTHH:
	.dw PFA_DOVARIABLE
PFA_SCCNTHH:
	.dw $E4
; ( -- addr ) System Constant
; R( -- )
; Symbol Counter Register HL-Byte
VE_SCCNTHL:
	.dw $ff07
	.db "SCCNTHL",0
	.dw VE_HEAD
	.set VE_HEAD=VE_SCCNTHL
XT_SCCNTHL:
	.dw PFA_DOVARIABLE
PFA_SCCNTHL:
	.dw $E3
; ( -- addr ) System Constant
; R( -- )
; Symbol Counter Register LH-Byte
VE_SCCNTLH:
	.dw $ff07
	.db "SCCNTLH",0
	.dw VE_HEAD
	.set VE_HEAD=VE_SCCNTLH
XT_SCCNTLH:
	.dw PFA_DOVARIABLE
PFA_SCCNTLH:
	.dw $E2
; ( -- addr ) System Constant
; R( -- )
; Symbol Counter Register LL-Byte
VE_SCCNTLL:
	.dw $ff07
	.db "SCCNTLL",0
	.dw VE_HEAD
	.set VE_HEAD=VE_SCCNTLL
XT_SCCNTLL:
	.dw PFA_DOVARIABLE
PFA_SCCNTLL:
	.dw $E1
; ( -- addr ) System Constant
; R( -- )
; Symbol Counter Control Register 0
VE_SCCR0:
	.dw $ff05
	.db "SCCR0",0
	.dw VE_HEAD
	.set VE_HEAD=VE_SCCR0
XT_SCCR0:
	.dw PFA_DOVARIABLE
PFA_SCCR0:
	.dw $DC
; ( -- addr ) System Constant
; R( -- )
; Symbol Counter Control Register 1
VE_SCCR1:
	.dw $ff05
	.db "SCCR1",0
	.dw VE_HEAD
	.set VE_HEAD=VE_SCCR1
XT_SCCR1:
	.dw PFA_DOVARIABLE
PFA_SCCR1:
	.dw $DD
; ( -- addr ) System Constant
; R( -- )
; Symbol Counter Interrupt Mask Register
VE_SCIRQM:
	.dw $ff06
	.db "SCIRQM"
	.dw VE_HEAD
	.set VE_HEAD=VE_SCIRQM
XT_SCIRQM:
	.dw PFA_DOVARIABLE
PFA_SCIRQM:
	.dw $DF
; ( -- addr ) System Constant
; R( -- )
; Symbol Counter Interrupt Status Register
VE_SCIRQS:
	.dw $ff06
	.db "SCIRQS"
	.dw VE_HEAD
	.set VE_HEAD=VE_SCIRQS
XT_SCIRQS:
	.dw PFA_DOVARIABLE
PFA_SCIRQS:
	.dw $E0
; ( -- addr ) System Constant
; R( -- )
; Symbol Counter Output Compare Register 1 HH-Byte
VE_SCOCR1HH:
	.dw $ff08
	.db "SCOCR1HH"
	.dw VE_HEAD
	.set VE_HEAD=VE_SCOCR1HH
XT_SCOCR1HH:
	.dw PFA_DOVARIABLE
PFA_SCOCR1HH:
	.dw $F8
; ( -- addr ) System Constant
; R( -- )
; Symbol Counter Output Compare Register 1 HL-Byte
VE_SCOCR1HL:
	.dw $ff08
	.db "SCOCR1HL"
	.dw VE_HEAD
	.set VE_HEAD=VE_SCOCR1HL
XT_SCOCR1HL:
	.dw PFA_DOVARIABLE
PFA_SCOCR1HL:
	.dw $F7
; ( -- addr ) System Constant
; R( -- )
; Symbol Counter Output Compare Register 1 LH-Byte
VE_SCOCR1LH:
	.dw $ff08
	.db "SCOCR1LH"
	.dw VE_HEAD
	.set VE_HEAD=VE_SCOCR1LH
XT_SCOCR1LH:
	.dw PFA_DOVARIABLE
PFA_SCOCR1LH:
	.dw $F6
; ( -- addr ) System Constant
; R( -- )
; Symbol Counter Output Compare Register 1 LL-Byte
VE_SCOCR1LL:
	.dw $ff08
	.db "SCOCR1LL"
	.dw VE_HEAD
	.set VE_HEAD=VE_SCOCR1LL
XT_SCOCR1LL:
	.dw PFA_DOVARIABLE
PFA_SCOCR1LL:
	.dw $F5
; ( -- addr ) System Constant
; R( -- )
; Symbol Counter Output Compare Register 2 HH-Byte
VE_SCOCR2HH:
	.dw $ff08
	.db "SCOCR2HH"
	.dw VE_HEAD
	.set VE_HEAD=VE_SCOCR2HH
XT_SCOCR2HH:
	.dw PFA_DOVARIABLE
PFA_SCOCR2HH:
	.dw $F4
; ( -- addr ) System Constant
; R( -- )
; Symbol Counter Output Compare Register 2 HL-Byte
VE_SCOCR2HL:
	.dw $ff08
	.db "SCOCR2HL"
	.dw VE_HEAD
	.set VE_HEAD=VE_SCOCR2HL
XT_SCOCR2HL:
	.dw PFA_DOVARIABLE
PFA_SCOCR2HL:
	.dw $F3
; ( -- addr ) System Constant
; R( -- )
; Symbol Counter Output Compare Register 2 LH-Byte
VE_SCOCR2LH:
	.dw $ff08
	.db "SCOCR2LH"
	.dw VE_HEAD
	.set VE_HEAD=VE_SCOCR2LH
XT_SCOCR2LH:
	.dw PFA_DOVARIABLE
PFA_SCOCR2LH:
	.dw $F2
; ( -- addr ) System Constant
; R( -- )
; Symbol Counter Output Compare Register 2 LL-Byte
VE_SCOCR2LL:
	.dw $ff08
	.db "SCOCR2LL"
	.dw VE_HEAD
	.set VE_HEAD=VE_SCOCR2LL
XT_SCOCR2LL:
	.dw PFA_DOVARIABLE
PFA_SCOCR2LL:
	.dw $F1
; ( -- addr ) System Constant
; R( -- )
; Symbol Counter Output Compare Register 3 HH-Byte
VE_SCOCR3HH:
	.dw $ff08
	.db "SCOCR3HH"
	.dw VE_HEAD
	.set VE_HEAD=VE_SCOCR3HH
XT_SCOCR3HH:
	.dw PFA_DOVARIABLE
PFA_SCOCR3HH:
	.dw $F0
; ( -- addr ) System Constant
; R( -- )
; Symbol Counter Output Compare Register 3 HL-Byte
VE_SCOCR3HL:
	.dw $ff08
	.db "SCOCR3HL"
	.dw VE_HEAD
	.set VE_HEAD=VE_SCOCR3HL
XT_SCOCR3HL:
	.dw PFA_DOVARIABLE
PFA_SCOCR3HL:
	.dw $EF
; ( -- addr ) System Constant
; R( -- )
; Symbol Counter Output Compare Register 3 LH-Byte
VE_SCOCR3LH:
	.dw $ff08
	.db "SCOCR3LH"
	.dw VE_HEAD
	.set VE_HEAD=VE_SCOCR3LH
XT_SCOCR3LH:
	.dw PFA_DOVARIABLE
PFA_SCOCR3LH:
	.dw $EE
; ( -- addr ) System Constant
; R( -- )
; Symbol Counter Output Compare Register 3 LL-Byte
VE_SCOCR3LL:
	.dw $ff08
	.db "SCOCR3LL"
	.dw VE_HEAD
	.set VE_HEAD=VE_SCOCR3LL
XT_SCOCR3LL:
	.dw PFA_DOVARIABLE
PFA_SCOCR3LL:
	.dw $ED
; ( -- addr ) System Constant
; R( -- )
; Symbol Counter Status Register
VE_SCSR:
	.dw $ff04
	.db "SCSR"
	.dw VE_HEAD
	.set VE_HEAD=VE_SCSR
XT_SCSR:
	.dw PFA_DOVARIABLE
PFA_SCSR:
	.dw $DE
; ( -- addr ) System Constant
; R( -- )
; Symbol Counter Frame Timestamp Register HH-Byte
VE_SCTSRHH:
	.dw $ff07
	.db "SCTSRHH",0
	.dw VE_HEAD
	.set VE_HEAD=VE_SCTSRHH
XT_SCTSRHH:
	.dw PFA_DOVARIABLE
PFA_SCTSRHH:
	.dw $EC
; ( -- addr ) System Constant
; R( -- )
; Symbol Counter Frame Timestamp Register HL-Byte
VE_SCTSRHL:
	.dw $ff07
	.db "SCTSRHL",0
	.dw VE_HEAD
	.set VE_HEAD=VE_SCTSRHL
XT_SCTSRHL:
	.dw PFA_DOVARIABLE
PFA_SCTSRHL:
	.dw $EB
; ( -- addr ) System Constant
; R( -- )
; Symbol Counter Frame Timestamp Register LH-Byte
VE_SCTSRLH:
	.dw $ff07
	.db "SCTSRLH",0
	.dw VE_HEAD
	.set VE_HEAD=VE_SCTSRLH
XT_SCTSRLH:
	.dw PFA_DOVARIABLE
PFA_SCTSRLH:
	.dw $EA
; ( -- addr ) System Constant
; R( -- )
; Symbol Counter Frame Timestamp Register LL-Byte
VE_SCTSRLL:
	.dw $ff07
	.db "SCTSRLL",0
	.dw VE_HEAD
	.set VE_HEAD=VE_SCTSRLL
XT_SCTSRLL:
	.dw PFA_DOVARIABLE
PFA_SCTSRLL:
	.dw $E9

.endif

; ********
.if WANT_TIMER_COUNTER_0 == 1
; ********
; ( -- addr ) System Constant
; R( -- )
; General Timer/Counter Control Register
VE_GTCCR:
	.dw $ff05
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
	.dw $ff05
	.db "OCR0A",0
	.dw VE_HEAD
	.set VE_HEAD=VE_OCR0A
XT_OCR0A:
	.dw PFA_DOVARIABLE
PFA_OCR0A:
	.dw $47
; ( -- addr ) System Constant
; R( -- )
; Timer/Counter0 Output Compare Register B
VE_OCR0B:
	.dw $ff05
	.db "OCR0B",0
	.dw VE_HEAD
	.set VE_HEAD=VE_OCR0B
XT_OCR0B:
	.dw PFA_DOVARIABLE
PFA_OCR0B:
	.dw $48
; ( -- addr ) System Constant
; R( -- )
; Timer/Counter0 Control Register A
VE_TCCR0A:
	.dw $ff06
	.db "TCCR0A"
	.dw VE_HEAD
	.set VE_HEAD=VE_TCCR0A
XT_TCCR0A:
	.dw PFA_DOVARIABLE
PFA_TCCR0A:
	.dw $44
; ( -- addr ) System Constant
; R( -- )
; Timer/Counter0 Control Register B
VE_TCCR0B:
	.dw $ff06
	.db "TCCR0B"
	.dw VE_HEAD
	.set VE_HEAD=VE_TCCR0B
XT_TCCR0B:
	.dw PFA_DOVARIABLE
PFA_TCCR0B:
	.dw $45
; ( -- addr ) System Constant
; R( -- )
; Timer/Counter0 Register
VE_TCNT0:
	.dw $ff05
	.db "TCNT0",0
	.dw VE_HEAD
	.set VE_HEAD=VE_TCNT0
XT_TCNT0:
	.dw PFA_DOVARIABLE
PFA_TCNT0:
	.dw $46
; ( -- addr ) System Constant
; R( -- )
; Timer/Counter0 Interrupt Flag Register
VE_TIFR0:
	.dw $ff05
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
	.dw $ff06
	.db "TIMSK0"
	.dw VE_HEAD
	.set VE_HEAD=VE_TIMSK0
XT_TIMSK0:
	.dw PFA_DOVARIABLE
PFA_TIMSK0:
	.dw $6E

.endif

; ********
.if WANT_TIMER_COUNTER_1 == 1
; ********
; ( -- addr ) System Constant
; R( -- )
; Timer/Counter1 Input Capture Register High Byte
VE_ICR1H:
	.dw $ff05
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
	.dw $ff05
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
	.dw $ff06
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
	.dw $ff06
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
	.dw $ff06
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
	.dw $ff06
	.db "OCR1BL"
	.dw VE_HEAD
	.set VE_HEAD=VE_OCR1BL
XT_OCR1BL:
	.dw PFA_DOVARIABLE
PFA_OCR1BL:
	.dw $8A
; ( -- addr ) System Constant
; R( -- )
; Timer/Counter1 Output Compare Register C High Byte
VE_OCR1CH:
	.dw $ff06
	.db "OCR1CH"
	.dw VE_HEAD
	.set VE_HEAD=VE_OCR1CH
XT_OCR1CH:
	.dw PFA_DOVARIABLE
PFA_OCR1CH:
	.dw $8D
; ( -- addr ) System Constant
; R( -- )
; Timer/Counter1 Output Compare Register C Low Byte
VE_OCR1CL:
	.dw $ff06
	.db "OCR1CL"
	.dw VE_HEAD
	.set VE_HEAD=VE_OCR1CL
XT_OCR1CL:
	.dw PFA_DOVARIABLE
PFA_OCR1CL:
	.dw $8C
; ( -- addr ) System Constant
; R( -- )
; Timer/Counter1 Control Register A
VE_TCCR1A:
	.dw $ff06
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
	.dw $ff06
	.db "TCCR1B"
	.dw VE_HEAD
	.set VE_HEAD=VE_TCCR1B
XT_TCCR1B:
	.dw PFA_DOVARIABLE
PFA_TCCR1B:
	.dw $81
; ( -- addr ) System Constant
; R( -- )
; Timer/Counter1 Control Register C
VE_TCCR1C:
	.dw $ff06
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
	.dw $ff06
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
	.dw $ff06
	.db "TCNT1L"
	.dw VE_HEAD
	.set VE_HEAD=VE_TCNT1L
XT_TCNT1L:
	.dw PFA_DOVARIABLE
PFA_TCNT1L:
	.dw $84
; ( -- addr ) System Constant
; R( -- )
; Timer/Counter1 Interrupt Flag Register
VE_TIFR1:
	.dw $ff05
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
	.dw $ff06
	.db "TIMSK1"
	.dw VE_HEAD
	.set VE_HEAD=VE_TIMSK1
XT_TIMSK1:
	.dw PFA_DOVARIABLE
PFA_TIMSK1:
	.dw $6F

.endif

; ********
.if WANT_TIMER_COUNTER_2 == 1
; ********
; ( -- addr ) System Constant
; R( -- )
; Asynchronous Status Register
VE_ASSR:
	.dw $ff04
	.db "ASSR"
	.dw VE_HEAD
	.set VE_HEAD=VE_ASSR
XT_ASSR:
	.dw PFA_DOVARIABLE
PFA_ASSR:
	.dw $B6
; ( -- addr ) System Constant
; R( -- )
; Timer/Counter2 Output Compare Register A
VE_OCR2A:
	.dw $ff05
	.db "OCR2A",0
	.dw VE_HEAD
	.set VE_HEAD=VE_OCR2A
XT_OCR2A:
	.dw PFA_DOVARIABLE
PFA_OCR2A:
	.dw $B3
; ( -- addr ) System Constant
; R( -- )
; Timer/Counter2 Output Compare Register B
VE_OCR2B:
	.dw $ff05
	.db "OCR2B",0
	.dw VE_HEAD
	.set VE_HEAD=VE_OCR2B
XT_OCR2B:
	.dw PFA_DOVARIABLE
PFA_OCR2B:
	.dw $B4
; ( -- addr ) System Constant
; R( -- )
; Timer/Counter2 Control Register A
VE_TCCR2A:
	.dw $ff06
	.db "TCCR2A"
	.dw VE_HEAD
	.set VE_HEAD=VE_TCCR2A
XT_TCCR2A:
	.dw PFA_DOVARIABLE
PFA_TCCR2A:
	.dw $B0
; ( -- addr ) System Constant
; R( -- )
; Timer/Counter2 Control Register B
VE_TCCR2B:
	.dw $ff06
	.db "TCCR2B"
	.dw VE_HEAD
	.set VE_HEAD=VE_TCCR2B
XT_TCCR2B:
	.dw PFA_DOVARIABLE
PFA_TCCR2B:
	.dw $B1
; ( -- addr ) System Constant
; R( -- )
; Timer/Counter2
VE_TCNT2:
	.dw $ff05
	.db "TCNT2",0
	.dw VE_HEAD
	.set VE_HEAD=VE_TCNT2
XT_TCNT2:
	.dw PFA_DOVARIABLE
PFA_TCNT2:
	.dw $B2
; ( -- addr ) System Constant
; R( -- )
; Timer/Counter Interrupt Flag Register
VE_TIFR2:
	.dw $ff05
	.db "TIFR2",0
	.dw VE_HEAD
	.set VE_HEAD=VE_TIFR2
XT_TIFR2:
	.dw PFA_DOVARIABLE
PFA_TIFR2:
	.dw $37
; ( -- addr ) System Constant
; R( -- )
; Timer/Counter Interrupt Mask register
VE_TIMSK2:
	.dw $ff06
	.db "TIMSK2"
	.dw VE_HEAD
	.set VE_HEAD=VE_TIMSK2
XT_TIMSK2:
	.dw PFA_DOVARIABLE
PFA_TIMSK2:
	.dw $70

.endif

; ********
.if WANT_TIMER_COUNTER_3 == 1
; ********
; ( -- addr ) System Constant
; R( -- )
; Timer/Counter3 Input Capture Register High Byte
VE_ICR3H:
	.dw $ff05
	.db "ICR3H",0
	.dw VE_HEAD
	.set VE_HEAD=VE_ICR3H
XT_ICR3H:
	.dw PFA_DOVARIABLE
PFA_ICR3H:
	.dw $97
; ( -- addr ) System Constant
; R( -- )
; Timer/Counter3 Input Capture Register Low Byte
VE_ICR3L:
	.dw $ff05
	.db "ICR3L",0
	.dw VE_HEAD
	.set VE_HEAD=VE_ICR3L
XT_ICR3L:
	.dw PFA_DOVARIABLE
PFA_ICR3L:
	.dw $96
; ( -- addr ) System Constant
; R( -- )
; Timer/Counter3 Output Compare Register A High Byte
VE_OCR3AH:
	.dw $ff06
	.db "OCR3AH"
	.dw VE_HEAD
	.set VE_HEAD=VE_OCR3AH
XT_OCR3AH:
	.dw PFA_DOVARIABLE
PFA_OCR3AH:
	.dw $99
; ( -- addr ) System Constant
; R( -- )
; Timer/Counter3 Output Compare Register A Low Byte
VE_OCR3AL:
	.dw $ff06
	.db "OCR3AL"
	.dw VE_HEAD
	.set VE_HEAD=VE_OCR3AL
XT_OCR3AL:
	.dw PFA_DOVARIABLE
PFA_OCR3AL:
	.dw $98
; ( -- addr ) System Constant
; R( -- )
; Timer/Counter3 Output Compare Register B High Byte
VE_OCR3BH:
	.dw $ff06
	.db "OCR3BH"
	.dw VE_HEAD
	.set VE_HEAD=VE_OCR3BH
XT_OCR3BH:
	.dw PFA_DOVARIABLE
PFA_OCR3BH:
	.dw $9B
; ( -- addr ) System Constant
; R( -- )
; Timer/Counter3 Output Compare Register B Low Byte
VE_OCR3BL:
	.dw $ff06
	.db "OCR3BL"
	.dw VE_HEAD
	.set VE_HEAD=VE_OCR3BL
XT_OCR3BL:
	.dw PFA_DOVARIABLE
PFA_OCR3BL:
	.dw $9A
; ( -- addr ) System Constant
; R( -- )
; Timer/Counter3 Output Compare Register C High Byte
VE_OCR3CH:
	.dw $ff06
	.db "OCR3CH"
	.dw VE_HEAD
	.set VE_HEAD=VE_OCR3CH
XT_OCR3CH:
	.dw PFA_DOVARIABLE
PFA_OCR3CH:
	.dw $9D
; ( -- addr ) System Constant
; R( -- )
; Timer/Counter3 Output Compare Register C Low Byte
VE_OCR3CL:
	.dw $ff06
	.db "OCR3CL"
	.dw VE_HEAD
	.set VE_HEAD=VE_OCR3CL
XT_OCR3CL:
	.dw PFA_DOVARIABLE
PFA_OCR3CL:
	.dw $9C
; ( -- addr ) System Constant
; R( -- )
; Timer/Counter3 Control Register A
VE_TCCR3A:
	.dw $ff06
	.db "TCCR3A"
	.dw VE_HEAD
	.set VE_HEAD=VE_TCCR3A
XT_TCCR3A:
	.dw PFA_DOVARIABLE
PFA_TCCR3A:
	.dw $90
; ( -- addr ) System Constant
; R( -- )
; Timer/Counter3 Control Register B
VE_TCCR3B:
	.dw $ff06
	.db "TCCR3B"
	.dw VE_HEAD
	.set VE_HEAD=VE_TCCR3B
XT_TCCR3B:
	.dw PFA_DOVARIABLE
PFA_TCCR3B:
	.dw $91
; ( -- addr ) System Constant
; R( -- )
; Timer/Counter3 Control Register C
VE_TCCR3C:
	.dw $ff06
	.db "TCCR3C"
	.dw VE_HEAD
	.set VE_HEAD=VE_TCCR3C
XT_TCCR3C:
	.dw PFA_DOVARIABLE
PFA_TCCR3C:
	.dw $92
; ( -- addr ) System Constant
; R( -- )
; Timer/Counter3 High Byte
VE_TCNT3H:
	.dw $ff06
	.db "TCNT3H"
	.dw VE_HEAD
	.set VE_HEAD=VE_TCNT3H
XT_TCNT3H:
	.dw PFA_DOVARIABLE
PFA_TCNT3H:
	.dw $95
; ( -- addr ) System Constant
; R( -- )
; Timer/Counter3 Low Byte
VE_TCNT3L:
	.dw $ff06
	.db "TCNT3L"
	.dw VE_HEAD
	.set VE_HEAD=VE_TCNT3L
XT_TCNT3L:
	.dw PFA_DOVARIABLE
PFA_TCNT3L:
	.dw $94
; ( -- addr ) System Constant
; R( -- )
; Timer/Counter3 Interrupt Flag Register
VE_TIFR3:
	.dw $ff05
	.db "TIFR3",0
	.dw VE_HEAD
	.set VE_HEAD=VE_TIFR3
XT_TIFR3:
	.dw PFA_DOVARIABLE
PFA_TIFR3:
	.dw $38
; ( -- addr ) System Constant
; R( -- )
; Timer/Counter3 Interrupt Mask Register
VE_TIMSK3:
	.dw $ff06
	.db "TIMSK3"
	.dw VE_HEAD
	.set VE_HEAD=VE_TIMSK3
XT_TIMSK3:
	.dw PFA_DOVARIABLE
PFA_TIMSK3:
	.dw $71

.endif

; ********
.if WANT_TIMER_COUNTER_4 == 1
; ********
; ( -- addr ) System Constant
; R( -- )
; Timer/Counter4 Input Capture Register High Byte
VE_ICR4H:
	.dw $ff05
	.db "ICR4H",0
	.dw VE_HEAD
	.set VE_HEAD=VE_ICR4H
XT_ICR4H:
	.dw PFA_DOVARIABLE
PFA_ICR4H:
	.dw $A7
; ( -- addr ) System Constant
; R( -- )
; Timer/Counter4 Input Capture Register Low Byte
VE_ICR4L:
	.dw $ff05
	.db "ICR4L",0
	.dw VE_HEAD
	.set VE_HEAD=VE_ICR4L
XT_ICR4L:
	.dw PFA_DOVARIABLE
PFA_ICR4L:
	.dw $A6
; ( -- addr ) System Constant
; R( -- )
; Timer/Counter4 Output Compare Register A High Byte
VE_OCR4AH:
	.dw $ff06
	.db "OCR4AH"
	.dw VE_HEAD
	.set VE_HEAD=VE_OCR4AH
XT_OCR4AH:
	.dw PFA_DOVARIABLE
PFA_OCR4AH:
	.dw $A9
; ( -- addr ) System Constant
; R( -- )
; Timer/Counter4 Output Compare Register A Low Byte
VE_OCR4AL:
	.dw $ff06
	.db "OCR4AL"
	.dw VE_HEAD
	.set VE_HEAD=VE_OCR4AL
XT_OCR4AL:
	.dw PFA_DOVARIABLE
PFA_OCR4AL:
	.dw $A8
; ( -- addr ) System Constant
; R( -- )
; Timer/Counter4 Output Compare Register B High Byte
VE_OCR4BH:
	.dw $ff06
	.db "OCR4BH"
	.dw VE_HEAD
	.set VE_HEAD=VE_OCR4BH
XT_OCR4BH:
	.dw PFA_DOVARIABLE
PFA_OCR4BH:
	.dw $AB
; ( -- addr ) System Constant
; R( -- )
; Timer/Counter4 Output Compare Register B Low Byte
VE_OCR4BL:
	.dw $ff06
	.db "OCR4BL"
	.dw VE_HEAD
	.set VE_HEAD=VE_OCR4BL
XT_OCR4BL:
	.dw PFA_DOVARIABLE
PFA_OCR4BL:
	.dw $AA
; ( -- addr ) System Constant
; R( -- )
; Timer/Counter4 Output Compare Register C High Byte
VE_OCR4CH:
	.dw $ff06
	.db "OCR4CH"
	.dw VE_HEAD
	.set VE_HEAD=VE_OCR4CH
XT_OCR4CH:
	.dw PFA_DOVARIABLE
PFA_OCR4CH:
	.dw $AD
; ( -- addr ) System Constant
; R( -- )
; Timer/Counter4 Output Compare Register C Low Byte
VE_OCR4CL:
	.dw $ff06
	.db "OCR4CL"
	.dw VE_HEAD
	.set VE_HEAD=VE_OCR4CL
XT_OCR4CL:
	.dw PFA_DOVARIABLE
PFA_OCR4CL:
	.dw $AC
; ( -- addr ) System Constant
; R( -- )
; Timer/Counter4 Control Register A
VE_TCCR4A:
	.dw $ff06
	.db "TCCR4A"
	.dw VE_HEAD
	.set VE_HEAD=VE_TCCR4A
XT_TCCR4A:
	.dw PFA_DOVARIABLE
PFA_TCCR4A:
	.dw $A0
; ( -- addr ) System Constant
; R( -- )
; Timer/Counter4 Control Register B
VE_TCCR4B:
	.dw $ff06
	.db "TCCR4B"
	.dw VE_HEAD
	.set VE_HEAD=VE_TCCR4B
XT_TCCR4B:
	.dw PFA_DOVARIABLE
PFA_TCCR4B:
	.dw $A1
; ( -- addr ) System Constant
; R( -- )
; Timer/Counter4 Control Register C
VE_TCCR4C:
	.dw $ff06
	.db "TCCR4C"
	.dw VE_HEAD
	.set VE_HEAD=VE_TCCR4C
XT_TCCR4C:
	.dw PFA_DOVARIABLE
PFA_TCCR4C:
	.dw $A2
; ( -- addr ) System Constant
; R( -- )
; Timer/Counter4 High Byte
VE_TCNT4H:
	.dw $ff06
	.db "TCNT4H"
	.dw VE_HEAD
	.set VE_HEAD=VE_TCNT4H
XT_TCNT4H:
	.dw PFA_DOVARIABLE
PFA_TCNT4H:
	.dw $A5
; ( -- addr ) System Constant
; R( -- )
; Timer/Counter4 Low Byte
VE_TCNT4L:
	.dw $ff06
	.db "TCNT4L"
	.dw VE_HEAD
	.set VE_HEAD=VE_TCNT4L
XT_TCNT4L:
	.dw PFA_DOVARIABLE
PFA_TCNT4L:
	.dw $A4
; ( -- addr ) System Constant
; R( -- )
; Timer/Counter4 Interrupt Flag Register
VE_TIFR4:
	.dw $ff05
	.db "TIFR4",0
	.dw VE_HEAD
	.set VE_HEAD=VE_TIFR4
XT_TIFR4:
	.dw PFA_DOVARIABLE
PFA_TIFR4:
	.dw $39
; ( -- addr ) System Constant
; R( -- )
; Timer/Counter4 Interrupt Mask Register
VE_TIMSK4:
	.dw $ff06
	.db "TIMSK4"
	.dw VE_HEAD
	.set VE_HEAD=VE_TIMSK4
XT_TIMSK4:
	.dw PFA_DOVARIABLE
PFA_TIMSK4:
	.dw $72

.endif

; ********
.if WANT_TIMER_COUNTER_5 == 1
; ********
; ( -- addr ) System Constant
; R( -- )
; Timer/Counter5 Input Capture Register High Byte
VE_ICR5H:
	.dw $ff05
	.db "ICR5H",0
	.dw VE_HEAD
	.set VE_HEAD=VE_ICR5H
XT_ICR5H:
	.dw PFA_DOVARIABLE
PFA_ICR5H:
	.dw $127
; ( -- addr ) System Constant
; R( -- )
; Timer/Counter5 Input Capture Register Low Byte
VE_ICR5L:
	.dw $ff05
	.db "ICR5L",0
	.dw VE_HEAD
	.set VE_HEAD=VE_ICR5L
XT_ICR5L:
	.dw PFA_DOVARIABLE
PFA_ICR5L:
	.dw $126
; ( -- addr ) System Constant
; R( -- )
; Timer/Counter5 Output Compare Register A High Byte
VE_OCR5AH:
	.dw $ff06
	.db "OCR5AH"
	.dw VE_HEAD
	.set VE_HEAD=VE_OCR5AH
XT_OCR5AH:
	.dw PFA_DOVARIABLE
PFA_OCR5AH:
	.dw $129
; ( -- addr ) System Constant
; R( -- )
; Timer/Counter5 Output Compare Register A Low Byte
VE_OCR5AL:
	.dw $ff06
	.db "OCR5AL"
	.dw VE_HEAD
	.set VE_HEAD=VE_OCR5AL
XT_OCR5AL:
	.dw PFA_DOVARIABLE
PFA_OCR5AL:
	.dw $128
; ( -- addr ) System Constant
; R( -- )
; Timer/Counter5 Output Compare Register B High Byte
VE_OCR5BH:
	.dw $ff06
	.db "OCR5BH"
	.dw VE_HEAD
	.set VE_HEAD=VE_OCR5BH
XT_OCR5BH:
	.dw PFA_DOVARIABLE
PFA_OCR5BH:
	.dw $12B
; ( -- addr ) System Constant
; R( -- )
; Timer/Counter5 Output Compare Register B Low Byte
VE_OCR5BL:
	.dw $ff06
	.db "OCR5BL"
	.dw VE_HEAD
	.set VE_HEAD=VE_OCR5BL
XT_OCR5BL:
	.dw PFA_DOVARIABLE
PFA_OCR5BL:
	.dw $12A
; ( -- addr ) System Constant
; R( -- )
; Timer/Counter5 Output Compare Register C High Byte
VE_OCR5CH:
	.dw $ff06
	.db "OCR5CH"
	.dw VE_HEAD
	.set VE_HEAD=VE_OCR5CH
XT_OCR5CH:
	.dw PFA_DOVARIABLE
PFA_OCR5CH:
	.dw $12D
; ( -- addr ) System Constant
; R( -- )
; Timer/Counter5 Output Compare Register C Low Byte
VE_OCR5CL:
	.dw $ff06
	.db "OCR5CL"
	.dw VE_HEAD
	.set VE_HEAD=VE_OCR5CL
XT_OCR5CL:
	.dw PFA_DOVARIABLE
PFA_OCR5CL:
	.dw $12C
; ( -- addr ) System Constant
; R( -- )
; Timer/Counter5 Control Register A
VE_TCCR5A:
	.dw $ff06
	.db "TCCR5A"
	.dw VE_HEAD
	.set VE_HEAD=VE_TCCR5A
XT_TCCR5A:
	.dw PFA_DOVARIABLE
PFA_TCCR5A:
	.dw $120
; ( -- addr ) System Constant
; R( -- )
; Timer/Counter5 Control Register B
VE_TCCR5B:
	.dw $ff06
	.db "TCCR5B"
	.dw VE_HEAD
	.set VE_HEAD=VE_TCCR5B
XT_TCCR5B:
	.dw PFA_DOVARIABLE
PFA_TCCR5B:
	.dw $121
; ( -- addr ) System Constant
; R( -- )
; Timer/Counter5 Control Register C
VE_TCCR5C:
	.dw $ff06
	.db "TCCR5C"
	.dw VE_HEAD
	.set VE_HEAD=VE_TCCR5C
XT_TCCR5C:
	.dw PFA_DOVARIABLE
PFA_TCCR5C:
	.dw $122
; ( -- addr ) System Constant
; R( -- )
; Timer/Counter5 High Byte
VE_TCNT5H:
	.dw $ff06
	.db "TCNT5H"
	.dw VE_HEAD
	.set VE_HEAD=VE_TCNT5H
XT_TCNT5H:
	.dw PFA_DOVARIABLE
PFA_TCNT5H:
	.dw $125
; ( -- addr ) System Constant
; R( -- )
; Timer/Counter5 Low Byte
VE_TCNT5L:
	.dw $ff06
	.db "TCNT5L"
	.dw VE_HEAD
	.set VE_HEAD=VE_TCNT5L
XT_TCNT5L:
	.dw PFA_DOVARIABLE
PFA_TCNT5L:
	.dw $124
; ( -- addr ) System Constant
; R( -- )
; Timer/Counter5 Interrupt Flag Register
VE_TIFR5:
	.dw $ff05
	.db "TIFR5",0
	.dw VE_HEAD
	.set VE_HEAD=VE_TIFR5
XT_TIFR5:
	.dw PFA_DOVARIABLE
PFA_TIFR5:
	.dw $3A
; ( -- addr ) System Constant
; R( -- )
; Timer/Counter5 Interrupt Mask Register
VE_TIMSK5:
	.dw $ff06
	.db "TIMSK5"
	.dw VE_HEAD
	.set VE_HEAD=VE_TIMSK5
XT_TIMSK5:
	.dw PFA_DOVARIABLE
PFA_TIMSK5:
	.dw $73

.endif

; ********
.if WANT_TRX24 == 1
; ********
; ( -- addr ) System Constant
; R( -- )
; AES Control Register
VE_AES_CTRL:
	.dw $ff08
	.db "AES_CTRL"
	.dw VE_HEAD
	.set VE_HEAD=VE_AES_CTRL
XT_AES_CTRL:
	.dw PFA_DOVARIABLE
PFA_AES_CTRL:
	.dw $13C
; ( -- addr ) System Constant
; R( -- )
; AES Encryption and Decryption Key Buffer Register
VE_AES_KEY:
	.dw $ff07
	.db "AES_KEY",0
	.dw VE_HEAD
	.set VE_HEAD=VE_AES_KEY
XT_AES_KEY:
	.dw PFA_DOVARIABLE
PFA_AES_KEY:
	.dw $13F
; ( -- addr ) System Constant
; R( -- )
; AES Plain and Cipher Text Buffer Register
VE_AES_STATE:
	.dw $ff09
	.db "AES_STATE",0
	.dw VE_HEAD
	.set VE_HEAD=VE_AES_STATE
XT_AES_STATE:
	.dw PFA_DOVARIABLE
PFA_AES_STATE:
	.dw $13E
; ( -- addr ) System Constant
; R( -- )
; AES Status Register
VE_AES_STATUS:
	.dw $ff10
	.db "AES_STATUS"
	.dw VE_HEAD
	.set VE_HEAD=VE_AES_STATUS
XT_AES_STATUS:
	.dw PFA_DOVARIABLE
PFA_AES_STATUS:
	.dw $13D
; ( -- addr ) System Constant
; R( -- )
; Antenna Diversity Control Register
VE_ANT_DIV:
	.dw $ff07
	.db "ANT_DIV",0
	.dw VE_HEAD
	.set VE_HEAD=VE_ANT_DIV
XT_ANT_DIV:
	.dw PFA_DOVARIABLE
PFA_ANT_DIV:
	.dw $14D
; ( -- addr ) System Constant
; R( -- )
; Battery Monitor Control and Status Register
VE_BATMON:
	.dw $ff06
	.db "BATMON"
	.dw VE_HEAD
	.set VE_HEAD=VE_BATMON
XT_BATMON:
	.dw PFA_DOVARIABLE
PFA_BATMON:
	.dw $151
; ( -- addr ) System Constant
; R( -- )
; Transceiver CCA Threshold Setting Register
VE_CCA_THRES:
	.dw $ff09
	.db "CCA_THRES",0
	.dw VE_HEAD
	.set VE_HEAD=VE_CCA_THRES
XT_CCA_THRES:
	.dw PFA_DOVARIABLE
PFA_CCA_THRES:
	.dw $149
; ( -- addr ) System Constant
; R( -- )
; Transceiver CSMA-CA Back-off Exponent Control Register
VE_CSMA_BE:
	.dw $ff07
	.db "CSMA_BE",0
	.dw VE_HEAD
	.set VE_HEAD=VE_CSMA_BE
XT_CSMA_BE:
	.dw PFA_DOVARIABLE
PFA_CSMA_BE:
	.dw $16F
; ( -- addr ) System Constant
; R( -- )
; Transceiver CSMA-CA Random Number Generator Seed Register
VE_CSMA_SEED_0:
	.dw $ff11
	.db "CSMA_SEED_0",0
	.dw VE_HEAD
	.set VE_HEAD=VE_CSMA_SEED_0
XT_CSMA_SEED_0:
	.dw PFA_DOVARIABLE
PFA_CSMA_SEED_0:
	.dw $16D
; ( -- addr ) System Constant
; R( -- )
; Transceiver Acknowledgment Frame Control Register 2
VE_CSMA_SEED_1:
	.dw $ff11
	.db "CSMA_SEED_1",0
	.dw VE_HEAD
	.set VE_HEAD=VE_CSMA_SEED_1
XT_CSMA_SEED_1:
	.dw PFA_DOVARIABLE
PFA_CSMA_SEED_1:
	.dw $16E
; ( -- addr ) System Constant
; R( -- )
; Transceiver Filter Tuning Control Register
VE_FTN_CTRL:
	.dw $ff08
	.db "FTN_CTRL"
	.dw VE_HEAD
	.set VE_HEAD=VE_FTN_CTRL
XT_FTN_CTRL:
	.dw PFA_DOVARIABLE
PFA_FTN_CTRL:
	.dw $158
; ( -- addr ) System Constant
; R( -- )
; Transceiver MAC IEEE Address Register 0
VE_IEEE_ADDR_0:
	.dw $ff11
	.db "IEEE_ADDR_0",0
	.dw VE_HEAD
	.set VE_HEAD=VE_IEEE_ADDR_0
XT_IEEE_ADDR_0:
	.dw PFA_DOVARIABLE
PFA_IEEE_ADDR_0:
	.dw $164
; ( -- addr ) System Constant
; R( -- )
; Transceiver MAC IEEE Address Register 1
VE_IEEE_ADDR_1:
	.dw $ff11
	.db "IEEE_ADDR_1",0
	.dw VE_HEAD
	.set VE_HEAD=VE_IEEE_ADDR_1
XT_IEEE_ADDR_1:
	.dw PFA_DOVARIABLE
PFA_IEEE_ADDR_1:
	.dw $165
; ( -- addr ) System Constant
; R( -- )
; Transceiver MAC IEEE Address Register 2
VE_IEEE_ADDR_2:
	.dw $ff11
	.db "IEEE_ADDR_2",0
	.dw VE_HEAD
	.set VE_HEAD=VE_IEEE_ADDR_2
XT_IEEE_ADDR_2:
	.dw PFA_DOVARIABLE
PFA_IEEE_ADDR_2:
	.dw $166
; ( -- addr ) System Constant
; R( -- )
; Transceiver MAC IEEE Address Register 3
VE_IEEE_ADDR_3:
	.dw $ff11
	.db "IEEE_ADDR_3",0
	.dw VE_HEAD
	.set VE_HEAD=VE_IEEE_ADDR_3
XT_IEEE_ADDR_3:
	.dw PFA_DOVARIABLE
PFA_IEEE_ADDR_3:
	.dw $167
; ( -- addr ) System Constant
; R( -- )
; Transceiver MAC IEEE Address Register 4
VE_IEEE_ADDR_4:
	.dw $ff11
	.db "IEEE_ADDR_4",0
	.dw VE_HEAD
	.set VE_HEAD=VE_IEEE_ADDR_4
XT_IEEE_ADDR_4:
	.dw PFA_DOVARIABLE
PFA_IEEE_ADDR_4:
	.dw $168
; ( -- addr ) System Constant
; R( -- )
; Transceiver MAC IEEE Address Register 5
VE_IEEE_ADDR_5:
	.dw $ff11
	.db "IEEE_ADDR_5",0
	.dw VE_HEAD
	.set VE_HEAD=VE_IEEE_ADDR_5
XT_IEEE_ADDR_5:
	.dw PFA_DOVARIABLE
PFA_IEEE_ADDR_5:
	.dw $169
; ( -- addr ) System Constant
; R( -- )
; Transceiver MAC IEEE Address Register 6
VE_IEEE_ADDR_6:
	.dw $ff11
	.db "IEEE_ADDR_6",0
	.dw VE_HEAD
	.set VE_HEAD=VE_IEEE_ADDR_6
XT_IEEE_ADDR_6:
	.dw PFA_DOVARIABLE
PFA_IEEE_ADDR_6:
	.dw $16A
; ( -- addr ) System Constant
; R( -- )
; Transceiver MAC IEEE Address Register 7
VE_IEEE_ADDR_7:
	.dw $ff11
	.db "IEEE_ADDR_7",0
	.dw VE_HEAD
	.set VE_HEAD=VE_IEEE_ADDR_7
XT_IEEE_ADDR_7:
	.dw PFA_DOVARIABLE
PFA_IEEE_ADDR_7:
	.dw $16B
; ( -- addr ) System Constant
; R( -- )
; Transceiver Interrupt Enable Register
VE_IRQ_MASK:
	.dw $ff08
	.db "IRQ_MASK"
	.dw VE_HEAD
	.set VE_HEAD=VE_IRQ_MASK
XT_IRQ_MASK:
	.dw PFA_DOVARIABLE
PFA_IRQ_MASK:
	.dw $14E
; ( -- addr ) System Constant
; R( -- )
; Transceiver Interrupt Status Register
VE_IRQ_STATUS:
	.dw $ff10
	.db "IRQ_STATUS"
	.dw VE_HEAD
	.set VE_HEAD=VE_IRQ_STATUS
XT_IRQ_STATUS:
	.dw PFA_DOVARIABLE
PFA_IRQ_STATUS:
	.dw $14F
; ( -- addr ) System Constant
; R( -- )
; Device Identification Register (Manufacture ID Low Byte)
VE_MAN_ID_0:
	.dw $ff08
	.db "MAN_ID_0"
	.dw VE_HEAD
	.set VE_HEAD=VE_MAN_ID_0
XT_MAN_ID_0:
	.dw PFA_DOVARIABLE
PFA_MAN_ID_0:
	.dw $15E
; ( -- addr ) System Constant
; R( -- )
; Device Identification Register (Manufacture ID High Byte)
VE_MAN_ID_1:
	.dw $ff08
	.db "MAN_ID_1"
	.dw VE_HEAD
	.set VE_HEAD=VE_MAN_ID_1
XT_MAN_ID_1:
	.dw PFA_DOVARIABLE
PFA_MAN_ID_1:
	.dw $15F
; ( -- addr ) System Constant
; R( -- )
; Transceiver Personal Area Network ID Register (Low Byte)
VE_PAN_ID_0:
	.dw $ff08
	.db "PAN_ID_0"
	.dw VE_HEAD
	.set VE_HEAD=VE_PAN_ID_0
XT_PAN_ID_0:
	.dw PFA_DOVARIABLE
PFA_PAN_ID_0:
	.dw $162
; ( -- addr ) System Constant
; R( -- )
; Transceiver Personal Area Network ID Register (High Byte)
VE_PAN_ID_1:
	.dw $ff08
	.db "PAN_ID_1"
	.dw VE_HEAD
	.set VE_HEAD=VE_PAN_ID_1
XT_PAN_ID_1:
	.dw PFA_DOVARIABLE
PFA_PAN_ID_1:
	.dw $163
; ( -- addr ) System Constant
; R( -- )
; Device Identification Register (Part Number)
VE_PART_NUM:
	.dw $ff08
	.db "PART_NUM"
	.dw VE_HEAD
	.set VE_HEAD=VE_PART_NUM
XT_PART_NUM:
	.dw PFA_DOVARIABLE
PFA_PART_NUM:
	.dw $15C
; ( -- addr ) System Constant
; R( -- )
; Transceiver Clear Channel Assessment (CCA) Control Register
VE_PHY_CC_CCA:
	.dw $ff10
	.db "PHY_CC_CCA"
	.dw VE_HEAD
	.set VE_HEAD=VE_PHY_CC_CCA
XT_PHY_CC_CCA:
	.dw PFA_DOVARIABLE
PFA_PHY_CC_CCA:
	.dw $148
; ( -- addr ) System Constant
; R( -- )
; Transceiver Energy Detection Level Register
VE_PHY_ED_LEVEL:
	.dw $ff12
	.db "PHY_ED_LEVEL"
	.dw VE_HEAD
	.set VE_HEAD=VE_PHY_ED_LEVEL
XT_PHY_ED_LEVEL:
	.dw PFA_DOVARIABLE
PFA_PHY_ED_LEVEL:
	.dw $147
; ( -- addr ) System Constant
; R( -- )
; Receiver Signal Strength Indicator Register
VE_PHY_RSSI:
	.dw $ff08
	.db "PHY_RSSI"
	.dw VE_HEAD
	.set VE_HEAD=VE_PHY_RSSI
XT_PHY_RSSI:
	.dw PFA_DOVARIABLE
PFA_PHY_RSSI:
	.dw $146
; ( -- addr ) System Constant
; R( -- )
; Transceiver Transmit Power Control Register
VE_PHY_TX_PWR:
	.dw $ff10
	.db "PHY_TX_PWR"
	.dw VE_HEAD
	.set VE_HEAD=VE_PHY_TX_PWR
XT_PHY_TX_PWR:
	.dw PFA_DOVARIABLE
PFA_PHY_TX_PWR:
	.dw $145
; ( -- addr ) System Constant
; R( -- )
; Transceiver Center Frequency Calibration Control Register
VE_PLL_CF:
	.dw $ff06
	.db "PLL_CF"
	.dw VE_HEAD
	.set VE_HEAD=VE_PLL_CF
XT_PLL_CF:
	.dw PFA_DOVARIABLE
PFA_PLL_CF:
	.dw $15A
; ( -- addr ) System Constant
; R( -- )
; Transceiver Delay Cell Calibration Control Register
VE_PLL_DCU:
	.dw $ff07
	.db "PLL_DCU",0
	.dw VE_HEAD
	.set VE_HEAD=VE_PLL_DCU
XT_PLL_DCU:
	.dw PFA_DOVARIABLE
PFA_PLL_DCU:
	.dw $15B
; ( -- addr ) System Constant
; R( -- )
; Transceiver Receive Control Register
VE_RX_CTRL:
	.dw $ff07
	.db "RX_CTRL",0
	.dw VE_HEAD
	.set VE_HEAD=VE_RX_CTRL
XT_RX_CTRL:
	.dw PFA_DOVARIABLE
PFA_RX_CTRL:
	.dw $14A
; ( -- addr ) System Constant
; R( -- )
; Transceiver Receiver Sensitivity Control Register
VE_RX_SYN:
	.dw $ff06
	.db "RX_SYN"
	.dw VE_HEAD
	.set VE_HEAD=VE_RX_SYN
XT_RX_SYN:
	.dw PFA_DOVARIABLE
PFA_RX_SYN:
	.dw $155
; ( -- addr ) System Constant
; R( -- )
; Start of Frame Delimiter Value Register
VE_SFD_VALUE:
	.dw $ff09
	.db "SFD_VALUE",0
	.dw VE_HEAD
	.set VE_HEAD=VE_SFD_VALUE
XT_SFD_VALUE:
	.dw PFA_DOVARIABLE
PFA_SFD_VALUE:
	.dw $14B
; ( -- addr ) System Constant
; R( -- )
; Transceiver MAC Short Address Register (Low Byte)
VE_SHORT_ADDR_0:
	.dw $ff12
	.db "SHORT_ADDR_0"
	.dw VE_HEAD
	.set VE_HEAD=VE_SHORT_ADDR_0
XT_SHORT_ADDR_0:
	.dw PFA_DOVARIABLE
PFA_SHORT_ADDR_0:
	.dw $160
; ( -- addr ) System Constant
; R( -- )
; Transceiver MAC Short Address Register (High Byte)
VE_SHORT_ADDR_1:
	.dw $ff12
	.db "SHORT_ADDR_1"
	.dw VE_HEAD
	.set VE_HEAD=VE_SHORT_ADDR_1
XT_SHORT_ADDR_1:
	.dw PFA_DOVARIABLE
PFA_SHORT_ADDR_1:
	.dw $161
; ( -- addr ) System Constant
; R( -- )
; End of frame buffer
VE_TRXFBEND:
	.dw $ff08
	.db "TRXFBEND"
	.dw VE_HEAD
	.set VE_HEAD=VE_TRXFBEND
XT_TRXFBEND:
	.dw PFA_DOVARIABLE
PFA_TRXFBEND:
	.dw $1FF
; ( -- addr ) System Constant
; R( -- )
; Start of frame buffer
VE_TRXFBST:
	.dw $ff07
	.db "TRXFBST",0
	.dw VE_HEAD
	.set VE_HEAD=VE_TRXFBST
XT_TRXFBST:
	.dw PFA_DOVARIABLE
PFA_TRXFBST:
	.dw $180
; ( -- addr ) System Constant
; R( -- )
; Reserved
VE_TRX_CTRL_0:
	.dw $ff10
	.db "TRX_CTRL_0"
	.dw VE_HEAD
	.set VE_HEAD=VE_TRX_CTRL_0
XT_TRX_CTRL_0:
	.dw PFA_DOVARIABLE
PFA_TRX_CTRL_0:
	.dw $143
; ( -- addr ) System Constant
; R( -- )
; Transceiver Control Register 1
VE_TRX_CTRL_1:
	.dw $ff10
	.db "TRX_CTRL_1"
	.dw VE_HEAD
	.set VE_HEAD=VE_TRX_CTRL_1
XT_TRX_CTRL_1:
	.dw PFA_DOVARIABLE
PFA_TRX_CTRL_1:
	.dw $144
; ( -- addr ) System Constant
; R( -- )
; Transceiver Control Register 2
VE_TRX_CTRL_2:
	.dw $ff10
	.db "TRX_CTRL_2"
	.dw VE_HEAD
	.set VE_HEAD=VE_TRX_CTRL_2
XT_TRX_CTRL_2:
	.dw PFA_DOVARIABLE
PFA_TRX_CTRL_2:
	.dw $14C
; ( -- addr ) System Constant
; R( -- )
; Transceiver State Control Register
VE_TRX_STATE:
	.dw $ff09
	.db "TRX_STATE",0
	.dw VE_HEAD
	.set VE_HEAD=VE_TRX_STATE
XT_TRX_STATE:
	.dw PFA_DOVARIABLE
PFA_TRX_STATE:
	.dw $142
; ( -- addr ) System Constant
; R( -- )
; Transceiver Status Register
VE_TRX_STATUS:
	.dw $ff10
	.db "TRX_STATUS"
	.dw VE_HEAD
	.set VE_HEAD=VE_TRX_STATUS
XT_TRX_STATUS:
	.dw PFA_DOVARIABLE
PFA_TRX_STATUS:
	.dw $141
; ( -- addr ) System Constant
; R( -- )
; Transceiver Digital Test Control Register
VE_TST_CTRL_DIGI:
	.dw $ff13
	.db "TST_CTRL_DIGI",0
	.dw VE_HEAD
	.set VE_HEAD=VE_TST_CTRL_DIGI
XT_TST_CTRL_DIGI:
	.dw PFA_DOVARIABLE
PFA_TST_CTRL_DIGI:
	.dw $176
; ( -- addr ) System Constant
; R( -- )
; Transceiver Received Frame Length Register
VE_TST_RX_LENGTH:
	.dw $ff13
	.db "TST_RX_LENGTH",0
	.dw VE_HEAD
	.set VE_HEAD=VE_TST_RX_LENGTH
XT_TST_RX_LENGTH:
	.dw PFA_DOVARIABLE
PFA_TST_RX_LENGTH:
	.dw $17B
; ( -- addr ) System Constant
; R( -- )
; Device Identification Register (Version Number)
VE_VERSION_NUM:
	.dw $ff11
	.db "VERSION_NUM",0
	.dw VE_HEAD
	.set VE_HEAD=VE_VERSION_NUM
XT_VERSION_NUM:
	.dw PFA_DOVARIABLE
PFA_VERSION_NUM:
	.dw $15D
; ( -- addr ) System Constant
; R( -- )
; Voltage Regulator Control and Status Register
VE_VREG_CTRL:
	.dw $ff09
	.db "VREG_CTRL",0
	.dw VE_HEAD
	.set VE_HEAD=VE_VREG_CTRL
XT_VREG_CTRL:
	.dw PFA_DOVARIABLE
PFA_VREG_CTRL:
	.dw $150
; ( -- addr ) System Constant
; R( -- )
; Transceiver Extended Operating Mode Control Register
VE_XAH_CTRL_0:
	.dw $ff10
	.db "XAH_CTRL_0"
	.dw VE_HEAD
	.set VE_HEAD=VE_XAH_CTRL_0
XT_XAH_CTRL_0:
	.dw PFA_DOVARIABLE
PFA_XAH_CTRL_0:
	.dw $16C
; ( -- addr ) System Constant
; R( -- )
; Transceiver Acknowledgment Frame Control Register 1
VE_XAH_CTRL_1:
	.dw $ff10
	.db "XAH_CTRL_1"
	.dw VE_HEAD
	.set VE_HEAD=VE_XAH_CTRL_1
XT_XAH_CTRL_1:
	.dw PFA_DOVARIABLE
PFA_XAH_CTRL_1:
	.dw $157
; ( -- addr ) System Constant
; R( -- )
; Crystal Oscillator Control Register
VE_XOSC_CTRL:
	.dw $ff09
	.db "XOSC_CTRL",0
	.dw VE_HEAD
	.set VE_HEAD=VE_XOSC_CTRL
XT_XOSC_CTRL:
	.dw PFA_DOVARIABLE
PFA_XOSC_CTRL:
	.dw $152

.endif

; ********
.if WANT_TWI == 1
; ********
; ( -- addr ) System Constant
; R( -- )
; TWI (Slave) Address Mask Register
VE_TWAMR:
	.dw $ff05
	.db "TWAMR",0
	.dw VE_HEAD
	.set VE_HEAD=VE_TWAMR
XT_TWAMR:
	.dw PFA_DOVARIABLE
PFA_TWAMR:
	.dw $BD
; ( -- addr ) System Constant
; R( -- )
; TWI (Slave) Address Register
VE_TWAR:
	.dw $ff04
	.db "TWAR"
	.dw VE_HEAD
	.set VE_HEAD=VE_TWAR
XT_TWAR:
	.dw PFA_DOVARIABLE
PFA_TWAR:
	.dw $BA
; ( -- addr ) System Constant
; R( -- )
; TWI Bit Rate Register
VE_TWBR:
	.dw $ff04
	.db "TWBR"
	.dw VE_HEAD
	.set VE_HEAD=VE_TWBR
XT_TWBR:
	.dw PFA_DOVARIABLE
PFA_TWBR:
	.dw $B8
; ( -- addr ) System Constant
; R( -- )
; TWI Control Register
VE_TWCR:
	.dw $ff04
	.db "TWCR"
	.dw VE_HEAD
	.set VE_HEAD=VE_TWCR
XT_TWCR:
	.dw PFA_DOVARIABLE
PFA_TWCR:
	.dw $BC
; ( -- addr ) System Constant
; R( -- )
; TWI Data Register
VE_TWDR:
	.dw $ff04
	.db "TWDR"
	.dw VE_HEAD
	.set VE_HEAD=VE_TWDR
XT_TWDR:
	.dw PFA_DOVARIABLE
PFA_TWDR:
	.dw $BB
; ( -- addr ) System Constant
; R( -- )
; TWI Status Register
VE_TWSR:
	.dw $ff04
	.db "TWSR"
	.dw VE_HEAD
	.set VE_HEAD=VE_TWSR
XT_TWSR:
	.dw PFA_DOVARIABLE
PFA_TWSR:
	.dw $B9

.endif

; ********
.if WANT_USART0 == 1
; ********
; ( -- addr ) System Constant
; R( -- )
; USART0 Baud Rate Register High Byte
VE_UBRR0H:
	.dw $ff06
	.db "UBRR0H"
	.dw VE_HEAD
	.set VE_HEAD=VE_UBRR0H
XT_UBRR0H:
	.dw PFA_DOVARIABLE
PFA_UBRR0H:
	.dw $C5
; ( -- addr ) System Constant
; R( -- )
; USART0 Baud Rate Register Low Byte
VE_UBRR0L:
	.dw $ff06
	.db "UBRR0L"
	.dw VE_HEAD
	.set VE_HEAD=VE_UBRR0L
XT_UBRR0L:
	.dw PFA_DOVARIABLE
PFA_UBRR0L:
	.dw $C4
; ( -- addr ) System Constant
; R( -- )
; USART0 Control and Status Register A
VE_UCSR0A:
	.dw $ff06
	.db "UCSR0A"
	.dw VE_HEAD
	.set VE_HEAD=VE_UCSR0A
XT_UCSR0A:
	.dw PFA_DOVARIABLE
PFA_UCSR0A:
	.dw $C0
; ( -- addr ) System Constant
; R( -- )
; USART0 Control and Status Register B
VE_UCSR0B:
	.dw $ff06
	.db "UCSR0B"
	.dw VE_HEAD
	.set VE_HEAD=VE_UCSR0B
XT_UCSR0B:
	.dw PFA_DOVARIABLE
PFA_UCSR0B:
	.dw $C1
; ( -- addr ) System Constant
; R( -- )
; USART0 Control and Status Register C
VE_UCSR0C:
	.dw $ff06
	.db "UCSR0C"
	.dw VE_HEAD
	.set VE_HEAD=VE_UCSR0C
XT_UCSR0C:
	.dw PFA_DOVARIABLE
PFA_UCSR0C:
	.dw $C2
; ( -- addr ) System Constant
; R( -- )
; USART0 I/O Data Register
VE_UDR0:
	.dw $ff04
	.db "UDR0"
	.dw VE_HEAD
	.set VE_HEAD=VE_UDR0
XT_UDR0:
	.dw PFA_DOVARIABLE
PFA_UDR0:
	.dw $C6

.endif

; ********
.if WANT_USART0_SPI == 1
; ********

.endif

; ********
.if WANT_USART1 == 1
; ********
; ( -- addr ) System Constant
; R( -- )
; USART1 Baud Rate Register High Byte
VE_UBRR1H:
	.dw $ff06
	.db "UBRR1H"
	.dw VE_HEAD
	.set VE_HEAD=VE_UBRR1H
XT_UBRR1H:
	.dw PFA_DOVARIABLE
PFA_UBRR1H:
	.dw $CD
; ( -- addr ) System Constant
; R( -- )
; USART1 Baud Rate Register Low Byte
VE_UBRR1L:
	.dw $ff06
	.db "UBRR1L"
	.dw VE_HEAD
	.set VE_HEAD=VE_UBRR1L
XT_UBRR1L:
	.dw PFA_DOVARIABLE
PFA_UBRR1L:
	.dw $CC
; ( -- addr ) System Constant
; R( -- )
; USART1 Control and Status Register A
VE_UCSR1A:
	.dw $ff06
	.db "UCSR1A"
	.dw VE_HEAD
	.set VE_HEAD=VE_UCSR1A
XT_UCSR1A:
	.dw PFA_DOVARIABLE
PFA_UCSR1A:
	.dw $C8
; ( -- addr ) System Constant
; R( -- )
; USART1 Control and Status Register B
VE_UCSR1B:
	.dw $ff06
	.db "UCSR1B"
	.dw VE_HEAD
	.set VE_HEAD=VE_UCSR1B
XT_UCSR1B:
	.dw PFA_DOVARIABLE
PFA_UCSR1B:
	.dw $C9
; ( -- addr ) System Constant
; R( -- )
; USART1 Control and Status Register C
VE_UCSR1C:
	.dw $ff06
	.db "UCSR1C"
	.dw VE_HEAD
	.set VE_HEAD=VE_UCSR1C
XT_UCSR1C:
	.dw PFA_DOVARIABLE
PFA_UCSR1C:
	.dw $CA
; ( -- addr ) System Constant
; R( -- )
; USART1 I/O Data Register
VE_UDR1:
	.dw $ff04
	.db "UDR1"
	.dw VE_HEAD
	.set VE_HEAD=VE_UDR1
XT_UDR1:
	.dw PFA_DOVARIABLE
PFA_UDR1:
	.dw $CE

.endif

; ********
.if WANT_USART1_SPI == 1
; ********

.endif

; ********
.if WANT_WATCHDOG == 1
; ********
; ( -- addr ) System Constant
; R( -- )
; Watchdog Timer Control Register
VE_WDTCSR:
	.dw $ff06
	.db "WDTCSR"
	.dw VE_HEAD
	.set VE_HEAD=VE_WDTCSR
XT_WDTCSR:
	.dw PFA_DOVARIABLE
PFA_WDTCSR:
	.dw $60

.endif
