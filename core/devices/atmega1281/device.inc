; Partname:  ATmega1281
; generated automatically, no not edit

.if WANT_ANALOG_COMPARATOR == 1
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
; Digital Input Disable Register 1
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
; USART Baud Rate Register  Bytes
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
; USART Baud Rate Register  Bytes
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
.if WANT_TWI == 1
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
.if WANT_TIMER_COUNTER_0 == 1
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
.if WANT_TIMER_COUNTER_2 == 1
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
; Timer/Counter2 Control Register A
VE_TCCR2A:
	.word 0xff06
	.ascii "TCCR2A"
	.word VE_HEAD
	.set VE_HEAD=VE_TCCR2A
XT_TCCR2A:
	.word PFA_DOVARIABLE
PFA_TCCR2A:
	.word 176
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
	.word 177
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
; Timer/Counter2 Output Compare Register B
VE_OCR2B:
	.word 0xff05
	.db "OCR2B",0
	.word VE_HEAD
	.set VE_HEAD=VE_OCR2B
XT_OCR2B:
	.word PFA_DOVARIABLE
PFA_OCR2B:
	.word 180
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
	.word 179
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
.if WANT_TIMER_COUNTER_5 == 1
; ( -- addr ) System Constant
; R( -- )
; Timer/Counter5 Control Register A
VE_TCCR5A:
	.word 0xff06
	.ascii "TCCR5A"
	.word VE_HEAD
	.set VE_HEAD=VE_TCCR5A
XT_TCCR5A:
	.word PFA_DOVARIABLE
PFA_TCCR5A:
	.word 288
; ( -- addr ) System Constant
; R( -- )
; Timer/Counter5 Control Register B
VE_TCCR5B:
	.word 0xff06
	.ascii "TCCR5B"
	.word VE_HEAD
	.set VE_HEAD=VE_TCCR5B
XT_TCCR5B:
	.word PFA_DOVARIABLE
PFA_TCCR5B:
	.word 289
; ( -- addr ) System Constant
; R( -- )
; Timer/Counter 5 Control Register C
VE_TCCR5C:
	.word 0xff06
	.ascii "TCCR5C"
	.word VE_HEAD
	.set VE_HEAD=VE_TCCR5C
XT_TCCR5C:
	.word PFA_DOVARIABLE
PFA_TCCR5C:
	.word 290
; ( -- addr ) System Constant
; R( -- )
; Timer/Counter5  Bytes
VE_TCNT5:
	.word 0xff05
	.db "TCNT5",0
	.word VE_HEAD
	.set VE_HEAD=VE_TCNT5
XT_TCNT5:
	.word PFA_DOVARIABLE
PFA_TCNT5:
	.word 292
; ( -- addr ) System Constant
; R( -- )
; Timer/Counter5 Output Compare Register A  Bytes
VE_OCR5A:
	.word 0xff05
	.db "OCR5A",0
	.word VE_HEAD
	.set VE_HEAD=VE_OCR5A
XT_OCR5A:
	.word PFA_DOVARIABLE
PFA_OCR5A:
	.word 296
; ( -- addr ) System Constant
; R( -- )
; Timer/Counter5 Output Compare Register B  Bytes
VE_OCR5B:
	.word 0xff05
	.db "OCR5B",0
	.word VE_HEAD
	.set VE_HEAD=VE_OCR5B
XT_OCR5B:
	.word PFA_DOVARIABLE
PFA_OCR5B:
	.word 298
; ( -- addr ) System Constant
; R( -- )
; Timer/Counter5 Output Compare Register B  Bytes
VE_OCR5C:
	.word 0xff05
	.db "OCR5C",0
	.word VE_HEAD
	.set VE_HEAD=VE_OCR5C
XT_OCR5C:
	.word PFA_DOVARIABLE
PFA_OCR5C:
	.word 300
; ( -- addr ) System Constant
; R( -- )
; Timer/Counter5 Input Capture Register  Bytes
VE_ICR5:
	.word 0xff04
	.ascii "ICR5"
	.word VE_HEAD
	.set VE_HEAD=VE_ICR5
XT_ICR5:
	.word PFA_DOVARIABLE
PFA_ICR5:
	.word 294
; ( -- addr ) System Constant
; R( -- )
; Timer/Counter5 Interrupt Mask Register
VE_TIMSK5:
	.word 0xff06
	.ascii "TIMSK5"
	.word VE_HEAD
	.set VE_HEAD=VE_TIMSK5
XT_TIMSK5:
	.word PFA_DOVARIABLE
PFA_TIMSK5:
	.word 115
; ( -- addr ) System Constant
; R( -- )
; Timer/Counter5 Interrupt Flag register
VE_TIFR5:
	.word 0xff05
	.db "TIFR5",0
	.word VE_HEAD
	.set VE_HEAD=VE_TIFR5
XT_TIFR5:
	.word PFA_DOVARIABLE
PFA_TIFR5:
	.word 58

.endif
.if WANT_TIMER_COUNTER_4 == 1
; ( -- addr ) System Constant
; R( -- )
; Timer/Counter4 Control Register A
VE_TCCR4A:
	.word 0xff06
	.ascii "TCCR4A"
	.word VE_HEAD
	.set VE_HEAD=VE_TCCR4A
