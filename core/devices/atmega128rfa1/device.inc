; Partname:  ATmega128RFA1
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
; USART0 I/O Data Register
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
; USART0 Control and Status Register A
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
; USART0 Control and Status Register B
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
; USART0 Control and Status Register C
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
; USART0 Baud Rate Register  Bytes
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
; USART1 I/O Data Register
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
; USART1 Control and Status Register A
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
; USART1 Control and Status Register B
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
; USART1 Control and Status Register C
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
; USART1 Baud Rate Register  Bytes
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
; TWI Bit Rate Register
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
; TWI Data Register
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
; TWI (Slave) Address Register
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
; Port A Input Pins Address
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
; Port B Input Pins Address
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
; Port C Input Pins Address
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
; Port D Input Pins Address
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
; Port E Input Pins Address
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
; Port F Data Register
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
; Port F Data Direction Register
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
; Port F Input Pins Address
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
; Port G Data Register
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
; Port G Data Direction Register
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
; Port G Input Pins Address
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
; Timer/Counter0 Output Compare Register B
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
; Timer/Counter0 Register
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
; Timer/Counter0 Control Register B
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
; Timer/Counter0 Control Register A
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
; Timer/Counter0 Interrupt Flag Register
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
; Timer/Counter5 Control Register C
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
; Timer/Counter5 Output Compare Register C  Bytes
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
; Timer/Counter5 Interrupt Flag Register
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
; Timer/Counter4 Control Register C
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
; Timer/Counter4 Output Compare Register C  Bytes
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
; Timer/Counter4 Interrupt Flag Register
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
; Timer/Counter3 Control Register C
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
; Timer/Counter3 Output Compare Register C  Bytes
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
; Timer/Counter3 Interrupt Flag Register
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
; Timer/Counter1 Interrupt Flag Register
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
.if WANT_TRX24 == 1
; ( -- addr ) System Constant
; R( -- )
; AES Control Register
VE_AES_CTRL:
	.word 0xff08
	.ascii "AES_CTRL"
	.word VE_HEAD
	.set VE_HEAD=VE_AES_CTRL
XT_AES_CTRL:
	.word PFA_DOVARIABLE
PFA_AES_CTRL:
	.word 316
; ( -- addr ) System Constant
; R( -- )
; AES Status Register
VE_AES_STATUS:
	.word 0xff10
	.ascii "AES_STATUS"
	.word VE_HEAD
	.set VE_HEAD=VE_AES_STATUS
XT_AES_STATUS:
	.word PFA_DOVARIABLE
PFA_AES_STATUS:
	.word 317
; ( -- addr ) System Constant
; R( -- )
; AES Plain and Cipher Text Buffer Register
VE_AES_STATE:
	.word 0xff09
	.db "AES_STATE",0
	.word VE_HEAD
	.set VE_HEAD=VE_AES_STATE
XT_AES_STATE:
	.word PFA_DOVARIABLE
PFA_AES_STATE:
	.word 318
; ( -- addr ) System Constant
; R( -- )
; AES Encryption and Decryption Key Buffer Register
VE_AES_KEY:
	.word 0xff07
	.db "AES_KEY",0
	.word VE_HEAD
	.set VE_HEAD=VE_AES_KEY
XT_AES_KEY:
	.word PFA_DOVARIABLE
PFA_AES_KEY:
	.word 319
; ( -- addr ) System Constant
; R( -- )
; Transceiver Status Register
VE_TRX_STATUS:
	.word 0xff10
	.ascii "TRX_STATUS"
	.word VE_HEAD
	.set VE_HEAD=VE_TRX_STATUS
XT_TRX_STATUS:
	.word PFA_DOVARIABLE
PFA_TRX_STATUS:
	.word 321
; ( -- addr ) System Constant
; R( -- )
; Transceiver State Control Register
VE_TRX_STATE:
	.word 0xff09
	.db "TRX_STATE",0
	.word VE_HEAD
	.set VE_HEAD=VE_TRX_STATE
XT_TRX_STATE:
	.word PFA_DOVARIABLE
PFA_TRX_STATE:
	.word 322
; ( -- addr ) System Constant
; R( -- )
; Reserved
VE_TRX_CTRL_0:
	.word 0xff10
	.ascii "TRX_CTRL_0"
	.word VE_HEAD
	.set VE_HEAD=VE_TRX_CTRL_0
XT_TRX_CTRL_0:
	.word PFA_DOVARIABLE
PFA_TRX_CTRL_0:
	.word 323
; ( -- addr ) System Constant
; R( -- )
; Transceiver Control Register 1
VE_TRX_CTRL_1:
	.word 0xff10
	.ascii "TRX_CTRL_1"
	.word VE_HEAD
	.set VE_HEAD=VE_TRX_CTRL_1
XT_TRX_CTRL_1:
	.word PFA_DOVARIABLE
PFA_TRX_CTRL_1:
	.word 324
