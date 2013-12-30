; Partname:  AT90PWM316
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
	.word 39
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
	.word 38

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
.if WANT_EUSART == 1
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
	.word 206
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
	.word 200
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
	.word 201
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
	.word 202
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
	.word 205
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
	.word 204

.endif
.if WANT_ANALOG_COMPARATOR == 1
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
	.word 173
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
	.word 174
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
	.word 175
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
	.word 80

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
	.word 172
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
	.word 171
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
	.word 170

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
	.word 102
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
	.word 97
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
; General Purpose IO Register 3
VE_GPIOR3:
	.word 0xff06
	.ascii "GPIOR3"
	.word VE_HEAD
	.set VE_HEAD=VE_GPIOR3
XT_GPIOR3:
	.word PFA_DOVARIABLE
PFA_GPIOR3:
	.word 59
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
	.word 58
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
	.word 57
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
; PLL Control And Status Register
VE_PLLCSR:
	.word 0xff06
	.ascii "PLLCSR"
	.word VE_HEAD
	.set VE_HEAD=VE_PLLCSR
XT_PLLCSR:
	.word PFA_DOVARIABLE
PFA_PLLCSR:
	.word 73
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
	.word 100

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
.if WANT_TIMER_COUNTER_0 == 1
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
	.word 110
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
	.word 53
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
	.word 68
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
	.word 69
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
	.word 70
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
	.word 71
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
	.word 72
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
; Timer/Counter1 Control Register A
VE_TCCR1A:
	.word 0xff06
	.ascii "TCCR1A"
	.word VE_HEAD
	.set VE_HEAD=VE_TCCR1A
XT_TCCR1A:
	.word PFA_DOVARIABLE
PFA_TCCR1A:
	.word 128
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
; Timer/Counter1 Control Register C
VE_TCCR1C:
	.word 0xff06
	.ascii "TCCR1C"
	.word VE_HEAD
	.set VE_HEAD=VE_TCCR1C
XT_TCCR1C:
	.word PFA_DOVARIABLE
PFA_TCCR1C:
	.word 130
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
	.word 132
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
	.word 136
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
	.word 138
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
	.word 134

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
	.word 124
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
	.word 122
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
	.word 120
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
	.word 123
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
	.word 126
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
	.word 127
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
	.word 118
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
	.word 119

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
	.word 198
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
	.word 192
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
	.word 193
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
	.word 194
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
	.word 197
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
	.word 196

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
	.word 76
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
	.word 77
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
	.word 78

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
	.word 222
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
	.word 221
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
	.word 220
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
	.word 219
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
	.word 218
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
	.word 216
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
	.word 214
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
	.word 212
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
	.word 210
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
	.word 208
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
	.word 161
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
	.word 160

.endif
.if WANT_PSC1 == 1
; ( -- addr ) System Constant
; R( -- )
; PSC 1 Input Capture Register 
VE_PICR1:
	.word 0xff05
	.db "PICR1",0
	.word VE_HEAD
	.set VE_HEAD=VE_PICR1
XT_PICR1:
	.word PFA_DOVARIABLE
PFA_PICR1:
	.word 238
; ( -- addr ) System Constant
; R( -- )
; PSC 1 Input B Control
VE_PFRC1B:
	.word 0xff06
	.ascii "PFRC1B"
	.word VE_HEAD
	.set VE_HEAD=VE_PFRC1B
XT_PFRC1B:
	.word PFA_DOVARIABLE
PFA_PFRC1B:
	.word 237
; ( -- addr ) System Constant
; R( -- )
; PSC 1 Input B Control
VE_PFRC1A:
	.word 0xff06
	.ascii "PFRC1A"
	.word VE_HEAD
	.set VE_HEAD=VE_PFRC1A
XT_PFRC1A:
	.word PFA_DOVARIABLE
PFA_PFRC1A:
	.word 236
; ( -- addr ) System Constant
; R( -- )
; PSC 1 Control Register
VE_PCTL1:
	.word 0xff05
	.db "PCTL1",0
	.word VE_HEAD
	.set VE_HEAD=VE_PCTL1
XT_PCTL1:
	.word PFA_DOVARIABLE
PFA_PCTL1:
	.word 235
; ( -- addr ) System Constant
; R( -- )
; PSC 1 Configuration Register
VE_PCNF1:
	.word 0xff05
	.db "PCNF1",0
	.word VE_HEAD
	.set VE_HEAD=VE_PCNF1
XT_PCNF1:
	.word PFA_DOVARIABLE
PFA_PCNF1:
	.word 234
; ( -- addr ) System Constant
; R( -- )
; Output Compare RB Register 
VE_OCR1RB:
	.word 0xff06
	.ascii "OCR1RB"
	.word VE_HEAD
	.set VE_HEAD=VE_OCR1RB
XT_OCR1RB:
	.word PFA_DOVARIABLE
PFA_OCR1RB:
	.word 232
; ( -- addr ) System Constant
; R( -- )
; Output Compare SB Register 
VE_OCR1SB:
	.word 0xff06
	.ascii "OCR1SB"
	.word VE_HEAD
	.set VE_HEAD=VE_OCR1SB
XT_OCR1SB:
	.word PFA_DOVARIABLE
PFA_OCR1SB:
	.word 230
; ( -- addr ) System Constant
; R( -- )
; Output Compare RA Register 
VE_OCR1RA:
	.word 0xff06
	.ascii "OCR1RA"
	.word VE_HEAD
	.set VE_HEAD=VE_OCR1RA
XT_OCR1RA:
	.word PFA_DOVARIABLE
PFA_OCR1RA:
	.word 228
; ( -- addr ) System Constant
; R( -- )
; Output Compare SA Register 
VE_OCR1SA:
	.word 0xff06
	.ascii "OCR1SA"
	.word VE_HEAD
	.set VE_HEAD=VE_OCR1SA
XT_OCR1SA:
	.word PFA_DOVARIABLE
PFA_OCR1SA:
	.word 226
; ( -- addr ) System Constant
; R( -- )
; PSC1 Synchro and Output Configuration
VE_PSOC1:
	.word 0xff05
	.db "PSOC1",0
	.word VE_HEAD
	.set VE_HEAD=VE_PSOC1
XT_PSOC1:
	.word PFA_DOVARIABLE
PFA_PSOC1:
	.word 224
; ( -- addr ) System Constant
; R( -- )
; PSC1 Interrupt Mask Register
VE_PIM1:
	.word 0xff04
	.ascii "PIM1"
	.word VE_HEAD
	.set VE_HEAD=VE_PIM1
XT_PIM1:
	.word PFA_DOVARIABLE
PFA_PIM1:
	.word 163
; ( -- addr ) System Constant
; R( -- )
; PSC1 Interrupt Flag Register
VE_PIFR1:
	.word 0xff05
	.db "PIFR1",0
	.word VE_HEAD
	.set VE_HEAD=VE_PIFR1
XT_PIFR1:
	.word PFA_DOVARIABLE
PFA_PIFR1:
	.word 162

.endif
.if WANT_PSC2 == 1
; ( -- addr ) System Constant
; R( -- )
; PSC 2 Input Capture Register 
VE_PICR2:
	.word 0xff05
	.db "PICR2",0
	.word VE_HEAD
	.set VE_HEAD=VE_PICR2
XT_PICR2:
	.word PFA_DOVARIABLE
PFA_PICR2:
	.word 254
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
	.word 253
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
	.word 252
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
	.word 251
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
	.word 250
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
	.word 248
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
	.word 246
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
	.word 244
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
	.word 242
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
	.word 241
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
	.word 240
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
	.word 165
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
	.word 164

.endif
