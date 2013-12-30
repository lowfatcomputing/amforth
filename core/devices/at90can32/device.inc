; Partname:  AT90CAN32
; generated automatically, no not edit

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
.if WANT_PORTE == 1
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
	.word 46
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
	.word 45
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
	.word 44

.endif
.if WANT_PORTF == 1
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
	.word 49
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
	.word 48
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
	.word 47

.endif
.if WANT_PORTG == 1
; ( -- addr ) System Constant
; R( -- )
; Data Register, Port G
VE_PORTG:
	.word 0xff05
	.db "PORTG",0
	.word VE_HEAD
	.set VE_HEAD=VE_PORTG
XT_PORTG:
	.word PFA_DOVARIABLE
PFA_PORTG:
	.word 52
; ( -- addr ) System Constant
; R( -- )
; Data Direction Register, Port G
VE_DDRG:
	.word 0xff04
	.ascii "DDRG"
	.word VE_HEAD
	.set VE_HEAD=VE_DDRG
XT_DDRG:
	.word PFA_DOVARIABLE
PFA_DDRG:
	.word 51
; ( -- addr ) System Constant
; R( -- )
; Input Pins, Port G
VE_PING:
	.word 0xff04
	.ascii "PING"
	.word VE_HEAD
	.set VE_HEAD=VE_PING
XT_PING:
	.word PFA_DOVARIABLE
PFA_PING:
	.word 50

.endif
.if WANT_JTAG == 1
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
	.word 81
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
.if WANT_USART0 == 1
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
	.word 198
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
	.word 192
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
	.word 193
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
	.word 194
; ( -- addr ) System Constant
; R( -- )
; USART Baud Rate Register t Bytes
VE_UBRR0:
	.word 0xff05
	.db "UBRR0",0
	.word VE_HEAD
	.set VE_HEAD=VE_UBRR0
XT_UBRR0:
	.word PFA_DOVARIABLE
PFA_UBRR0:
	.word 196

.endif
.if WANT_USART1 == 1
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
	.word 206
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
	.word 200
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
	.word 201
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
	.word 202
; ( -- addr ) System Constant
; R( -- )
; USART Baud Rate Register t Bytes
VE_UBRR1:
	.word 0xff05
	.db "UBRR1",0
	.word VE_HEAD
	.set VE_HEAD=VE_UBRR1
XT_UBRR1:
	.word PFA_DOVARIABLE
PFA_UBRR1:
	.word 204

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
; External Memory Control Register A
VE_XMCRA:
	.word 0xff05
	.db "XMCRA",0
	.word VE_HEAD
	.set VE_HEAD=VE_XMCRA
XT_XMCRA:
	.word PFA_DOVARIABLE
PFA_XMCRA:
	.word 116
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
	.word 117
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
; Clock Prescale Register
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
; RAM Page Z Select Register - Not used.
VE_RAMPZ:
	.word 0xff05
	.db "RAMPZ",0
	.word VE_HEAD
	.set VE_HEAD=VE_RAMPZ
XT_RAMPZ:
	.word PFA_DOVARIABLE
PFA_RAMPZ:
	.word 91
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
; External Interrupt Control Register B
VE_EICRB:
	.word 0xff05
	.db "EICRB",0
	.word VE_HEAD
	.set VE_HEAD=VE_EICRB
XT_EICRB:
	.word PFA_DOVARIABLE
PFA_EICRB:
	.word 106
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
; General Timer/Control Register
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
	.word 176
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
	.word 178
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
	.word 179
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
	.word 112
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
	.word 55
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
	.word 182

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
; Timer/Counter 1 Control Register C
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
; Timer/Counter1 Output Compare Register  Bytes
VE_OCR1C:
	.word 0xff05
	.db "OCR1C",0
	.word VE_HEAD
	.set VE_HEAD=VE_OCR1C
XT_OCR1C:
	.word PFA_DOVARIABLE