; ( -- addr ) System Constant
; R( -- )
; Transceiver Transmit Power Control Register
VE_PHY_TX_PWR:
	.word 0xff10
	.ascii "PHY_TX_PWR"
	.word VE_HEAD
	.set VE_HEAD=VE_PHY_TX_PWR
XT_PHY_TX_PWR:
	.word PFA_DOVARIABLE
PFA_PHY_TX_PWR:
	.word 325
; ( -- addr ) System Constant
; R( -- )
; Receiver Signal Strength Indicator Register
VE_PHY_RSSI:
	.word 0xff08
	.ascii "PHY_RSSI"
	.word VE_HEAD
	.set VE_HEAD=VE_PHY_RSSI
XT_PHY_RSSI:
	.word PFA_DOVARIABLE
PFA_PHY_RSSI:
	.word 326
; ( -- addr ) System Constant
; R( -- )
; Transceiver Energy Detection Level Register
VE_PHY_ED_LEVEL:
	.word 0xff12
	.ascii "PHY_ED_LEVEL"
	.word VE_HEAD
	.set VE_HEAD=VE_PHY_ED_LEVEL
XT_PHY_ED_LEVEL:
	.word PFA_DOVARIABLE
PFA_PHY_ED_LEVEL:
	.word 327
; ( -- addr ) System Constant
; R( -- )
; Transceiver Clear Channel Assessment (CCA) Control Register
VE_PHY_CC_CCA:
	.word 0xff10
	.ascii "PHY_CC_CCA"
	.word VE_HEAD
	.set VE_HEAD=VE_PHY_CC_CCA
XT_PHY_CC_CCA:
	.word PFA_DOVARIABLE
PFA_PHY_CC_CCA:
	.word 328
; ( -- addr ) System Constant
; R( -- )
; Transceiver CCA Threshold Setting Register
VE_CCA_THRES:
	.word 0xff09
	.db "CCA_THRES",0
	.word VE_HEAD
	.set VE_HEAD=VE_CCA_THRES
XT_CCA_THRES:
	.word PFA_DOVARIABLE
PFA_CCA_THRES:
	.word 329
; ( -- addr ) System Constant
; R( -- )
; Transceiver Receive Control Register
VE_RX_CTRL:
	.word 0xff07
	.db "RX_CTRL",0
	.word VE_HEAD
	.set VE_HEAD=VE_RX_CTRL
XT_RX_CTRL:
	.word PFA_DOVARIABLE
PFA_RX_CTRL:
	.word 330
; ( -- addr ) System Constant
; R( -- )
; Start of Frame Delimiter Value Register
VE_SFD_VALUE:
	.word 0xff09
	.db "SFD_VALUE",0
	.word VE_HEAD
	.set VE_HEAD=VE_SFD_VALUE
XT_SFD_VALUE:
	.word PFA_DOVARIABLE
PFA_SFD_VALUE:
	.word 331
; ( -- addr ) System Constant
; R( -- )
; Transceiver Control Register 2
VE_TRX_CTRL_2:
	.word 0xff10
	.ascii "TRX_CTRL_2"
	.word VE_HEAD
	.set VE_HEAD=VE_TRX_CTRL_2
XT_TRX_CTRL_2:
	.word PFA_DOVARIABLE
PFA_TRX_CTRL_2:
	.word 332
; ( -- addr ) System Constant
; R( -- )
; Antenna Diversity Control Register
VE_ANT_DIV:
	.word 0xff07
	.db "ANT_DIV",0
	.word VE_HEAD
	.set VE_HEAD=VE_ANT_DIV
XT_ANT_DIV:
	.word PFA_DOVARIABLE
PFA_ANT_DIV:
	.word 333
; ( -- addr ) System Constant
; R( -- )
; Transceiver Interrupt Enable Register
VE_IRQ_MASK:
	.word 0xff08
	.ascii "IRQ_MASK"
	.word VE_HEAD
	.set VE_HEAD=VE_IRQ_MASK
XT_IRQ_MASK:
	.word PFA_DOVARIABLE
PFA_IRQ_MASK:
	.word 334
; ( -- addr ) System Constant
; R( -- )
; Transceiver Interrupt Status Register
VE_IRQ_STATUS:
	.word 0xff10
	.ascii "IRQ_STATUS"
	.word VE_HEAD
	.set VE_HEAD=VE_IRQ_STATUS
XT_IRQ_STATUS:
	.word PFA_DOVARIABLE
PFA_IRQ_STATUS:
	.word 335
; ( -- addr ) System Constant
; R( -- )
; Voltage Regulator Control and Status Register
VE_VREG_CTRL:
	.word 0xff09
	.db "VREG_CTRL",0
	.word VE_HEAD
	.set VE_HEAD=VE_VREG_CTRL
XT_VREG_CTRL:
	.word PFA_DOVARIABLE
PFA_VREG_CTRL:
	.word 336
; ( -- addr ) System Constant
; R( -- )
; Battery Monitor Control and Status Register
VE_BATMON:
	.word 0xff06
	.ascii "BATMON"
	.word VE_HEAD
	.set VE_HEAD=VE_BATMON
