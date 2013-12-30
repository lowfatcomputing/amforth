; Partname:  ATmega16HVA2
; Built using part description XML file version 1
; generated automatically, no not edit

; ********
.if WANT_AD_CONVERTER == 1
; ********
; ( -- addr ) System Constant
; R( -- )
; VADC Data Register High Byte
VE_VADCH:
	.word 0xff05
	.db "VADCH",0
	.word VE_HEAD
	.set VE_HEAD=VE_VADCH
XT_VADCH:
	.word PFA_DOVARIABLE
PFA_VADCH:
	.word 0x79
; ( -- addr ) System Constant
; R( -- )
; VADC Data Register Low Byte
VE_VADCL:
	.word 0xff05
	.db "VADCL",0
	.word VE_HEAD
	.set VE_HEAD=VE_VADCL
XT_VADCL:
	.word PFA_DOVARIABLE
PFA_VADCL:
	.word 0x78
; ( -- addr ) System Constant
; R( -- )
; The VADC Control and Status register
VE_VADCSR:
	.word 0xff06
	.ascii "VADCSR"
	.word VE_HEAD
	.set VE_HEAD=VE_VADCSR
XT_VADCSR:
	.word PFA_DOVARIABLE
PFA_VADCSR:
	.word 0x7A
; ( -- addr ) System Constant
; R( -- )
; The VADC multiplexer Selection Register
VE_VADMUX:
	.word 0xff06
	.ascii "VADMUX"
	.word VE_HEAD
	.set VE_HEAD=VE_VADMUX
XT_VADMUX:
	.word PFA_DOVARIABLE
PFA_VADMUX:
	.word 0x7C

.endif

; ********
.if WANT_BANDGAP == 1
; ********
; ( -- addr ) System Constant
; R( -- )
; Bandgap Calibration Register
VE_BGCCR:
	.word 0xff05
	.db "BGCCR",0
	.word VE_HEAD
	.set VE_HEAD=VE_BGCCR
XT_BGCCR:
	.word PFA_DOVARIABLE
PFA_BGCCR:
	.word 0xD0
; ( -- addr ) System Constant
; R( -- )
; Bandgap Calibration of Resistor Ladder
VE_BGCRR:
	.word 0xff05
	.db "BGCRR",0
	.word VE_HEAD
	.set VE_HEAD=VE_BGCRR
XT_BGCRR:
	.word PFA_DOVARIABLE
PFA_BGCRR:
	.word 0xD1

.endif

; ********
.if WANT_BATTERY_PROTECTION == 1
; ********
; ( -- addr ) System Constant
; R( -- )
; Battery Protection Charge-High-current Detection Level Register
VE_BPCHCD:
	.word 0xff06
	.ascii "BPCHCD"
	.word VE_HEAD
	.set VE_HEAD=VE_BPCHCD
XT_BPCHCD:
	.word PFA_DOVARIABLE
PFA_BPCHCD:
	.word 0xF9
; ( -- addr ) System Constant
; R( -- )
; Battery Protection Charge-Over-current Detection Level Register
VE_BPCOCD:
	.word 0xff06
	.ascii "BPCOCD"
	.word VE_HEAD
	.set VE_HEAD=VE_BPCOCD
XT_BPCOCD:
	.word PFA_DOVARIABLE
PFA_BPCOCD:
	.word 0xF7
; ( -- addr ) System Constant
; R( -- )
; Battery Protection Control Register
VE_BPCR:
	.word 0xff04
	.ascii "BPCR"
	.word VE_HEAD
	.set VE_HEAD=VE_BPCR
XT_BPCR:
	.word PFA_DOVARIABLE
PFA_BPCR:
	.word 0xFD
; ( -- addr ) System Constant
; R( -- )
; Battery Protection Discharge-High-current Detection Level Register
VE_BPDHCD:
	.word 0xff06
	.ascii "BPDHCD"
	.word VE_HEAD
	.set VE_HEAD=VE_BPDHCD
XT_BPDHCD:
	.word PFA_DOVARIABLE
PFA_BPDHCD:
	.word 0xF8
; ( -- addr ) System Constant
; R( -- )
; Battery Protection Discharge-Over-current Detection Level Register
VE_BPDOCD:
	.word 0xff06
	.ascii "BPDOCD"
	.word VE_HEAD
	.set VE_HEAD=VE_BPDOCD
XT_BPDOCD:
	.word PFA_DOVARIABLE
PFA_BPDOCD:
	.word 0xF6
; ( -- addr ) System Constant
; R( -- )
; Battery Protection Short-current Timing Register
VE_BPHCTR:
	.word 0xff06
	.ascii "BPHCTR"
	.word VE_HEAD
	.set VE_HEAD=VE_BPHCTR
XT_BPHCTR:
	.word PFA_DOVARIABLE
PFA_BPHCTR:
	.word 0xFC
; ( -- addr ) System Constant
; R( -- )
; Battery Protection Interrupt Flag Register
VE_BPIFR:
	.word 0xff05
	.db "BPIFR",0
	.word VE_HEAD
	.set VE_HEAD=VE_BPIFR