PFA_OCR1C:
	.word 140
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

.endif
.if WANT_TIMER_COUNTER_3 == 1
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
	.word 144
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
	.word 145
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
	.word 146
; ( -- addr ) System Constant
; R( -- )
; Timer/Counter3  Bytes
VE_TCNT3:
	.word 0xff05
	.db "TCNT3",0
	.word VE_HEAD
	.set VE_HEAD=VE_TCNT3
XT_TCNT3:
	.word PFA_DOVARIABLE
PFA_TCNT3:
	.word 148
; ( -- addr ) System Constant
; R( -- )
; Timer/Counter3 Output Compare Register  Bytes
VE_OCR3A:
	.word 0xff05
	.db "OCR3A",0
	.word VE_HEAD
	.set VE_HEAD=VE_OCR3A
XT_OCR3A:
	.word PFA_DOVARIABLE
PFA_OCR3A:
	.word 152
; ( -- addr ) System Constant
; R( -- )
; Timer/Counter3 Output Compare Register  Bytes
VE_OCR3B:
	.word 0xff05
	.db "OCR3B",0
	.word VE_HEAD
	.set VE_HEAD=VE_OCR3B
XT_OCR3B:
	.word PFA_DOVARIABLE
PFA_OCR3B:
	.word 154
; ( -- addr ) System Constant
; R( -- )
; Timer/Counter3 Output Compare Register  Bytes
VE_OCR3C:
	.word 0xff05
	.db "OCR3C",0
	.word VE_HEAD
	.set VE_HEAD=VE_OCR3C
XT_OCR3C:
	.word PFA_DOVARIABLE
PFA_OCR3C:
	.word 156
; ( -- addr ) System Constant
; R( -- )
; Timer/Counter3 Input Capture Register  Bytes
VE_ICR3:
	.word 0xff04
	.ascii "ICR3"
	.word VE_HEAD
	.set VE_HEAD=VE_ICR3
XT_ICR3:
	.word PFA_DOVARIABLE
PFA_ICR3:
	.word 150
; ( -- addr ) System Constant
; R( -- )
; Timer/Counter Interrupt Mask Register
VE_TIMSK3:
	.word 0xff06
	.ascii "TIMSK3"
	.word VE_HEAD
	.set VE_HEAD=VE_TIMSK3
XT_TIMSK3:
	.word PFA_DOVARIABLE
PFA_TIMSK3:
	.word 113
; ( -- addr ) System Constant
; R( -- )
; Timer/Counter Interrupt Flag register
VE_TIFR3:
	.word 0xff05
	.db "TIFR3",0
	.word VE_HEAD
	.set VE_HEAD=VE_TIFR3
XT_TIFR3:
	.word PFA_DOVARIABLE
PFA_TIFR3:
	.word 56

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
	.word 96

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
; Digital Input Disable Register 1
VE_DIDR0:
	.word 0xff05
	.db "DIDR0",0
	.word VE_HEAD
	.set VE_HEAD=VE_DIDR0
XT_DIDR0:
	.word PFA_DOVARIABLE
PFA_DIDR0:
	.word 126

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
	.word 80
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
	.word 127

.endif
.if WANT_CAN == 1
; ( -- addr ) System Constant
; R( -- )
; CAN General Control Register
VE_CANGCON:
	.word 0xff07
	.db "CANGCON",0
	.word VE_HEAD
	.set VE_HEAD=VE_CANGCON
XT_CANGCON:
	.word PFA_DOVARIABLE
PFA_CANGCON:
	.word 216
; ( -- addr ) System Constant
; R( -- )
; CAN General Status Register
VE_CANGSTA:
	.word 0xff07
	.db "CANGSTA",0
	.word VE_HEAD
	.set VE_HEAD=VE_CANGSTA
XT_CANGSTA:
	.word PFA_DOVARIABLE
PFA_CANGSTA:
	.word 217