XT_BATMON:
	.word PFA_DOVARIABLE
PFA_BATMON:
	.word 337
; ( -- addr ) System Constant
; R( -- )
; Crystal Oscillator Control Register
VE_XOSC_CTRL:
	.word 0xff09
	.db "XOSC_CTRL",0
	.word VE_HEAD
	.set VE_HEAD=VE_XOSC_CTRL
XT_XOSC_CTRL:
	.word PFA_DOVARIABLE
PFA_XOSC_CTRL:
	.word 338
; ( -- addr ) System Constant
; R( -- )
; Transceiver Receiver Sensitivity Control Register
VE_RX_SYN:
	.word 0xff06
	.ascii "RX_SYN"
	.word VE_HEAD
	.set VE_HEAD=VE_RX_SYN
XT_RX_SYN:
	.word PFA_DOVARIABLE
PFA_RX_SYN:
	.word 341
; ( -- addr ) System Constant
; R( -- )
; Transceiver Acknowledgment Frame Control Register 1
VE_XAH_CTRL_1:
	.word 0xff10
	.ascii "XAH_CTRL_1"
	.word VE_HEAD
	.set VE_HEAD=VE_XAH_CTRL_1
XT_XAH_CTRL_1:
	.word PFA_DOVARIABLE
PFA_XAH_CTRL_1:
	.word 343
; ( -- addr ) System Constant
; R( -- )
; Transceiver Filter Tuning Control Register
VE_FTN_CTRL:
	.word 0xff08
	.ascii "FTN_CTRL"
	.word VE_HEAD
	.set VE_HEAD=VE_FTN_CTRL
XT_FTN_CTRL:
	.word PFA_DOVARIABLE
PFA_FTN_CTRL:
	.word 344
; ( -- addr ) System Constant
; R( -- )
; Transceiver Center Frequency Calibration Control Register
VE_PLL_CF:
	.word 0xff06
	.ascii "PLL_CF"
	.word VE_HEAD
	.set VE_HEAD=VE_PLL_CF
XT_PLL_CF:
	.word PFA_DOVARIABLE
PFA_PLL_CF:
	.word 346
; ( -- addr ) System Constant
; R( -- )
; Transceiver Delay Cell Calibration Control Register
VE_PLL_DCU:
	.word 0xff07
	.db "PLL_DCU",0
	.word VE_HEAD
	.set VE_HEAD=VE_PLL_DCU
XT_PLL_DCU:
	.word PFA_DOVARIABLE
PFA_PLL_DCU:
	.word 347
; ( -- addr ) System Constant
; R( -- )
; Device Identification Register (Part Number)
VE_PART_NUM:
	.word 0xff08
	.ascii "PART_NUM"
	.word VE_HEAD
	.set VE_HEAD=VE_PART_NUM
XT_PART_NUM:
	.word PFA_DOVARIABLE
PFA_PART_NUM:
	.word 348
; ( -- addr ) System Constant
; R( -- )
; Device Identification Register (Version Number)
VE_VERSION_NUM:
	.word 0xff11
	.db "VERSION_NUM",0
	.word VE_HEAD
	.set VE_HEAD=VE_VERSION_NUM
XT_VERSION_NUM:
	.word PFA_DOVARIABLE
PFA_VERSION_NUM:
	.word 349
; ( -- addr ) System Constant
; R( -- )
; Device Identification Register (Manufacture ID Low Byte)
VE_MAN_ID_0:
	.word 0xff08
	.ascii "MAN_ID_0"
	.word VE_HEAD
	.set VE_HEAD=VE_MAN_ID_0
XT_MAN_ID_0:
	.word PFA_DOVARIABLE
PFA_MAN_ID_0:
	.word 350
; ( -- addr ) System Constant
; R( -- )
; Device Identification Register (Manufacture ID High Byte)
VE_MAN_ID_1:
	.word 0xff08
	.ascii "MAN_ID_1"
	.word VE_HEAD
	.set VE_HEAD=VE_MAN_ID_1
XT_MAN_ID_1:
	.word PFA_DOVARIABLE
PFA_MAN_ID_1:
	.word 351
; ( -- addr ) System Constant
; R( -- )
; Transceiver MAC Short Address Register (Low Byte)
VE_SHORT_ADDR_0:
	.word 0xff12
	.ascii "SHORT_ADDR_0"
	.word VE_HEAD
	.set VE_HEAD=VE_SHORT_ADDR_0
XT_SHORT_ADDR_0:
	.word PFA_DOVARIABLE
PFA_SHORT_ADDR_0:
	.word 352
; ( -- addr ) System Constant
; R( -- )
; Transceiver MAC Short Address Register (High Byte)
VE_SHORT_ADDR_1:
	.word 0xff12
	.ascii "SHORT_ADDR_1"
	.word VE_HEAD
	.set VE_HEAD=VE_SHORT_ADDR_1
XT_SHORT_ADDR_1:
	.word PFA_DOVARIABLE
PFA_SHORT_ADDR_1:
	.word 353
