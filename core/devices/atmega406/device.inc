; Partname:  ATmega406
; generated automatically, no not edit

.if WANT_AD_CONVERTER == 1
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
	.word 124
; ( -- addr ) System Constant
; R( -- )
; VADC Data Register  Bytes
VE_VADC:
	.word 0xff04
	.ascii "VADC"
	.word VE_HEAD
	.set VE_HEAD=VE_VADC
XT_VADC:
	.word PFA_DOVARIABLE
PFA_VADC:
	.word 120
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
	.word 122

.endif
.if WANT_EXTERNAL_INTERRUPT == 1
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
	.word 105
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
	.word 61
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
	.word 60
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
	.word 104
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
	.word 59
; ( -- addr ) System Constant
; R( -- )
; Pin Change Enable Mask Register 1
VE_PCMSK1:
	.word 0xff06
	.ascii "PCMSK1"
	.word VE_HEAD
	.set VE_HEAD=VE_PCMSK1
XT_PCMSK1:
	.word PFA_DOVARIABLE
PFA_PCMSK1:
	.word 108
; ( -- addr ) System Constant
; R( -- )
; Pin Change Enable Mask Register 0
VE_PCMSK0:
	.word 0xff06
	.ascii "PCMSK0"
	.word VE_HEAD
	.set VE_HEAD=VE_PCMSK0
XT_PCMSK0:
	.word PFA_DOVARIABLE
PFA_PCMSK0:
	.word 107

.endif
.if WANT_TIMER_COUNTER_1 == 1
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
	.word 129
; ( -- addr ) System Constant
; R( -- )
; Timer Counter 1  Bytes
VE_TCNT1:
	.word 0xff05
	.db "TCNT1",0
	.word VE_HEAD
	.set VE_HEAD=VE_TCNT1
XT_TCNT1:
	.word PFA_DOVARIABLE
PFA_TCNT1:
	.word 132
; ( -- addr ) System Constant
; R( -- )
; Output Compare Register 1A Low byte
VE_OCR1AL:
	.word 0xff06
	.ascii "OCR1AL"
	.word VE_HEAD
	.set VE_HEAD=VE_OCR1AL
XT_OCR1AL:
	.word PFA_DOVARIABLE
PFA_OCR1AL:
	.word 136
; ( -- addr ) System Constant
; R( -- )
; Output Compare Register 1A High byte
VE_OCR1AH:
	.word 0xff06
	.ascii "OCR1AH"
	.word VE_HEAD
	.set VE_HEAD=VE_OCR1AH
XT_OCR1AH:
	.word PFA_DOVARIABLE
PFA_OCR1AH:
	.word 137
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
	.word 111
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
	.word 54
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
	.word 67

.endif
.if WANT_WAKEUP_TIMER == 1
; ( -- addr ) System Constant
; R( -- )
; Wake-up Timer Control Register
VE_WUTCSR:
	.word 0xff06
	.ascii "WUTCSR"
	.word VE_HEAD
	.set VE_HEAD=VE_WUTCSR
XT_WUTCSR:
	.word PFA_DOVARIABLE
PFA_WUTCSR:
	.word 98

.endif
.if WANT_BATTERY_PROTECTION == 1
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
	.word 248
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
	.word 247
; ( -- addr ) System Constant
; R( -- )
; Current Battery Protection Timing Register
VE_CBPTR:
	.word 0xff05
	.db "CBPTR",0
	.word VE_HEAD
	.set VE_HEAD=VE_CBPTR
XT_CBPTR:
	.word PFA_DOVARIABLE
PFA_CBPTR:
	.word 246
; ( -- addr ) System Constant
; R( -- )
; Battery Protection OverCurrent Detection Level Register
VE_BPOCD:
	.word 0xff05
	.db "BPOCD",0
	.word VE_HEAD
	.set VE_HEAD=VE_BPOCD
XT_BPOCD:
	.word PFA_DOVARIABLE
PFA_BPOCD:
	.word 245
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
	.word 244
; ( -- addr ) System Constant
; R( -- )
; Battery Protection Deep Under Voltage Register
VE_BPDUV:
	.word 0xff05
	.db "BPDUV",0
	.word VE_HEAD
	.set VE_HEAD=VE_BPDUV
XT_BPDUV:
	.word PFA_DOVARIABLE
PFA_BPDUV:
	.word 243
; ( -- addr ) System Constant
; R( -- )
; Battery Protection Interrupt Register
VE_BPIR:
	.word 0xff04
	.ascii "BPIR"
	.word VE_HEAD
	.set VE_HEAD=VE_BPIR
XT_BPIR:
	.word PFA_DOVARIABLE
PFA_BPIR:
	.word 242