; ( -- addr ) System Constant
; R( -- )
; CAN General Interrupt Register
VE_CANGIT:
	.word 0xff06
	.ascii "CANGIT"
	.word VE_HEAD
	.set VE_HEAD=VE_CANGIT
XT_CANGIT:
	.word PFA_DOVARIABLE
PFA_CANGIT:
	.word 218
; ( -- addr ) System Constant
; R( -- )
; CAN General Interrupt Enable Register
VE_CANGIE:
	.word 0xff06
	.ascii "CANGIE"
	.word VE_HEAD
	.set VE_HEAD=VE_CANGIE
XT_CANGIE:
	.word PFA_DOVARIABLE
PFA_CANGIE:
	.word 219
; ( -- addr ) System Constant
; R( -- )
; Enable MOb Register
VE_CANEN2:
	.word 0xff06
	.ascii "CANEN2"
	.word VE_HEAD
	.set VE_HEAD=VE_CANEN2
XT_CANEN2:
	.word PFA_DOVARIABLE
PFA_CANEN2:
	.word 220
; ( -- addr ) System Constant
; R( -- )
; Enable MOb Register
VE_CANEN1:
	.word 0xff06
	.ascii "CANEN1"
	.word VE_HEAD
	.set VE_HEAD=VE_CANEN1
XT_CANEN1:
	.word PFA_DOVARIABLE
PFA_CANEN1:
	.word 221
; ( -- addr ) System Constant
; R( -- )
; Enable Interrupt MOb Register
VE_CANIE2:
	.word 0xff06
	.ascii "CANIE2"
	.word VE_HEAD
	.set VE_HEAD=VE_CANIE2
XT_CANIE2:
	.word PFA_DOVARIABLE
PFA_CANIE2:
	.word 222
; ( -- addr ) System Constant
; R( -- )
; Enable Interrupt MOb Register
VE_CANIE1:
	.word 0xff06
	.ascii "CANIE1"
	.word VE_HEAD
	.set VE_HEAD=VE_CANIE1
XT_CANIE1:
	.word PFA_DOVARIABLE
PFA_CANIE1:
	.word 223
; ( -- addr ) System Constant
; R( -- )
; CAN Status Interrupt MOb Register
VE_CANSIT2:
	.word 0xff07
	.db "CANSIT2",0
	.word VE_HEAD
	.set VE_HEAD=VE_CANSIT2
XT_CANSIT2:
	.word PFA_DOVARIABLE
PFA_CANSIT2:
	.word 224
; ( -- addr ) System Constant
; R( -- )
; CAN Status Interrupt MOb Register
VE_CANSIT1:
	.word 0xff07
	.db "CANSIT1",0
	.word VE_HEAD
	.set VE_HEAD=VE_CANSIT1
XT_CANSIT1:
	.word PFA_DOVARIABLE
PFA_CANSIT1:
	.word 225
; ( -- addr ) System Constant
; R( -- )
; Bit Timing Register 1
VE_CANBT1:
	.word 0xff06
	.ascii "CANBT1"
	.word VE_HEAD
	.set VE_HEAD=VE_CANBT1
XT_CANBT1:
	.word PFA_DOVARIABLE
PFA_CANBT1:
	.word 226
; ( -- addr ) System Constant
; R( -- )
; Bit Timing Register 2
VE_CANBT2:
	.word 0xff06
	.ascii "CANBT2"
	.word VE_HEAD
	.set VE_HEAD=VE_CANBT2
XT_CANBT2:
	.word PFA_DOVARIABLE
PFA_CANBT2:
	.word 227
; ( -- addr ) System Constant
; R( -- )
; Bit Timing Register 3
VE_CANBT3:
	.word 0xff06
	.ascii "CANBT3"
	.word VE_HEAD
	.set VE_HEAD=VE_CANBT3
XT_CANBT3:
	.word PFA_DOVARIABLE
PFA_CANBT3:
	.word 228