; ( -- addr ) System Constant
; R( -- )
; Transceiver Personal Area Network ID Register (Low Byte)
VE_PAN_ID_0:
	.word 0xff08
	.ascii "PAN_ID_0"
	.word VE_HEAD
	.set VE_HEAD=VE_PAN_ID_0
XT_PAN_ID_0:
	.word PFA_DOVARIABLE
PFA_PAN_ID_0:
	.word 354
; ( -- addr ) System Constant
; R( -- )
; Transceiver Personal Area Network ID Register (High Byte)
VE_PAN_ID_1:
	.word 0xff08
	.ascii "PAN_ID_1"
	.word VE_HEAD
	.set VE_HEAD=VE_PAN_ID_1
XT_PAN_ID_1:
	.word PFA_DOVARIABLE
PFA_PAN_ID_1:
	.word 355
; ( -- addr ) System Constant
; R( -- )
; Transceiver MAC IEEE Address Register 0
VE_IEEE_ADDR_0:
	.word 0xff11
	.db "IEEE_ADDR_0",0
	.word VE_HEAD
	.set VE_HEAD=VE_IEEE_ADDR_0
XT_IEEE_ADDR_0:
	.word PFA_DOVARIABLE
PFA_IEEE_ADDR_0:
	.word 356
; ( -- addr ) System Constant
; R( -- )
; Transceiver MAC IEEE Address Register 1
VE_IEEE_ADDR_1:
	.word 0xff11
	.db "IEEE_ADDR_1",0
	.word VE_HEAD
	.set VE_HEAD=VE_IEEE_ADDR_1
XT_IEEE_ADDR_1:
	.word PFA_DOVARIABLE
PFA_IEEE_ADDR_1:
	.word 357
; ( -- addr ) System Constant
; R( -- )
; Transceiver MAC IEEE Address Register 2
VE_IEEE_ADDR_2:
	.word 0xff11
	.db "IEEE_ADDR_2",0
	.word VE_HEAD
	.set VE_HEAD=VE_IEEE_ADDR_2
XT_IEEE_ADDR_2:
	.word PFA_DOVARIABLE
PFA_IEEE_ADDR_2:
	.word 358
; ( -- addr ) System Constant
; R( -- )
; Transceiver MAC IEEE Address Register 3
VE_IEEE_ADDR_3:
	.word 0xff11
	.db "IEEE_ADDR_3",0
	.word VE_HEAD
	.set VE_HEAD=VE_IEEE_ADDR_3
XT_IEEE_ADDR_3:
	.word PFA_DOVARIABLE
PFA_IEEE_ADDR_3:
	.word 359
; ( -- addr ) System Constant
; R( -- )
; Transceiver MAC IEEE Address Register 4
VE_IEEE_ADDR_4:
	.word 0xff11
	.db "IEEE_ADDR_4",0
	.word VE_HEAD
	.set VE_HEAD=VE_IEEE_ADDR_4
XT_IEEE_ADDR_4:
	.word PFA_DOVARIABLE
PFA_IEEE_ADDR_4:
	.word 360
; ( -- addr ) System Constant
; R( -- )
; Transceiver MAC IEEE Address Register 5
VE_IEEE_ADDR_5:
	.word 0xff11
	.db "IEEE_ADDR_5",0
	.word VE_HEAD
	.set VE_HEAD=VE_IEEE_ADDR_5
XT_IEEE_ADDR_5:
	.word PFA_DOVARIABLE
PFA_IEEE_ADDR_5:
	.word 361
; ( -- addr ) System Constant
; R( -- )
; Transceiver MAC IEEE Address Register 6
VE_IEEE_ADDR_6:
	.word 0xff11
	.db "IEEE_ADDR_6",0
	.word VE_HEAD
	.set VE_HEAD=VE_IEEE_ADDR_6
XT_IEEE_ADDR_6:
	.word PFA_DOVARIABLE
PFA_IEEE_ADDR_6:
	.word 362
; ( -- addr ) System Constant
; R( -- )
; Transceiver MAC IEEE Address Register 7
VE_IEEE_ADDR_7:
	.word 0xff11
	.db "IEEE_ADDR_7",0
	.word VE_HEAD
	.set VE_HEAD=VE_IEEE_ADDR_7
XT_IEEE_ADDR_7:
	.word PFA_DOVARIABLE
PFA_IEEE_ADDR_7:
	.word 363
; ( -- addr ) System Constant
; R( -- )
; Transceiver Extended Operating Mode Control Register
VE_XAH_CTRL_0:
	.word 0xff10
	.ascii "XAH_CTRL_0"
	.word VE_HEAD
	.set VE_HEAD=VE_XAH_CTRL_0
XT_XAH_CTRL_0:
	.word PFA_DOVARIABLE
PFA_XAH_CTRL_0:
	.word 364
; ( -- addr ) System Constant
; R( -- )
; Transceiver CSMA-CA Random Number Generator Seed Register
VE_CSMA_SEED_0:
	.word 0xff11
	.db "CSMA_SEED_0",0
	.word VE_HEAD
	.set VE_HEAD=VE_CSMA_SEED_0
