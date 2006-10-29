; ( -- 3f )
VE_SREG:
    .db 4, "SREG",0
    .dw VE_HEAD
    .set VE_HEAD = VE_SREG
XT_SREG:
    .dw PFA_DOVARIABLE
PFA_SREG:
    .dw $3f
; ( -- 3e )
VE_SPH:
    .db 3, "SPH"
    .dw VE_HEAD
    .set VE_HEAD = VE_SPH
XT_SPH:
    .dw PFA_DOVARIABLE
PFA_SPH:
    .dw $3e
; ( -- 3d )
VE_SPL:
    .db 3, "SPL"
    .dw VE_HEAD
    .set VE_HEAD = VE_SPL
XT_SPL:
    .dw PFA_DOVARIABLE
PFA_SPL:
    .dw $3d
; ( -- 3c )
VE_OCR0:
    .db 4, "OCR0",0
    .dw VE_HEAD
    .set VE_HEAD = VE_OCR0
XT_OCR0:
    .dw PFA_DOVARIABLE
PFA_OCR0:
    .dw $3c
; ( -- 3b )
VE_GICR:
    .db 4, "GICR",0
    .dw VE_HEAD
    .set VE_HEAD = VE_GICR
XT_GICR:
    .dw PFA_DOVARIABLE
PFA_GICR:
    .dw $3b
; ( -- 3b )
VE_GIMSK:
    .db 5, "GIMSK"
    .dw VE_HEAD
    .set VE_HEAD = VE_GIMSK
XT_GIMSK:
    .dw PFA_DOVARIABLE
PFA_GIMSK:
    .dw $3b
; ( -- 3a )
VE_GIFR:
    .db 4, "GIFR",0
    .dw VE_HEAD
    .set VE_HEAD = VE_GIFR
XT_GIFR:
    .dw PFA_DOVARIABLE
PFA_GIFR:
    .dw $3a
; ( -- 39 )
VE_TIMSK:
    .db 5, "TIMSK"
    .dw VE_HEAD
    .set VE_HEAD = VE_TIMSK
XT_TIMSK:
    .dw PFA_DOVARIABLE
PFA_TIMSK:
    .dw $39
; ( -- 38 )
VE_TIFR:
    .db 4, "TIFR",0
    .dw VE_HEAD
    .set VE_HEAD = VE_TIFR
XT_TIFR:
    .dw PFA_DOVARIABLE
PFA_TIFR:
    .dw $38
; ( -- 37 )
VE_SPMCR:
    .db 5, "SPMCR"
    .dw VE_HEAD
    .set VE_HEAD = VE_SPMCR
XT_SPMCR:
    .dw PFA_DOVARIABLE
PFA_SPMCR:
    .dw $37
; ( -- 36 )
VE_I2CR:
    .db 4, "I2CR",0
    .dw VE_HEAD
    .set VE_HEAD = VE_I2CR
XT_I2CR:
    .dw PFA_DOVARIABLE
PFA_I2CR:
    .dw $36
; ( -- 36 )
VE_TWCR:
    .db 4, "TWCR",0
    .dw VE_HEAD
    .set VE_HEAD = VE_TWCR
XT_TWCR:
    .dw PFA_DOVARIABLE
PFA_TWCR:
    .dw $36
; ( -- 35 )
VE_MCUCR:
    .db 5, "MCUCR"
    .dw VE_HEAD
    .set VE_HEAD = VE_MCUCR
XT_MCUCR:
    .dw PFA_DOVARIABLE
PFA_MCUCR:
    .dw $35
; ( -- 34 )
VE_MCUSR:
    .db 5, "MCUSR"
    .dw VE_HEAD
    .set VE_HEAD = VE_MCUSR
XT_MCUSR:
    .dw PFA_DOVARIABLE
PFA_MCUSR:
    .dw $34
; ( -- 34 )
VE_MCUCSR:
    .db 6, "MCUCSR",0
    .dw VE_HEAD
    .set VE_HEAD = VE_MCUCSR
XT_MCUCSR:
    .dw PFA_DOVARIABLE
PFA_MCUCSR:
    .dw $34