; ( -- addr ) System Constant
; R( -- )
; Timer Control Register
VE_CANTCON:
	.word 0xff07
	.db "CANTCON",0
	.word VE_HEAD
	.set VE_HEAD=VE_CANTCON
XT_CANTCON:
	.word PFA_DOVARIABLE
PFA_CANTCON:
	.word 229
; ( -- addr ) System Constant
; R( -- )
; Timer Register Low
VE_CANTIML:
	.word 0xff07
	.db "CANTIML",0
	.word VE_HEAD
	.set VE_HEAD=VE_CANTIML
XT_CANTIML:
	.word PFA_DOVARIABLE
PFA_CANTIML:
	.word 230
; ( -- addr ) System Constant
; R( -- )
; Timer Register High
VE_CANTIMH:
	.word 0xff07
	.db "CANTIMH",0
	.word VE_HEAD
	.set VE_HEAD=VE_CANTIMH
XT_CANTIMH:
	.word PFA_DOVARIABLE
PFA_CANTIMH:
	.word 231
; ( -- addr ) System Constant
; R( -- )
; TTC Timer Register Low
VE_CANTTCL:
	.word 0xff07
	.db "CANTTCL",0
	.word VE_HEAD
	.set VE_HEAD=VE_CANTTCL
XT_CANTTCL:
	.word PFA_DOVARIABLE
PFA_CANTTCL:
	.word 232
; ( -- addr ) System Constant
; R( -- )
; TTC Timer Register High
VE_CANTTCH:
	.word 0xff07
	.db "CANTTCH",0
	.word VE_HEAD
	.set VE_HEAD=VE_CANTTCH
XT_CANTTCH:
	.word PFA_DOVARIABLE
PFA_CANTTCH:
	.word 233
; ( -- addr ) System Constant
; R( -- )
; Transmit Error Counter Register
VE_CANTEC:
	.word 0xff06
	.ascii "CANTEC"
	.word VE_HEAD
	.set VE_HEAD=VE_CANTEC
XT_CANTEC:
	.word PFA_DOVARIABLE
PFA_CANTEC:
	.word 234
; ( -- addr ) System Constant
; R( -- )
; Receive Error Counter Register
VE_CANREC:
	.word 0xff06
	.ascii "CANREC"
	.word VE_HEAD
	.set VE_HEAD=VE_CANREC
XT_CANREC:
	.word PFA_DOVARIABLE
PFA_CANREC:
	.word 235
; ( -- addr ) System Constant
; R( -- )
; Highest Priority MOb Register
VE_CANHPMOB:
	.word 0xff08
	.ascii "CANHPMOB"
	.word VE_HEAD
	.set VE_HEAD=VE_CANHPMOB
XT_CANHPMOB:
	.word PFA_DOVARIABLE
PFA_CANHPMOB:
	.word 236
; ( -- addr ) System Constant
; R( -- )
; Page MOb Register
VE_CANPAGE:
	.word 0xff07
	.db "CANPAGE",0
	.word VE_HEAD
	.set VE_HEAD=VE_CANPAGE
XT_CANPAGE:
	.word PFA_DOVARIABLE
PFA_CANPAGE:
	.word 237
; ( -- addr ) System Constant
; R( -- )
; MOb Status Register
VE_CANSTMOB:
	.word 0xff08
	.ascii "CANSTMOB"
	.word VE_HEAD
	.set VE_HEAD=VE_CANSTMOB
XT_CANSTMOB:
	.word PFA_DOVARIABLE
PFA_CANSTMOB:
	.word 238
; ( -- addr ) System Constant
; R( -- )
; MOb Control and DLC Register
VE_CANCDMOB:
	.word 0xff08
	.ascii "CANCDMOB"
	.word VE_HEAD
	.set VE_HEAD=VE_CANCDMOB
XT_CANCDMOB:
	.word PFA_DOVARIABLE
PFA_CANCDMOB:
	.word 239