XT_CSMA_SEED_0:
	.word PFA_DOVARIABLE
PFA_CSMA_SEED_0:
	.word 365
; ( -- addr ) System Constant
; R( -- )
; Transceiver Acknowledgment Frame Control Register 2
VE_CSMA_SEED_1:
	.word 0xff11
	.db "CSMA_SEED_1",0
	.word VE_HEAD
	.set VE_HEAD=VE_CSMA_SEED_1
XT_CSMA_SEED_1:
	.word PFA_DOVARIABLE
PFA_CSMA_SEED_1:
	.word 366
; ( -- addr ) System Constant
; R( -- )
; Transceiver CSMA-CA Back-off Exponent Control Register
VE_CSMA_BE:
	.word 0xff07
	.db "CSMA_BE",0
	.word VE_HEAD
	.set VE_HEAD=VE_CSMA_BE
XT_CSMA_BE:
	.word PFA_DOVARIABLE
PFA_CSMA_BE:
	.word 367
; ( -- addr ) System Constant
; R( -- )
; Transceiver Digital Test Control Register
VE_TST_CTRL_DIGI:
	.word 0xff13
	.db "TST_CTRL_DIGI",0
	.word VE_HEAD
	.set VE_HEAD=VE_TST_CTRL_DIGI
XT_TST_CTRL_DIGI:
	.word PFA_DOVARIABLE
PFA_TST_CTRL_DIGI:
	.word 374
; ( -- addr ) System Constant
; R( -- )
; Transceiver Received Frame Length Register
VE_TST_RX_LENGTH:
	.word 0xff13
	.db "TST_RX_LENGTH",0
	.word VE_HEAD
	.set VE_HEAD=VE_TST_RX_LENGTH
XT_TST_RX_LENGTH:
	.word PFA_DOVARIABLE
PFA_TST_RX_LENGTH:
	.word 379
; ( -- addr ) System Constant
; R( -- )
; Start of frame buffer
VE_TRXFBST:
	.word 0xff07
	.db "TRXFBST",0
	.word VE_HEAD
	.set VE_HEAD=VE_TRXFBST
XT_TRXFBST:
	.word PFA_DOVARIABLE
PFA_TRXFBST:
	.word 384
; ( -- addr ) System Constant
; R( -- )
; End of frame buffer
VE_TRXFBEND:
	.word 0xff08
	.ascii "TRXFBEND"
	.word VE_HEAD
	.set VE_HEAD=VE_TRXFBEND
XT_TRXFBEND:
	.word PFA_DOVARIABLE
PFA_TRXFBEND:
	.word 511

.endif
.if WANT_SYMCNT == 1
; ( -- addr ) System Constant
; R( -- )
; Symbol Counter Output Compare Register 1 HH-Byte
VE_SCOCR1HH:
	.word 0xff08
	.ascii "SCOCR1HH"
	.word VE_HEAD
	.set VE_HEAD=VE_SCOCR1HH
XT_SCOCR1HH:
	.word PFA_DOVARIABLE
PFA_SCOCR1HH:
	.word 248
; ( -- addr ) System Constant
; R( -- )
; Symbol Counter Output Compare Register 1 HL-Byte
VE_SCOCR1HL:
	.word 0xff08
	.ascii "SCOCR1HL"
	.word VE_HEAD
	.set VE_HEAD=VE_SCOCR1HL
XT_SCOCR1HL:
	.word PFA_DOVARIABLE
PFA_SCOCR1HL:
	.word 247
; ( -- addr ) System Constant
; R( -- )
; Symbol Counter Output Compare Register 1 LH-Byte
VE_SCOCR1LH:
	.word 0xff08
	.ascii "SCOCR1LH"
	.word VE_HEAD
	.set VE_HEAD=VE_SCOCR1LH
XT_SCOCR1LH:
	.word PFA_DOVARIABLE
PFA_SCOCR1LH:
	.word 246
; ( -- addr ) System Constant
; R( -- )
; Symbol Counter Output Compare Register 1 LL-Byte
VE_SCOCR1LL:
	.word 0xff08
	.ascii "SCOCR1LL"
	.word VE_HEAD
	.set VE_HEAD=VE_SCOCR1LL
XT_SCOCR1LL:
	.word PFA_DOVARIABLE
PFA_SCOCR1LL:
	.word 245
; ( -- addr ) System Constant
; R( -- )
; Symbol Counter Output Compare Register 2 HH-Byte
VE_SCOCR2HH:
	.word 0xff08
	.ascii "SCOCR2HH"
	.word VE_HEAD
	.set VE_HEAD=VE_SCOCR2HH
XT_SCOCR2HH:
	.word PFA_DOVARIABLE
PFA_SCOCR2HH:
	.word 244
; ( -- addr ) System Constant
; R( -- )
; Symbol Counter Output Compare Register 2 HL-Byte
VE_SCOCR2HL:
	.word 0xff08
	.ascii "SCOCR2HL"
	.word VE_HEAD
	.set VE_HEAD=VE_SCOCR2HL