; ( -- 33 )
VE_TCCR0:
    .db 5, "TCCR0"
    .dw VE_HEAD
    .set VE_HEAD = VE_TCCR0
XT_TCCR0:
    .dw PFA_DOVARIABLE
PFA_TCCR0:
    .dw $33
; ( -- 32 )
VE_TCNT0:
    .db 5, "TCNT0"
    .dw VE_HEAD
    .set VE_HEAD = VE_TCNT0
XT_TCNT0:
    .dw PFA_DOVARIABLE
PFA_TCNT0:
    .dw $32
; ( -- 31 )
VE_OSCCAL:
    .db 6, "OSCCAL",0
    .dw VE_HEAD
    .set VE_HEAD = VE_OSCCAL
XT_OSCCAL:
    .dw PFA_DOVARIABLE
PFA_OSCCAL:
    .dw $31
; ( -- 30 )
VE_SFIOR:
    .db 5, "SFIOR"
    .dw VE_HEAD
    .set VE_HEAD = VE_SFIOR
XT_SFIOR:
    .dw PFA_DOVARIABLE
PFA_SFIOR:
    .dw $30
; ( -- 2f )
VE_TCCR1A:
    .db 6, "TCCR1A",0
    .dw VE_HEAD
    .set VE_HEAD = VE_TCCR1A
XT_TCCR1A:
    .dw PFA_DOVARIABLE
PFA_TCCR1A:
    .dw $2f
; ( -- 2e )
VE_TCCR1B:
    .db 6, "TCCR1B",0
    .dw VE_HEAD
    .set VE_HEAD = VE_TCCR1B
XT_TCCR1B:
    .dw PFA_DOVARIABLE
PFA_TCCR1B:
    .dw $2e
; ( -- 2d )
VE_TCNT1H:
    .db 6, "TCNT1H",0
    .dw VE_HEAD
    .set VE_HEAD = VE_TCNT1H
XT_TCNT1H:
    .dw PFA_DOVARIABLE
PFA_TCNT1H:
    .dw $2d
; ( -- 2c )
VE_TCNT1L:
    .db 6, "TCNT1L",0
    .dw VE_HEAD
    .set VE_HEAD = VE_TCNT1L
XT_TCNT1L:
    .dw PFA_DOVARIABLE
PFA_TCNT1L:
    .dw $2c
; ( -- 2b )
VE_OCR1AH:
    .db 6, "OCR1AH",0
    .dw VE_HEAD
    .set VE_HEAD = VE_OCR1AH
XT_OCR1AH:
    .dw PFA_DOVARIABLE
PFA_OCR1AH:
    .dw $2b
; ( -- 2a )
VE_OCR1AL:
    .db 6, "OCR1AL",0
    .dw VE_HEAD
    .set VE_HEAD = VE_OCR1AL
XT_OCR1AL:
    .dw PFA_DOVARIABLE
PFA_OCR1AL:
    .dw $2a
; ( -- 29 )
VE_OCR1BH:
    .db 6, "OCR1BH",0
    .dw VE_HEAD
    .set VE_HEAD = VE_OCR1BH
XT_OCR1BH:
    .dw PFA_DOVARIABLE
PFA_OCR1BH:
    .dw $29
; ( -- 28 )
VE_OCR1BL:
    .db 6, "OCR1BL",0
    .dw VE_HEAD
    .set VE_HEAD = VE_OCR1BL
XT_OCR1BL:
    .dw PFA_DOVARIABLE
PFA_OCR1BL:
    .dw $28
; ( -- 27 )
VE_ICR1H:
    .db 5, "ICR1H"
    .dw VE_HEAD
    .set VE_HEAD = VE_ICR1H
XT_ICR1H:
    .dw PFA_DOVARIABLE
PFA_ICR1H:
    .dw $27
; ( -- 26 )
VE_ICR1L:
    .db 5, "ICR1L"
    .dw VE_HEAD
    .set VE_HEAD = VE_ICR1L
XT_ICR1L:
    .dw PFA_DOVARIABLE
PFA_ICR1L:
    .dw $26
; ( -- 25 )
VE_TCCR2:
    .db 5, "TCCR2"
    .dw VE_HEAD
    .set VE_HEAD = VE_TCCR2