; ( -- addr ) System Constant
; R( -- )
; Identifier Tag Register 4
VE_CANIDT4:
	.word 0xff07
	.db "CANIDT4",0
	.word VE_HEAD
	.set VE_HEAD=VE_CANIDT4
XT_CANIDT4:
	.word PFA_DOVARIABLE
PFA_CANIDT4:
	.word 240
; ( -- addr ) System Constant
; R( -- )
; Identifier Tag Register 3
VE_CANIDT3:
	.word 0xff07
	.db "CANIDT3",0
	.word VE_HEAD
	.set VE_HEAD=VE_CANIDT3
XT_CANIDT3:
	.word PFA_DOVARIABLE
PFA_CANIDT3:
	.word 241
; ( -- addr ) System Constant
; R( -- )
; Identifier Tag Register 2
VE_CANIDT2:
	.word 0xff07
	.db "CANIDT2",0
	.word VE_HEAD
	.set VE_HEAD=VE_CANIDT2
XT_CANIDT2:
	.word PFA_DOVARIABLE
PFA_CANIDT2:
	.word 242
; ( -- addr ) System Constant
; R( -- )
; Identifier Tag Register 1
VE_CANIDT1:
	.word 0xff07
	.db "CANIDT1",0
	.word VE_HEAD
	.set VE_HEAD=VE_CANIDT1
XT_CANIDT1:
	.word PFA_DOVARIABLE
PFA_CANIDT1:
	.word 243
; ( -- addr ) System Constant
; R( -- )
; Identifier Mask Register 4
VE_CANIDM4:
	.word 0xff07
	.db "CANIDM4",0
	.word VE_HEAD
	.set VE_HEAD=VE_CANIDM4
XT_CANIDM4:
	.word PFA_DOVARIABLE
PFA_CANIDM4:
	.word 244
; ( -- addr ) System Constant
; R( -- )
; Identifier Mask Register 3
VE_CANIDM3:
	.word 0xff07
	.db "CANIDM3",0
	.word VE_HEAD
	.set VE_HEAD=VE_CANIDM3
XT_CANIDM3:
	.word PFA_DOVARIABLE
PFA_CANIDM3:
	.word 245
; ( -- addr ) System Constant
; R( -- )
; Identifier Mask Register 2
VE_CANIDM2:
	.word 0xff07
	.db "CANIDM2",0
	.word VE_HEAD
	.set VE_HEAD=VE_CANIDM2
XT_CANIDM2:
	.word PFA_DOVARIABLE
PFA_CANIDM2:
	.word 246
; ( -- addr ) System Constant
; R( -- )
; Identifier Mask Register 1
VE_CANIDM1:
	.word 0xff07
	.db "CANIDM1",0
	.word VE_HEAD
	.set VE_HEAD=VE_CANIDM1
XT_CANIDM1:
	.word PFA_DOVARIABLE
PFA_CANIDM1:
	.word 247
; ( -- addr ) System Constant
; R( -- )
; Time Stamp Register Low
VE_CANSTML:
	.word 0xff07
	.db "CANSTML",0
	.word VE_HEAD
	.set VE_HEAD=VE_CANSTML
XT_CANSTML:
	.word PFA_DOVARIABLE
PFA_CANSTML:
	.word 248
; ( -- addr ) System Constant
; R( -- )
; Time Stamp Register High
VE_CANSTMH:
	.word 0xff07
	.db "CANSTMH",0
	.word VE_HEAD
	.set VE_HEAD=VE_CANSTMH
XT_CANSTMH:
	.word PFA_DOVARIABLE
PFA_CANSTMH:
	.word 249
; ( -- addr ) System Constant
; R( -- )
; Message Data Register
VE_CANMSG:
	.word 0xff06
	.ascii "CANMSG"
	.word VE_HEAD
	.set VE_HEAD=VE_CANMSG
XT_CANMSG:
	.word PFA_DOVARIABLE
PFA_CANMSG:
	.word 250

.endif