XT_SCOCR2HL:
	.word PFA_DOVARIABLE
PFA_SCOCR2HL:
	.word 243
; ( -- addr ) System Constant
; R( -- )
; Symbol Counter Output Compare Register 2 LH-Byte
VE_SCOCR2LH:
	.word 0xff08
	.ascii "SCOCR2LH"
	.word VE_HEAD
	.set VE_HEAD=VE_SCOCR2LH
XT_SCOCR2LH:
	.word PFA_DOVARIABLE
PFA_SCOCR2LH:
	.word 242
; ( -- addr ) System Constant
; R( -- )
; Symbol Counter Output Compare Register 2 LL-Byte
VE_SCOCR2LL:
	.word 0xff08
	.ascii "SCOCR2LL"
	.word VE_HEAD
	.set VE_HEAD=VE_SCOCR2LL
XT_SCOCR2LL:
	.word PFA_DOVARIABLE
PFA_SCOCR2LL:
	.word 241
; ( -- addr ) System Constant
; R( -- )
; Symbol Counter Output Compare Register 3 HH-Byte
VE_SCOCR3HH:
	.word 0xff08
	.ascii "SCOCR3HH"
	.word VE_HEAD
	.set VE_HEAD=VE_SCOCR3HH
XT_SCOCR3HH:
	.word PFA_DOVARIABLE
PFA_SCOCR3HH:
	.word 240
; ( -- addr ) System Constant
; R( -- )
; Symbol Counter Output Compare Register 3 HL-Byte
VE_SCOCR3HL:
	.word 0xff08
	.ascii "SCOCR3HL"
	.word VE_HEAD
	.set VE_HEAD=VE_SCOCR3HL
XT_SCOCR3HL:
	.word PFA_DOVARIABLE
PFA_SCOCR3HL:
	.word 239
; ( -- addr ) System Constant
; R( -- )
; Symbol Counter Output Compare Register 3 LH-Byte
VE_SCOCR3LH:
	.word 0xff08
	.ascii "SCOCR3LH"
	.word VE_HEAD
	.set VE_HEAD=VE_SCOCR3LH
XT_SCOCR3LH:
	.word PFA_DOVARIABLE
PFA_SCOCR3LH:
	.word 238
; ( -- addr ) System Constant
; R( -- )
; Symbol Counter Output Compare Register 3 LL-Byte
VE_SCOCR3LL:
	.word 0xff08
	.ascii "SCOCR3LL"
	.word VE_HEAD
	.set VE_HEAD=VE_SCOCR3LL
XT_SCOCR3LL:
	.word PFA_DOVARIABLE
PFA_SCOCR3LL:
	.word 237
; ( -- addr ) System Constant
; R( -- )
; Symbol Counter Frame Timestamp Register HH-Byte
VE_SCTSRHH:
	.word 0xff07
	.db "SCTSRHH",0
	.word VE_HEAD
	.set VE_HEAD=VE_SCTSRHH
XT_SCTSRHH:
	.word PFA_DOVARIABLE
PFA_SCTSRHH:
	.word 236
; ( -- addr ) System Constant
; R( -- )
; Symbol Counter Frame Timestamp Register HL-Byte
VE_SCTSRHL:
	.word 0xff07
	.db "SCTSRHL",0
	.word VE_HEAD
	.set VE_HEAD=VE_SCTSRHL
XT_SCTSRHL:
	.word PFA_DOVARIABLE
PFA_SCTSRHL:
	.word 235
; ( -- addr ) System Constant
; R( -- )
; Symbol Counter Frame Timestamp Register LH-Byte
VE_SCTSRLH:
	.word 0xff07
	.db "SCTSRLH",0
	.word VE_HEAD
	.set VE_HEAD=VE_SCTSRLH
XT_SCTSRLH:
	.word PFA_DOVARIABLE
PFA_SCTSRLH:
	.word 234
; ( -- addr ) System Constant
; R( -- )
; Symbol Counter Frame Timestamp Register LL-Byte
VE_SCTSRLL:
	.word 0xff07
	.db "SCTSRLL",0
	.word VE_HEAD
	.set VE_HEAD=VE_SCTSRLL
XT_SCTSRLL:
	.word PFA_DOVARIABLE
PFA_SCTSRLL:
	.word 233
; ( -- addr ) System Constant
; R( -- )
; Symbol Counter Beacon Timestamp Register HH-Byte
VE_SCBTSRHH:
	.word 0xff08
	.ascii "SCBTSRHH"
	.word VE_HEAD
	.set VE_HEAD=VE_SCBTSRHH
XT_SCBTSRHH:
	.word PFA_DOVARIABLE
PFA_SCBTSRHH:
	.word 232
; ( -- addr ) System Constant
; R( -- )
; Symbol Counter Beacon Timestamp Register HL-Byte
VE_SCBTSRHL:
	.word 0xff08
	.ascii "SCBTSRHL"
	.word VE_HEAD
	.set VE_HEAD=VE_SCBTSRHL