XT_BPIFR:
	.word PFA_DOVARIABLE
PFA_BPIFR:
	.word 0xF3
; ( -- addr ) System Constant
; R( -- )
; Battery Protection Interrupt Mask Register
VE_BPIMSK:
	.word 0xff06
	.ascii "BPIMSK"
	.word VE_HEAD
	.set VE_HEAD=VE_BPIMSK
XT_BPIMSK:
	.word PFA_DOVARIABLE
PFA_BPIMSK:
	.word 0xF2
; ( -- addr ) System Constant
; R( -- )
; Battery Protection Over-current Timing Register
VE_BPOCTR:
	.word 0xff06
	.ascii "BPOCTR"
	.word VE_HEAD
	.set VE_HEAD=VE_BPOCTR
XT_BPOCTR:
	.word PFA_DOVARIABLE
PFA_BPOCTR:
	.word 0xFB
; ( -- addr ) System Constant
; R( -- )
; Battery Protection Parameter Lock Register
VE_BPPLR:
	.word 0xff05
	.db "BPPLR",0
	.word VE_HEAD
	.set VE_HEAD=VE_BPPLR
XT_BPPLR:
	.word PFA_DOVARIABLE
PFA_BPPLR:
	.word 0xFE
; ( -- addr ) System Constant
; R( -- )
; Battery Protection Short-Circuit Detection Level Register
VE_BPSCD:
	.word 0xff05
	.db "BPSCD",0
	.word VE_HEAD
	.set VE_HEAD=VE_BPSCD
XT_BPSCD:
	.word PFA_DOVARIABLE
PFA_BPSCD:
	.word 0xF5
; ( -- addr ) System Constant
; R( -- )
; Battery Protection Short-current Timing Register
VE_BPSCTR:
	.word 0xff06
	.ascii "BPSCTR"
	.word VE_HEAD
	.set VE_HEAD=VE_BPSCTR
XT_BPSCTR:
	.word PFA_DOVARIABLE
PFA_BPSCTR:
	.word 0xFA

.endif

; ********
.if WANT_BOOT_LOAD == 1
; ********
; ( -- addr ) System Constant
; R( -- )
; Store Program Memory Control and Status Register
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
.if WANT_COULOMB_COUNTER == 1
; ********
; ( -- addr ) System Constant
; R( -- )
; ADC Accumulate Current
VE_CADAC0:
	.word 0xff06
	.ascii "CADAC0"
	.word VE_HEAD
	.set VE_HEAD=VE_CADAC0
XT_CADAC0:
	.word PFA_DOVARIABLE
PFA_CADAC0:
	.word 0xE0
; ( -- addr ) System Constant
; R( -- )
; ADC Accumulate Current
VE_CADAC1:
	.word 0xff06
	.ascii "CADAC1"
	.word VE_HEAD
	.set VE_HEAD=VE_CADAC1
XT_CADAC1:
	.word PFA_DOVARIABLE
PFA_CADAC1:
	.word 0xE1
; ( -- addr ) System Constant
; R( -- )
; ADC Accumulate Current
VE_CADAC2:
	.word 0xff06
	.ascii "CADAC2"
	.word VE_HEAD
	.set VE_HEAD=VE_CADAC2
XT_CADAC2:
	.word PFA_DOVARIABLE
PFA_CADAC2:
	.word 0xE2
; ( -- addr ) System Constant
; R( -- )
; ADC Accumulate Current
VE_CADAC3:
	.word 0xff06
	.ascii "CADAC3"
	.word VE_HEAD
	.set VE_HEAD=VE_CADAC3
XT_CADAC3:
	.word PFA_DOVARIABLE
PFA_CADAC3:
	.word 0xE3
; ( -- addr ) System Constant
; R( -- )
; CC-ADC Control and Status Register A
VE_CADCSRA:
	.word 0xff07
	.db "CADCSRA",0
	.word VE_HEAD
	.set VE_HEAD=VE_CADCSRA
XT_CADCSRA:
	.word PFA_DOVARIABLE
PFA_CADCSRA:
	.word 0xE4
; ( -- addr ) System Constant
; R( -- )
; CC-ADC Control and Status Register B
VE_CADCSRB:
	.word 0xff07
	.db "CADCSRB",0
	.word VE_HEAD
	.set VE_HEAD=VE_CADCSRB
XT_CADCSRB:
	.word PFA_DOVARIABLE
PFA_CADCSRB:
	.word 0xE5
; ( -- addr ) System Constant
; R( -- )
; CC-ADC Instantaneous Current
VE_CADICH:
	.word 0xff06
	.ascii "CADICH"
	.word VE_HEAD
	.set VE_HEAD=VE_CADICH
XT_CADICH:
	.word PFA_DOVARIABLE
PFA_CADICH:
	.word 0xE9
; ( -- addr ) System Constant
; R( -- )
; CC-ADC Instantaneous Current
VE_CADICL:
	.word 0xff06
	.ascii "CADICL"
	.word VE_HEAD
	.set VE_HEAD=VE_CADICL
