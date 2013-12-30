; Partname:  ATmega161
; Built using part description XML file version 233
; generated automatically, no not edit

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
	.word 0x28

.endif

; ********
.if WANT_CPU == 1
; ********
; ( -- addr ) System Constant
; R( -- )
; Extended MCU Control Register
VE_EMCUCR:
	.word 0xff06
	.ascii "EMCUCR"
	.word VE_HEAD
	.set VE_HEAD=VE_EMCUCR
XT_EMCUCR:
	.word PFA_DOVARIABLE
PFA_EMCUCR:
	.word 0x56
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
; Store Program Memory Control Register
VE_SPMCR:
	.word 0xff05
	.db "SPMCR",0
	.word VE_HEAD
	.set VE_HEAD=VE_SPMCR
XT_SPMCR:
	.word PFA_DOVARIABLE
PFA_SPMCR:
	.word 0x57
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
	.word 0x3F
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
	.word 0x3E
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
	.word 0x3C
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
	.word 0x3D

.endif

; ********
.if WANT_EXTERNAL_INTERRUPT == 1
; ********
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
	.word 0x5A
; ( -- addr ) System Constant
; R( -- )
; General Interrupt Mask Register
VE_GIMSK:
	.word 0xff05
	.db "GIMSK",0
	.word VE_HEAD
	.set VE_HEAD=VE_GIMSK
XT_GIMSK:
	.word PFA_DOVARIABLE
PFA_GIMSK:
	.word 0x5B

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
	.word 0x3A
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
	.word 0x39
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
	.word 0x3B

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
	.word 0x37
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
	.word 0x36
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
	.word 0x38

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
	.word 0x34
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
	.word 0x33
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
	.word 0x35

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
	.word 0x31
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
	.word 0x30
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
	.word 0x32

.endif

; ********
.if WANT_PORTE == 1
; ********
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
	.word 0x26
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
	.word 0x25
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
	.word 0x27

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
	.word 0x2D
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
	.word 0x2F
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
	.word 0x2E

.endif

; ********
.if WANT_TIMER_COUNTER_0 == 1
; ********
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
	.word 0x51
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
	.word 0x50
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
	.word 0x53
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
	.word 0x52
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
	.word 0x58
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
	.word 0x59

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
	.word 0x45
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
	.word 0x44
; ( -- addr ) System Constant
; R( -- )
; Timer/Counter1 Output Compare Register High Byte
VE_OCR1AH:
	.word 0xff06
	.ascii "OCR1AH"
	.word VE_HEAD
	.set VE_HEAD=VE_OCR1AH
XT_OCR1AH:
	.word PFA_DOVARIABLE
PFA_OCR1AH:
	.word 0x4B
; ( -- addr ) System Constant
; R( -- )
; Timer/Counter1 Output Compare Register Low Byte
VE_OCR1AL:
	.word 0xff06
	.ascii "OCR1AL"
	.word VE_HEAD
	.set VE_HEAD=VE_OCR1AL
XT_OCR1AL:
	.word PFA_DOVARIABLE
PFA_OCR1AL:
	.word 0x4A
; ( -- addr ) System Constant
; R( -- )
; Timer/Counter1 Output Compare Register High Byte
VE_OCR1BH:
	.word 0xff06
	.ascii "OCR1BH"
	.word VE_HEAD
	.set VE_HEAD=VE_OCR1BH
XT_OCR1BH:
	.word PFA_DOVARIABLE
PFA_OCR1BH:
	.word 0x49
; ( -- addr ) System Constant
; R( -- )
; Timer/Counter1 Output Compare Register Low Byte
VE_OCR1BL:
	.word 0xff06
	.ascii "OCR1BL"
	.word VE_HEAD
	.set VE_HEAD=VE_OCR1BL
XT_OCR1BL:
	.word PFA_DOVARIABLE
PFA_OCR1BL:
	.word 0x48
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
	.word 0x4F
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
	.word 0x4E
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
	.word 0x4D
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
	.word 0x4C

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
	.word 0x46
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
	.word 0x42
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
	.word 0x47
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
	.word 0x43

.endif

; ********
.if WANT_USART0 == 1
; ********
; ( -- addr ) System Constant
; R( -- )
; USART Baud Rate Register Byte
VE_UBRR0:
	.word 0xff05
	.db "UBRR0",0
	.word VE_HEAD
	.set VE_HEAD=VE_UBRR0
XT_UBRR0:
	.word PFA_DOVARIABLE
PFA_UBRR0:
	.word 0x29
; ( -- addr ) System Constant
; R( -- )
; High Byte Baud Rate Register
VE_UBRRHI:
	.word 0xff06
	.ascii "UBRRHI"
	.word VE_HEAD
	.set VE_HEAD=VE_UBRRHI
XT_UBRRHI:
	.word PFA_DOVARIABLE
PFA_UBRRHI:
	.word 0x40
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
	.word 0x2B
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
	.word 0x2A
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
	.word 0x2C

.endif

; ********
.if WANT_USART1 == 1
; ********
; ( -- addr ) System Constant
; R( -- )
; USART Baud Rate Register Byte
VE_UBRR1:
	.word 0xff05
	.db "UBRR1",0
	.word VE_HEAD
	.set VE_HEAD=VE_UBRR1
XT_UBRR1:
	.word PFA_DOVARIABLE
PFA_UBRR1:
	.word 0x20
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
	.word 0x22
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
	.word 0x21
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
	.word 0x23

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
	.word 0x41

.endif