XT_SCBTSRHL:
	.word PFA_DOVARIABLE
PFA_SCBTSRHL:
	.word 231
; ( -- addr ) System Constant
; R( -- )
; Symbol Counter Beacon Timestamp Register LH-Byte
VE_SCBTSRLH:
	.word 0xff08
	.ascii "SCBTSRLH"
	.word VE_HEAD
	.set VE_HEAD=VE_SCBTSRLH
XT_SCBTSRLH:
	.word PFA_DOVARIABLE
PFA_SCBTSRLH:
	.word 230
; ( -- addr ) System Constant
; R( -- )
; Symbol Counter Beacon Timestamp Register LL-Byte
VE_SCBTSRLL:
	.word 0xff08
	.ascii "SCBTSRLL"
	.word VE_HEAD
	.set VE_HEAD=VE_SCBTSRLL
XT_SCBTSRLL:
	.word PFA_DOVARIABLE
PFA_SCBTSRLL:
	.word 229
; ( -- addr ) System Constant
; R( -- )
; Symbol Counter Register HH-Byte
VE_SCCNTHH:
	.word 0xff07
	.db "SCCNTHH",0
	.word VE_HEAD
	.set VE_HEAD=VE_SCCNTHH
XT_SCCNTHH:
	.word PFA_DOVARIABLE
PFA_SCCNTHH:
	.word 228
; ( -- addr ) System Constant
; R( -- )
; Symbol Counter Register HL-Byte
VE_SCCNTHL:
	.word 0xff07
	.db "SCCNTHL",0
	.word VE_HEAD
	.set VE_HEAD=VE_SCCNTHL
XT_SCCNTHL:
	.word PFA_DOVARIABLE
PFA_SCCNTHL:
	.word 227
; ( -- addr ) System Constant
; R( -- )
; Symbol Counter Register LH-Byte
VE_SCCNTLH:
	.word 0xff07
	.db "SCCNTLH",0
	.word VE_HEAD
	.set VE_HEAD=VE_SCCNTLH
XT_SCCNTLH:
	.word PFA_DOVARIABLE
PFA_SCCNTLH:
	.word 226
; ( -- addr ) System Constant
; R( -- )
; Symbol Counter Register LL-Byte
VE_SCCNTLL:
	.word 0xff07
	.db "SCCNTLL",0
	.word VE_HEAD
	.set VE_HEAD=VE_SCCNTLL
XT_SCCNTLL:
	.word PFA_DOVARIABLE
PFA_SCCNTLL:
	.word 225
; ( -- addr ) System Constant
; R( -- )
; Symbol Counter Interrupt Status Register
VE_SCIRQS:
	.word 0xff06
	.ascii "SCIRQS"
	.word VE_HEAD
	.set VE_HEAD=VE_SCIRQS
XT_SCIRQS:
	.word PFA_DOVARIABLE
PFA_SCIRQS:
	.word 224
; ( -- addr ) System Constant
; R( -- )
; Symbol Counter Interrupt Mask Register
VE_SCIRQM:
	.word 0xff06
	.ascii "SCIRQM"
	.word VE_HEAD
	.set VE_HEAD=VE_SCIRQM
XT_SCIRQM:
	.word PFA_DOVARIABLE
PFA_SCIRQM:
	.word 223
; ( -- addr ) System Constant
; R( -- )
; Symbol Counter Status Register
VE_SCSR:
	.word 0xff04
	.ascii "SCSR"
	.word VE_HEAD
	.set VE_HEAD=VE_SCSR
XT_SCSR:
	.word PFA_DOVARIABLE
PFA_SCSR:
	.word 222
; ( -- addr ) System Constant
; R( -- )
; Symbol Counter Control Register 1
VE_SCCR1:
	.word 0xff05
	.db "SCCR1",0
	.word VE_HEAD
	.set VE_HEAD=VE_SCCR1
XT_SCCR1:
	.word PFA_DOVARIABLE
PFA_SCCR1:
	.word 221
; ( -- addr ) System Constant
; R( -- )
; Symbol Counter Control Register 0
VE_SCCR0:
	.word 0xff05
	.db "SCCR0",0
	.word VE_HEAD
	.set VE_HEAD=VE_SCCR0
XT_SCCR0:
	.word PFA_DOVARIABLE
PFA_SCCR0:
	.word 220

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
.if WANT_JTAG == 1
; ( -- addr ) System Constant
; R( -- )
; On-Chip Debug Register
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
; The ADC Multiplexer Selection Register
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
; The ADC Control and Status Register A
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
; The ADC Control and Status Register C
VE_ADCSRC:
	.word 0xff06
	.ascii "ADCSRC"
	.word VE_HEAD
	.set VE_HEAD=VE_ADCSRC
XT_ADCSRC:
	.word PFA_DOVARIABLE
PFA_ADCSRC:
	.word 119
; ( -- addr ) System Constant
; R( -- )
; Digital Input Disable Register 2
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
; Extended Z-pointer Register for ELPM/SPM
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
; General Purpose I/O Register 2
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
; Power Reduction Register 2
VE_PRR2:
	.word 0xff04
	.ascii "PRR2"
	.word VE_HEAD
	.set VE_HEAD=VE_PRR2