XT_TCCR2:
    .dw PFA_DOVARIABLE
PFA_TCCR2:
    .dw $25
; ( -- 24 )
VE_TCNT2:
    .db 5, "TCNT2"
    .dw VE_HEAD
    .set VE_HEAD = VE_TCNT2
XT_TCNT2:
    .dw PFA_DOVARIABLE
PFA_TCNT2:
    .dw $24
; ( -- 23 )
VE_OCR2:
    .db 4, "OCR2",0
    .dw VE_HEAD
    .set VE_HEAD = VE_OCR2
XT_OCR2:
    .dw PFA_DOVARIABLE
PFA_OCR2:
    .dw $23
; ( -- 22 )
VE_ASSR:
    .db 4, "ASSR",0
    .dw VE_HEAD
    .set VE_HEAD = VE_ASSR
XT_ASSR:
    .dw PFA_DOVARIABLE
PFA_ASSR:
    .dw $22
; ( -- 21 )
VE_WDTCR:
    .db 5, "WDTCR"
    .dw VE_HEAD
    .set VE_HEAD = VE_WDTCR
XT_WDTCR:
    .dw PFA_DOVARIABLE
PFA_WDTCR:
    .dw $21
; ( -- 20 )
VE_UBRRHI:
    .db 6, "UBRRHI",0
    .dw VE_HEAD
    .set VE_HEAD = VE_UBRRHI
XT_UBRRHI:
    .dw PFA_DOVARIABLE
PFA_UBRRHI:
    .dw $20
; ( -- 20 )
VE_UBRRH:
    .db 5, "UBRRH"
    .dw VE_HEAD
    .set VE_HEAD = VE_UBRRH
XT_UBRRH:
    .dw PFA_DOVARIABLE
PFA_UBRRH:
    .dw $20
; ( -- 1f )
VE_EEARH:
    .db 5, "EEARH"
    .dw VE_HEAD
    .set VE_HEAD = VE_EEARH
XT_EEARH:
    .dw PFA_DOVARIABLE
PFA_EEARH:
    .dw $1f
; ( -- 1e )
VE_EEARL:
    .db 5, "EEARL"
    .dw VE_HEAD
    .set VE_HEAD = VE_EEARL
XT_EEARL:
    .dw PFA_DOVARIABLE
PFA_EEARL:
    .dw $1e
; ( -- 1d )
VE_EEDR:
    .db 4, "EEDR",0
    .dw VE_HEAD
    .set VE_HEAD = VE_EEDR
XT_EEDR:
    .dw PFA_DOVARIABLE
PFA_EEDR:
    .dw $1d
; ( -- 1c )
VE_EECR:
    .db 4, "EECR",0
    .dw VE_HEAD
    .set VE_HEAD = VE_EECR
XT_EECR:
    .dw PFA_DOVARIABLE
PFA_EECR:
    .dw $1c
; ( -- 1b )
VE_PORTA:
    .db 5, "PORTA"
    .dw VE_HEAD
    .set VE_HEAD = VE_PORTA
XT_PORTA:
    .dw PFA_DOVARIABLE
PFA_PORTA:
    .dw $1b
; ( -- 1a )
VE_DDRA:
    .db 4, "DDRA",0
    .dw VE_HEAD
    .set VE_HEAD = VE_DDRA
XT_DDRA:
    .dw PFA_DOVARIABLE
PFA_DDRA:
    .dw $1a
; ( -- 19 )
VE_PINA:
    .db 4, "PINA",0
    .dw VE_HEAD
    .set VE_HEAD = VE_PINA
XT_PINA:
    .dw PFA_DOVARIABLE
PFA_PINA:
    .dw $19
; ( -- 18 )
VE_PORTB:
    .db 5, "PORTB"
    .dw VE_HEAD
    .set VE_HEAD = VE_PORTB
XT_PORTB:
    .dw PFA_DOVARIABLE
PFA_PORTB:
    .dw $18
; ( -- 17 )
VE_DDRB:
    .db 4, "DDRB",0
    .dw VE_HEAD
    .set VE_HEAD = VE_DDRB
XT_DDRB:
    .dw PFA_DOVARIABLE
PFA_DDRB:
    .dw $17