.endif
.if WANT_FET == 1
; ( -- addr ) System Constant
; R( -- )
; 
VE_FCSR:
	.word 0xff04
	.ascii "FCSR"
	.word VE_HEAD
	.set VE_HEAD=VE_FCSR
XT_FCSR:
	.word PFA_DOVARIABLE
PFA_FCSR:
	.word 240

.endif
.if WANT_COULOMB_COUNTER == 1
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
	.word 228
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
	.word 229
; ( -- addr ) System Constant
; R( -- )
; CC-ADC Instantaneous Current
VE_CADIC:
	.word 0xff05
	.db "CADIC",0
	.word VE_HEAD
	.set VE_HEAD=VE_CADIC
XT_CADIC:
	.word PFA_DOVARIABLE
PFA_CADIC:
	.word 232
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
	.word 227
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
	.word 226
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
	.word 225
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
	.word 224
; ( -- addr ) System Constant
; R( -- )
; CC-ADC Regular Charge Current
VE_CADRCC:
	.word 0xff06
	.ascii "CADRCC"
	.word VE_HEAD
	.set VE_HEAD=VE_CADRCC
XT_CADRCC:
	.word PFA_DOVARIABLE
PFA_CADRCC:
	.word 230
; ( -- addr ) System Constant
; R( -- )
; CC-ADC Regular Discharge Current
VE_CADRDC:
	.word 0xff06
	.ascii "CADRDC"
	.word VE_HEAD
	.set VE_HEAD=VE_CADRDC
XT_CADRDC:
	.word PFA_DOVARIABLE
PFA_CADRDC:
	.word 231

.endif
.if WANT_CELL_BALANCING == 1
; ( -- addr ) System Constant
; R( -- )
; Cell Balancing Control Register
VE_CBCR:
	.word 0xff04
	.ascii "CBCR"
	.word VE_HEAD
	.set VE_HEAD=VE_CBCR
XT_CBCR:
	.word PFA_DOVARIABLE
PFA_CBCR:
	.word 241

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
; Fast Oscillator Calibration Value
VE_FOSCCAL:
	.word 0xff07
	.db "FOSCCAL",0
	.word VE_HEAD
	.set VE_HEAD=VE_FOSCCAL
XT_FOSCCAL:
	.word PFA_DOVARIABLE
PFA_FOSCCAL:
	.word 102
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
	.word 75
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
	.word 74
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
	.word 62
; ( -- addr ) System Constant
; R( -- )
; Clock Control and Status Register
VE_CCSR:
	.word 0xff04
	.ascii "CCSR"
	.word VE_HEAD
	.set VE_HEAD=VE_CCSR
XT_CCSR:
	.word PFA_DOVARIABLE
PFA_CCSR:
	.word 192
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
	.word 126
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
	.word 100

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
	.word 96

.endif
.if WANT_TIMER_COUNTER_0 == 1
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
	.word 68
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
	.word 69
; ( -- addr ) System Constant
; R( -- )
; Timer Counter 0
VE_TCNT0:
	.word 0xff05
	.db "TCNT0",0
	.word VE_HEAD
	.set VE_HEAD=VE_TCNT0
XT_TCNT0:
	.word PFA_DOVARIABLE
PFA_TCNT0:
	.word 70
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
	.word 71
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
	.word 72
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
	.word 110
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
	.word 53

.endif
.if WANT_PORTA == 1
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
	.word 34
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
	.word 33
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
	.word 32

.endif
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
.if WANT_PORTC == 1
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
	.word 40

.endif
.if WANT_PORTD == 1
; ( -- addr ) System Constant
; R( -- )
; Data Register, Port D
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
; Data Direction Register, Port D
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
; Input Pins, Port D
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
.if WANT_TWI == 1
; ( -- addr ) System Constant
; R( -- )
; TWI Bus Control and Status Register
VE_TWBCSR:
	.word 0xff06
	.ascii "TWBCSR"
	.word VE_HEAD
	.set VE_HEAD=VE_TWBCSR
XT_TWBCSR:
	.word PFA_DOVARIABLE
PFA_TWBCSR:
	.word 190
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
	.word 189
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
	.word 184
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
	.word 188
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
	.word 185
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
	.word 187
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
	.word 186

.endif
.if WANT_BANDGAP == 1
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
	.word 209
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
	.word 208

.endif
.if WANT_EEPROM == 1
; ( -- addr ) System Constant
; R( -- )
; EEPROM Address Register  Bytes
VE_EEAR:
	.word 0xff04
	.ascii "EEAR"
	.word VE_HEAD
	.set VE_HEAD=VE_EEAR
XT_EEAR:
	.word PFA_DOVARIABLE
PFA_EEAR:
	.word 65
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
	.word 64
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
	.word 63

.endif