XT_PRR2:
	.word PFA_DOVARIABLE
PFA_PRR2:
	.word 99
; ( -- addr ) System Constant
; R( -- )
; Power Reduction Register 1
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
.if WANT_FLASH == 1
; ( -- addr ) System Constant
; R( -- )
; Flash Extended-Mode Control-Register
VE_NEMCR:
	.word 0xff05
	.db "NEMCR",0
	.word VE_HEAD
	.set VE_HEAD=VE_NEMCR
XT_NEMCR:
	.word PFA_DOVARIABLE
PFA_NEMCR:
	.word 117
; ( -- addr ) System Constant
; R( -- )
; Reference Voltage Calibration Register
VE_BGCR:
	.word 0xff04
	.ascii "BGCR"
	.word VE_HEAD
	.set VE_HEAD=VE_BGCR
XT_BGCR:
	.word PFA_DOVARIABLE
PFA_BGCR:
	.word 103

.endif
.if WANT_PWRCTRL == 1
; ( -- addr ) System Constant
; R( -- )
; Transceiver Pin Register
VE_TRXPR:
	.word 0xff05
	.db "TRXPR",0
	.word VE_HEAD
	.set VE_HEAD=VE_TRXPR
XT_TRXPR:
	.word PFA_DOVARIABLE
PFA_TRXPR:
	.word 313
; ( -- addr ) System Constant
; R( -- )
; Data Retention Configuration Register of SRAM 0
VE_DRTRAM0:
	.word 0xff07
	.db "DRTRAM0",0
	.word VE_HEAD
	.set VE_HEAD=VE_DRTRAM0
XT_DRTRAM0:
	.word PFA_DOVARIABLE
PFA_DRTRAM0:
	.word 309
; ( -- addr ) System Constant
; R( -- )
; Data Retention Configuration Register of SRAM 1
VE_DRTRAM1:
	.word 0xff07
	.db "DRTRAM1",0
	.word VE_HEAD
	.set VE_HEAD=VE_DRTRAM1
XT_DRTRAM1:
	.word PFA_DOVARIABLE
PFA_DRTRAM1:
	.word 308
; ( -- addr ) System Constant
; R( -- )
; Data Retention Configuration Register of SRAM 2
VE_DRTRAM2:
	.word 0xff07
	.db "DRTRAM2",0
	.word VE_HEAD
	.set VE_HEAD=VE_DRTRAM2
XT_DRTRAM2:
	.word PFA_DOVARIABLE
PFA_DRTRAM2:
	.word 307
; ( -- addr ) System Constant
; R( -- )
; Data Retention Configuration Register of SRAM 3
VE_DRTRAM3:
	.word 0xff07
	.db "DRTRAM3",0
	.word VE_HEAD
	.set VE_HEAD=VE_DRTRAM3
XT_DRTRAM3:
	.word PFA_DOVARIABLE
PFA_DRTRAM3:
	.word 306
; ( -- addr ) System Constant
; R( -- )
; Low Leakage Voltage Regulator Data Register (Low-Byte)
VE_LLDRL:
	.word 0xff05
	.db "LLDRL",0
	.word VE_HEAD
	.set VE_HEAD=VE_LLDRL
XT_LLDRL:
	.word PFA_DOVARIABLE
PFA_LLDRL:
	.word 304
; ( -- addr ) System Constant
; R( -- )
; Low Leakage Voltage Regulator Data Register (High-Byte)
VE_LLDRH:
	.word 0xff05
	.db "LLDRH",0
	.word VE_HEAD
	.set VE_HEAD=VE_LLDRH
XT_LLDRH:
	.word PFA_DOVARIABLE
PFA_LLDRH:
	.word 305
; ( -- addr ) System Constant
; R( -- )
; Low Leakage Voltage Regulator Control Register
VE_LLCR:
	.word 0xff04
	.ascii "LLCR"
	.word VE_HEAD
	.set VE_HEAD=VE_LLCR
XT_LLCR:
	.word PFA_DOVARIABLE
PFA_LLCR:
	.word 303
; ( -- addr ) System Constant
; R( -- )
; Port Driver Strength Register 0
VE_DPDS0:
	.word 0xff05
	.db "DPDS0",0
	.word VE_HEAD
	.set VE_HEAD=VE_DPDS0
XT_DPDS0:
	.word PFA_DOVARIABLE
PFA_DPDS0:
	.word 310
; ( -- addr ) System Constant
; R( -- )
; Port Driver Strength Register 1
VE_DPDS1:
	.word 0xff05
	.db "DPDS1",0
	.word VE_HEAD
	.set VE_HEAD=VE_DPDS1
XT_DPDS1:
	.word PFA_DOVARIABLE
PFA_DPDS1:
	.word 311

.endif
.if WANT_USART0_SPI == 1

.endif
.if WANT_USART1_SPI == 1

.endif