; ( -- 16 )
VE_PINB:
    .db 4, "PINB",0
    .dw VE_HEAD
    .set VE_HEAD = VE_PINB
XT_PINB:
    .dw PFA_DOVARIABLE
PFA_PINB:
    .dw $16
; ( -- 15 )
VE_PORTC:
    .db 5, "PORTC"
    .dw VE_HEAD
    .set VE_HEAD = VE_PORTC
XT_PORTC:
    .dw PFA_DOVARIABLE
PFA_PORTC:
    .dw $15
; ( -- 14 )
VE_DDRC:
    .db 4, "DDRC",0
    .dw VE_HEAD
    .set VE_HEAD = VE_DDRC
XT_DDRC:
    .dw PFA_DOVARIABLE
PFA_DDRC:
    .dw $14
; ( -- 13 )
VE_PINC:
    .db 4, "PINC",0
    .dw VE_HEAD
    .set VE_HEAD = VE_PINC
XT_PINC:
    .dw PFA_DOVARIABLE
PFA_PINC:
    .dw $13
; ( -- 12 )
VE_PORTD:
    .db 5, "PORTD"
    .dw VE_HEAD
    .set VE_HEAD = VE_PORTD
XT_PORTD:
    .dw PFA_DOVARIABLE
PFA_PORTD:
    .dw $12
; ( -- 11 )
VE_DDRD:
    .db 4, "DDRD",0
    .dw VE_HEAD
    .set VE_HEAD = VE_DDRD
XT_DDRD:
    .dw PFA_DOVARIABLE
PFA_DDRD:
    .dw $11
; ( -- 10 )
VE_PIND:
    .db 4, "PIND",0
    .dw VE_HEAD
    .set VE_HEAD = VE_PIND
XT_PIND:
    .dw PFA_DOVARIABLE
PFA_PIND:
    .dw $10
; ( -- 0f )
VE_SPDR:
    .db 4, "SPDR",0
    .dw VE_HEAD
    .set VE_HEAD = VE_SPDR
XT_SPDR:
    .dw PFA_DOVARIABLE
PFA_SPDR:
    .dw $0f
; ( -- 0e )
VE_SPSR:
    .db 4, "SPSR",0
    .dw VE_HEAD
    .set VE_HEAD = VE_SPSR
XT_SPSR:
    .dw PFA_DOVARIABLE
PFA_SPSR:
    .dw $0e
; ( -- 0d )
VE_SPCR:
    .db 4, "SPCR",0
    .dw VE_HEAD
    .set VE_HEAD = VE_SPCR
XT_SPCR:
    .dw PFA_DOVARIABLE
PFA_SPCR:
    .dw $0d
; ( -- 0c )
VE_UDR:
    .db 3, "UDR"
    .dw VE_HEAD
    .set VE_HEAD = VE_UDR
XT_UDR:
    .dw PFA_DOVARIABLE
PFA_UDR:
    .dw $0c
; ( -- 0b )
VE_UCSRA:
    .db 5, "UCSRA"
    .dw VE_HEAD
    .set VE_HEAD = VE_UCSRA
XT_UCSRA:
    .dw PFA_DOVARIABLE
PFA_UCSRA:
    .dw $0b
; ( -- 35 )
VE_USR:
    .db 3, "USR"
    .dw VE_HEAD
    .set VE_HEAD = VE_USR
XT_USR:
    .dw PFA_DOVARIABLE
PFA_USR:
    .dw $35
; ( -- 0a )
VE_UCSRB:
    .db 5, "UCSRB"
    .dw VE_HEAD
    .set VE_HEAD = VE_UCSRB
XT_UCSRB:
    .dw PFA_DOVARIABLE
PFA_UCSRB:
    .dw $0a
; ( -- 35 )
VE_UCR:
    .db 3, "UCR"
    .dw VE_HEAD
    .set VE_HEAD = VE_UCR
XT_UCR:
    .dw PFA_DOVARIABLE
PFA_UCR:
    .dw $35
; ( -- 20 )
VE_UCSRC:
    .db 5, "UCSRC"
    .dw VE_HEAD
    .set VE_HEAD = VE_UCSRC