XT_TCCR4A:
	.word PFA_DOVARIABLE
PFA_TCCR4A:
	.word 160
; ( -- addr ) System Constant
; R( -- )
; Timer/Counter4 Control Register B
VE_TCCR4B:
	.word 0xff06
	.ascii "TCCR4B"
	.word VE_HEAD
	.set VE_HEAD=VE_TCCR4B
XT_TCCR4B:
	.word PFA_DOVARIABLE
PFA_TCCR4B:
	.word 161
; ( -- addr ) System Constant
; R( -- )
; Timer/Counter 4 Control Register C
VE_TCCR4C:
	.word 0xff06
	.ascii "TCCR4C"
	.word VE_HEAD
	.set VE_HEAD=VE_TCCR4C
XT_TCCR4C:
	.word PFA_DOVARIABLE
PFA_TCCR4C:
	.word 162
; ( -- addr ) System Constant
; R( -- )
; Timer/Counter4  Bytes
VE_TCNT4:
	.word 0xff05
	.db "TCNT4",0
	.word VE_HEAD
	.set VE_HEAD=VE_TCNT4
XT_TCNT4:
	.word PFA_DOVARIABLE
PFA_TCNT4:
	.word 164
; ( -- addr ) System Constant
; R( -- )
; Timer/Counter4 Output Compare Register A  Bytes
VE_OCR4A:
	.word 0xff05
	.db "OCR4A",0
	.word VE_HEAD
	.set VE_HEAD=VE_OCR4A
XT_OCR4A:
	.word PFA_DOVARIABLE
PFA_OCR4A:
	.word 168
; ( -- addr ) System Constant
; R( -- )
; Timer/Counter4 Output Compare Register B  Bytes
VE_OCR4B:
	.word 0xff05
	.db "OCR4B",0
	.word VE_HEAD
	.set VE_HEAD=VE_OCR4B
XT_OCR4B:
	.word PFA_DOVARIABLE
PFA_OCR4B:
	.word 170
; ( -- addr ) System Constant
; R( -- )
; Timer/Counter4 Output Compare Register B  Bytes
VE_OCR4C:
	.word 0xff05
	.db "OCR4C",0
	.word VE_HEAD
	.set VE_HEAD=VE_OCR4C
XT_OCR4C:
	.word PFA_DOVARIABLE
PFA_OCR4C:
	.word 172
; ( -- addr ) System Constant
; R( -- )
; Timer/Counter4 Input Capture Register  Bytes
VE_ICR4:
	.word 0xff04
	.ascii "ICR4"
	.word VE_HEAD
	.set VE_HEAD=VE_ICR4
XT_ICR4:
	.word PFA_DOVARIABLE
PFA_ICR4:
	.word 166
; ( -- addr ) System Constant
; R( -- )
; Timer/Counter4 Interrupt Mask Register
VE_TIMSK4:
	.word 0xff06
	.ascii "TIMSK4"
	.word VE_HEAD
	.set VE_HEAD=VE_TIMSK4
XT_TIMSK4:
	.word PFA_DOVARIABLE
PFA_TIMSK4:
	.word 114
; ( -- addr ) System Constant
; R( -- )
; Timer/Counter4 Interrupt Flag register
VE_TIFR4:
	.word 0xff05
	.db "TIFR4",0
	.word VE_HEAD
	.set VE_HEAD=VE_TIFR4
XT_TIFR4:
	.word PFA_DOVARIABLE
PFA_TIFR4:
	.word 57

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
; Timer/Counter3 Output Compare Register A  Bytes
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
; Timer/Counter3 Output Compare Register B  Bytes
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
; Timer/Counter3 Output Compare Register B  Bytes
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
; Timer/Counter3 Interrupt Mask Register
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
; Timer/Counter3 Interrupt Flag register
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
; Timer/Counter1 Output Compare Register A  Bytes
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
; Timer/Counter1 Output Compare Register B  Bytes
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
; Timer/Counter1 Output Compare Register C  Bytes
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
; Timer/Counter1 Interrupt Mask Register
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
; Timer/Counter1 Interrupt Flag register
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
.if WANT_EEPROM == 1
; ( -- addr ) System Constant
; R( -- )
; EEPROM Address Register Low Bytes
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
; ( -- addr ) System Constant
; R( -- )
; Pin Change Mask Register 2
VE_PCMSK2:
	.word 0xff06
	.ascii "PCMSK2"
	.word VE_HEAD
	.set VE_HEAD=VE_PCMSK2
XT_PCMSK2:
	.word PFA_DOVARIABLE
PFA_PCMSK2:
	.word 109
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
	.word 108
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
	.word 107
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
; The ADC Control and Status register A
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
; Digital Input Disable Register
VE_DIDR2:
	.word 0xff05
	.db "DIDR2",0
	.word VE_HEAD
	.set VE_HEAD=VE_DIDR2
XT_DIDR2:
	.word PFA_DOVARIABLE
PFA_DIDR2:
	.word 125
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
; RAM Page Z Select Register
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
	.word 101
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
	.word 100

.endif