XT_CADICL:
	.word PFA_DOVARIABLE
PFA_CADICL:
	.word 0xE8
; ( -- addr ) System Constant
; R( -- )
; CC-ADC Regular Current
VE_CADRC:
	.word 0xff05
	.db "CADRC",0
	.word VE_HEAD
	.set VE_HEAD=VE_CADRC
XT_CADRC:
	.word PFA_DOVARIABLE
PFA_CADRC:
	.word 0xE6

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
; Digital Input Disable Register
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
; Fast Oscillator Calibration Value
VE_FOSCCAL:
	.word 0xff07
	.db "FOSCCAL",0
	.word VE_HEAD
	.set VE_HEAD=VE_FOSCCAL
XT_FOSCCAL:
	.word PFA_DOVARIABLE
PFA_FOSCCAL:
	.word 0x66
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
; Oscillator Sampling Interface Control and Status Register
VE_OSICSR:
	.word 0xff06
	.ascii "OSICSR"
	.word VE_HEAD
	.set VE_HEAD=VE_OSICSR
XT_OSICSR:
	.word PFA_DOVARIABLE
PFA_OSICSR:
	.word 0x37
; ( -- addr ) System Constant
; R( -- )
; Power Reduction Register 0
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
; EEPROM Read/Write Access
VE_EEAR:
	.word 0xff04
	.ascii "EEAR"
	.word VE_HEAD
	.set VE_HEAD=VE_EEAR
XT_EEAR:
	.word PFA_DOVARIABLE
PFA_EEAR:
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
.if WANT_FET == 1
; ********
; ( -- addr ) System Constant
; R( -- )
; FET Control and Status Register
VE_FCSR:
	.word 0xff04
	.ascii "FCSR"
	.word VE_HEAD
	.set VE_HEAD=VE_FCSR
XT_FCSR:
	.word PFA_DOVARIABLE
PFA_FCSR:
	.word 0xF0

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
; Data Direction Register, Port B
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
; Input Pins, Port B
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
; Data Register, Port B
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
	.word 0x4c
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
	.word 0x4e
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
	.word 0x4d

.endif

; ********
.if WANT_TIMER_COUNTER_0 == 1
; ********
; ( -- addr ) System Constant
; R( -- )
; Output compare Register A
VE_OCR0A:
	.word 0xff05
	.db "OCR0A",0
	.word VE_HEAD
	.set VE_HEAD=VE_OCR0A
XT_OCR0A:
	.word PFA_DOVARIABLE
PFA_OCR0A:
	.word 0x48
; ( -- addr ) System Constant
; R( -- )
; Output compare Register B
VE_OCR0B:
	.word 0xff05
	.db "OCR0B",0
	.word VE_HEAD
	.set VE_HEAD=VE_OCR0B
XT_OCR0B:
	.word PFA_DOVARIABLE
PFA_OCR0B:
	.word 0x49
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
; Timer/Counter0 Control Register
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
; Timer Counter 0 High Byte
VE_TCNT0H:
	.word 0xff06
	.ascii "TCNT0H"
	.word VE_HEAD
	.set VE_HEAD=VE_TCNT0H
XT_TCNT0H:
	.word PFA_DOVARIABLE
PFA_TCNT0H:
	.word 0x47
; ( -- addr ) System Constant
; R( -- )
; Timer Counter 0 Low Byte
VE_TCNT0L:
	.word 0xff06
	.ascii "TCNT0L"
	.word VE_HEAD
	.set VE_HEAD=VE_TCNT0L
XT_TCNT0L:
	.word PFA_DOVARIABLE
PFA_TCNT0L:
	.word 0x46
; ( -- addr ) System Constant
; R( -- )
; Timer/Counter Interrupt Flag register
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
; Timer/Counter Interrupt Mask Register
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
; Output Compare Register 1A 
VE_OCR1A:
	.word 0xff05
	.db "OCR1A",0
	.word VE_HEAD
	.set VE_HEAD=VE_OCR1A
XT_OCR1A:
	.word PFA_DOVARIABLE
PFA_OCR1A:
	.word 0x88
; ( -- addr ) System Constant
; R( -- )
; Output Compare Register B 
VE_OCR1B:
	.word 0xff05
	.db "OCR1B",0
	.word VE_HEAD
	.set VE_HEAD=VE_OCR1B
XT_OCR1B:
	.word PFA_DOVARIABLE
PFA_OCR1B:
	.word 0x89
; ( -- addr ) System Constant
; R( -- )
; Timer/Counter 1 Control Register A
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
; Timer Counter 1 High Byte
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
; Timer Counter 1 Low Byte
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
.if WANT_VOLTAGE_REGULATOR == 1
; ********
; ( -- addr ) System Constant
; R( -- )
; Regulator Operating Condition Register
VE_ROCR:
	.word 0xff04
	.ascii "ROCR"
	.word VE_HEAD
	.set VE_HEAD=VE_ROCR
XT_ROCR:
	.word PFA_DOVARIABLE
PFA_ROCR:
	.word 0xC8

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
