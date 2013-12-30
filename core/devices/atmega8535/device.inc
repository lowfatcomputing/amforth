; Partname:  ATmega8535
; generated automatically, no not edit

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
	.word 39
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
	.word 36
; ( -- addr ) System Constant
; R( -- )
; Special Function IO Register
VE_SFIOR:
	.word 0xff05
	.db "SFIOR",0
	.word VE_HEAD
	.set VE_HEAD=VE_SFIOR
XT_SFIOR:
	.word PFA_DOVARIABLE
PFA_SFIOR:
	.word 80

.endif
.if WANT_ANALOG_COMPARATOR == 1
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
	.word 40

.endif
.if WANT_TWI == 1
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
	.word 32
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
	.word 86
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
	.word 33
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
	.word 35
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
	.word 34

.endif
.if WANT_USART == 1
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
	.word 44
; ( -- addr ) System Constant
; R( -- )
; USART Control and Status Register A
VE_UCSRA:
	.word 0xff05
	.db "UCSRA",0
	.word VE_HEAD
	.set VE_HEAD=VE_UCSRA
XT_UCSRA:
	.word PFA_DOVARIABLE
PFA_UCSRA:
	.word 43
; ( -- addr ) System Constant
; R( -- )
; USART Control and Status Register B
VE_UCSRB:
	.word 0xff05
	.db "UCSRB",0
	.word VE_HEAD
	.set VE_HEAD=VE_UCSRB
XT_UCSRB:
	.word PFA_DOVARIABLE
PFA_UCSRB:
	.word 42
; ( -- addr ) System Constant
; R( -- )
; USART Control and Status Register C
VE_UCSRC:
	.word 0xff05
	.db "UCSRC",0
	.word VE_HEAD
	.set VE_HEAD=VE_UCSRC
XT_UCSRC:
	.word PFA_DOVARIABLE
PFA_UCSRC:
	.word 64
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
	.word 64
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
	.word 41

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
	.word 59
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
	.word 58
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
	.word 57

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
	.word 56
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
	.word 55
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
	.word 54

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
	.word 53
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
	.word 52
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
	.word 51

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
	.word 50
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
	.word 49
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
	.word 48

.endif
.if WANT_SPI == 1
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
	.word 47
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
	.word 46
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
	.word 45

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
.if WANT_TIMER_COUNTER_0 == 1
; ( -- addr ) System Constant
; R( -- )
; Timer/Counter Control Register
VE_TCCR0:
	.word 0xff05
	.db "TCCR0",0
	.word VE_HEAD
	.set VE_HEAD=VE_TCCR0
XT_TCCR0:
	.word PFA_DOVARIABLE
PFA_TCCR0:
	.word 83
; ( -- addr ) System Constant
; R( -- )
; Timer/Counter Register
VE_TCNT0:
	.word 0xff05
	.db "TCNT0",0
	.word VE_HEAD
	.set VE_HEAD=VE_TCNT0
XT_TCNT0:
	.word PFA_DOVARIABLE
PFA_TCNT0:
	.word 82
; ( -- addr ) System Constant
; R( -- )
; Output Compare Register
VE_OCR0:
	.word 0xff04
	.ascii "OCR0"
	.word VE_HEAD
	.set VE_HEAD=VE_OCR0
XT_OCR0:
	.word PFA_DOVARIABLE
PFA_OCR0:
	.word 92
; ( -- addr ) System Constant
; R( -- )
; Timer/Counter Interrupt Mask Register
VE_TIMSK:
	.word 0xff05
	.db "TIMSK",0
	.word VE_HEAD
	.set VE_HEAD=VE_TIMSK
XT_TIMSK:
	.word PFA_DOVARIABLE
PFA_TIMSK:
	.word 89
; ( -- addr ) System Constant
; R( -- )
; Timer/Counter Interrupt Flag register
VE_TIFR:
	.word 0xff04
	.ascii "TIFR"
	.word VE_HEAD
	.set VE_HEAD=VE_TIFR
XT_TIFR:
	.word PFA_DOVARIABLE
PFA_TIFR:
	.word 88

.endif
.if WANT_TIMER_COUNTER_1 == 1
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
	.word 79
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
	.word 78
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
	.word 76
; ( -- addr ) System Constant
; R( -- )
; Timer/Counter1 Output Compare Register  Bytes
VE_OCR1A:
	.word 0xff05
	.db "OCR1A",0
	.word VE_HEAD
	.set VE_HEAD=VE_OCR1A
XT_OCR1A:
	.word PFA_DOVARIABLE
PFA_OCR1A:
	.word 74
; ( -- addr ) System Constant
; R( -- )
; Timer/Counter1 Output Compare Register  Bytes
VE_OCR1B:
	.word 0xff05
	.db "OCR1B",0
	.word VE_HEAD
	.set VE_HEAD=VE_OCR1B
XT_OCR1B:
	.word PFA_DOVARIABLE
PFA_OCR1B:
	.word 72
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
	.word 70

.endif
.if WANT_TIMER_COUNTER_2 == 1
; ( -- addr ) System Constant
; R( -- )
; Timer/Counter2 Control Register
VE_TCCR2:
	.word 0xff05
	.db "TCCR2",0
	.word VE_HEAD
	.set VE_HEAD=VE_TCCR2
XT_TCCR2:
	.word PFA_DOVARIABLE
PFA_TCCR2:
	.word 69
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
	.word 68
; ( -- addr ) System Constant
; R( -- )
; Timer/Counter2 Output Compare Register
VE_OCR2:
	.word 0xff04
	.ascii "OCR2"
	.word VE_HEAD
	.set VE_HEAD=VE_OCR2
XT_OCR2:
	.word PFA_DOVARIABLE
PFA_OCR2:
	.word 67
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
	.word 66

.endif
.if WANT_EXTERNAL_INTERRUPT == 1
; ( -- addr ) System Constant
; R( -- )
; General Interrupt Control Register
VE_GICR:
	.word 0xff04
	.ascii "GICR"
	.word VE_HEAD
	.set VE_HEAD=VE_GICR
XT_GICR:
	.word PFA_DOVARIABLE
PFA_GICR:
	.word 91
; ( -- addr ) System Constant
; R( -- )
; General Interrupt Flag Register
VE_GIFR:
	.word 0xff04
	.ascii "GIFR"
	.word VE_HEAD
	.set VE_HEAD=VE_GIFR
XT_GIFR:
	.word PFA_DOVARIABLE
PFA_GIFR:
	.word 90
; ( -- addr ) System Constant
; R( -- )
; General Interrupt Control Register
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
; MCU Control And Status Register
VE_MCUCSR:
	.word 0xff06
	.ascii "MCUCSR"
	.word VE_HEAD
	.set VE_HEAD=VE_MCUCSR
XT_MCUCSR:
	.word PFA_DOVARIABLE
PFA_MCUCSR:
	.word 84

.endif
.if WANT_WATCHDOG == 1
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
	.word 65

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
; Oscillator Calibration Value
VE_OSCCAL:
	.word 0xff06
	.ascii "OSCCAL"
	.word VE_HEAD
	.set VE_HEAD=VE_OSCCAL
XT_OSCCAL:
	.word PFA_DOVARIABLE
PFA_OSCCAL:
	.word 81
; ( -- addr ) System Constant
; R( -- )
; 
VE_SPMCR:
	.word 0xff05
	.db "SPMCR",0
	.word VE_HEAD
	.set VE_HEAD=VE_SPMCR
XT_SPMCR:
	.word PFA_DOVARIABLE
PFA_SPMCR:
	.word 87

.endif