XT_UCSRC:
    .dw PFA_DOVARIABLE
PFA_UCSRC:
    .dw $20
; ( -- 09 )
VE_UBRR:
    .db 4, "UBRR",0
    .dw VE_HEAD
    .set VE_HEAD = VE_UBRR
XT_UBRR:
    .dw PFA_DOVARIABLE
PFA_UBRR:
    .dw $09
; ( -- 09 )
VE_UBRRL:
    .db 5, "UBRRL"
    .dw VE_HEAD
    .set VE_HEAD = VE_UBRRL
XT_UBRRL:
    .dw PFA_DOVARIABLE
PFA_UBRRL:
    .dw $09
; ( -- 08 )
VE_ACSR:
    .db 4, "ACSR",0
    .dw VE_HEAD
    .set VE_HEAD = VE_ACSR
XT_ACSR:
    .dw PFA_DOVARIABLE
PFA_ACSR:
    .dw $08
; ( -- 07 )
VE_ADMUX:
    .db 5, "ADMUX"
    .dw VE_HEAD
    .set VE_HEAD = VE_ADMUX
XT_ADMUX:
    .dw PFA_DOVARIABLE
PFA_ADMUX:
    .dw $07
; ( -- 06 )
VE_ADCSR:
    .db 5, "ADCSR"
    .dw VE_HEAD
    .set VE_HEAD = VE_ADCSR
XT_ADCSR:
    .dw PFA_DOVARIABLE
PFA_ADCSR:
    .dw $06
; ( -- 05 )
VE_ADCH:
    .db 4, "ADCH",0
    .dw VE_HEAD
    .set VE_HEAD = VE_ADCH
XT_ADCH:
    .dw PFA_DOVARIABLE
PFA_ADCH:
    .dw $05
; ( -- 04 )
VE_ADCL:
    .db 4, "ADCL",0
    .dw VE_HEAD
    .set VE_HEAD = VE_ADCL
XT_ADCL:
    .dw PFA_DOVARIABLE
PFA_ADCL:
    .dw $04
; ( -- 03 )
VE_TWDR:
    .db 4, "TWDR",0
    .dw VE_HEAD
    .set VE_HEAD = VE_TWDR
XT_TWDR:
    .dw PFA_DOVARIABLE
PFA_TWDR:
    .dw $03
; ( -- 02 )
VE_TWAR:
    .db 4, "TWAR",0
    .dw VE_HEAD
    .set VE_HEAD = VE_TWAR
XT_TWAR:
    .dw PFA_DOVARIABLE
PFA_TWAR:
    .dw $02
; ( -- 01 )
VE_TWSR:
    .db 4, "TWSR",0
    .dw VE_HEAD
    .set VE_HEAD = VE_TWSR
XT_TWSR:
    .dw PFA_DOVARIABLE
PFA_TWSR:
    .dw $01
; ( -- 00 )
VE_TWBR:
    .db 4, "TWBR",0
    .dw VE_HEAD
    .set VE_HEAD = VE_TWBR
XT_TWBR:
    .dw PFA_DOVARIABLE
PFA_TWBR:
    .dw $00
; ( -- 03 )
VE_I2DR:
    .db 4, "I2DR",0
    .dw VE_HEAD
    .set VE_HEAD = VE_I2DR
XT_I2DR:
    .dw PFA_DOVARIABLE
PFA_I2DR:
    .dw $03
; ( -- 02 )
VE_I2AR:
    .db 4, "I2AR",0
    .dw VE_HEAD
    .set VE_HEAD = VE_I2AR
XT_I2AR:
    .dw PFA_DOVARIABLE
PFA_I2AR:
    .dw $02
; ( -- 01 )
VE_I2SR:
    .db 4, "I2SR",0
    .dw VE_HEAD
    .set VE_HEAD = VE_I2SR
XT_I2SR:
    .dw PFA_DOVARIABLE
PFA_I2SR:
    .dw $01
; ( -- 00 )
VE_I2BR:
    .db 4, "I2BR",0
    .dw VE_HEAD
    .set VE_HEAD = VE_I2BR
XT_I2BR:
    .dw PFA_DOVARIABLE
PFA_I2BR:
    .dw $00
