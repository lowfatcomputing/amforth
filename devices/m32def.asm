; ( -- 95 )
VE_SREG:
    .db 4, "SREG",0
    .dw VE_HEAD
    .set VE_HEAD = VE_SREG
XT_SREG:
    .dw PFA_DOVARIABLE
PFA_SREG:
    .dw 95
; ( -- 94 )
VE_SPH:
    .db 3, "SPH"
    .dw VE_HEAD
    .set VE_HEAD = VE_SPH
XT_SPH:
    .dw PFA_DOVARIABLE
PFA_SPH:
    .dw 94
; ( -- 93 )
VE_SPL:
    .db 3, "SPL"
    .dw VE_HEAD
    .set VE_HEAD = VE_SPL
XT_SPL:
    .dw PFA_DOVARIABLE
PFA_SPL:
    .dw 93
; ( -- 92 )
VE_OCR0:
    .db 4, "OCR0",0
    .dw VE_HEAD
    .set VE_HEAD = VE_OCR0
XT_OCR0:
    .dw PFA_DOVARIABLE
PFA_OCR0:
    .dw 92
; ( -- 270 )
VE_GIMSK:
    .db 5, "GIMSK"
    .dw VE_HEAD
    .set VE_HEAD = VE_GIMSK
XT_GIMSK:
    .dw PFA_DOVARIABLE
PFA_GIMSK:
    .dw 270
; ( -- 91 )
VE_GICR:
    .db 4, "GICR",0
    .dw VE_HEAD
    .set VE_HEAD = VE_GICR
XT_GICR:
    .dw PFA_DOVARIABLE
PFA_GICR:
    .dw 91
; ( -- 90 )
VE_GIFR:
    .db 4, "GIFR",0
    .dw VE_HEAD
    .set VE_HEAD = VE_GIFR
XT_GIFR:
    .dw PFA_DOVARIABLE
PFA_GIFR:
    .dw 90
; ( -- 89 )
VE_TIMSK:
    .db 5, "TIMSK"
    .dw VE_HEAD
    .set VE_HEAD = VE_TIMSK
XT_TIMSK:
    .dw PFA_DOVARIABLE
PFA_TIMSK:
    .dw 89
; ( -- 88 )
VE_TIFR:
    .db 4, "TIFR",0
    .dw VE_HEAD
    .set VE_HEAD = VE_TIFR
XT_TIFR:
    .dw PFA_DOVARIABLE
PFA_TIFR:
    .dw 88
; ( -- 87 )
VE_SPMCR:
    .db 5, "SPMCR"
    .dw VE_HEAD
    .set VE_HEAD = VE_SPMCR
XT_SPMCR:
    .dw PFA_DOVARIABLE
PFA_SPMCR:
    .dw 87
; ( -- 86 )
VE_TWCR:
    .db 4, "TWCR",0
    .dw VE_HEAD
    .set VE_HEAD = VE_TWCR
XT_TWCR:
    .dw PFA_DOVARIABLE
PFA_TWCR:
    .dw 86
; ( -- 85 )
VE_MCUCR:
    .db 5, "MCUCR"
    .dw VE_HEAD
    .set VE_HEAD = VE_MCUCR
XT_MCUCR:
    .dw PFA_DOVARIABLE
PFA_MCUCR:
    .dw 85
; ( -- 84 )
VE_MCUSR:
    .db 5, "MCUSR"
    .dw VE_HEAD
    .set VE_HEAD = VE_MCUSR
XT_MCUSR:
    .dw PFA_DOVARIABLE
PFA_MCUSR:
    .dw 84
; ( -- 270 )
VE_MCUCSR:
    .db 6, "MCUCSR",0
    .dw VE_HEAD
    .set VE_HEAD = VE_MCUCSR
XT_MCUCSR:
    .dw PFA_DOVARIABLE
PFA_MCUCSR:
    .dw 270
; ( -- 83 )
VE_TCCR0:
    .db 5, "TCCR0"
    .dw VE_HEAD
    .set VE_HEAD = VE_TCCR0
XT_TCCR0:
    .dw PFA_DOVARIABLE
PFA_TCCR0:
    .dw 83
; ( -- 82 )
VE_TCNT0:
    .db 5, "TCNT0"
    .dw VE_HEAD
    .set VE_HEAD = VE_TCNT0
XT_TCNT0:
    .dw PFA_DOVARIABLE
PFA_TCNT0:
    .dw 82
; ( -- 81 )
VE_OSCCAL:
    .db 6, "OSCCAL",0
    .dw VE_HEAD
    .set VE_HEAD = VE_OSCCAL
XT_OSCCAL:
    .dw PFA_DOVARIABLE
PFA_OSCCAL:
    .dw 81
; ( -- 80 )
VE_SFIOR:
    .db 5, "SFIOR"
    .dw VE_HEAD
    .set VE_HEAD = VE_SFIOR
XT_SFIOR:
    .dw PFA_DOVARIABLE
PFA_SFIOR:
    .dw 80
; ( -- 79 )
VE_TCCR1A:
    .db 6, "TCCR1A",0
    .dw VE_HEAD
    .set VE_HEAD = VE_TCCR1A
XT_TCCR1A:
    .dw PFA_DOVARIABLE
PFA_TCCR1A:
    .dw 79
; ( -- 78 )
VE_TCCR1B:
    .db 6, "TCCR1B",0
    .dw VE_HEAD
    .set VE_HEAD = VE_TCCR1B
XT_TCCR1B:
    .dw PFA_DOVARIABLE
PFA_TCCR1B:
    .dw 78
; ( -- 77 )
VE_TCNT1H:
    .db 6, "TCNT1H",0
    .dw VE_HEAD
    .set VE_HEAD = VE_TCNT1H
XT_TCNT1H:
    .dw PFA_DOVARIABLE
PFA_TCNT1H:
    .dw 77
; ( -- 76 )
VE_TCNT1L:
    .db 6, "TCNT1L",0
    .dw VE_HEAD
    .set VE_HEAD = VE_TCNT1L
XT_TCNT1L:
    .dw PFA_DOVARIABLE
PFA_TCNT1L:
    .dw 76
; ( -- 75 )
VE_OCR1AH:
    .db 6, "OCR1AH",0
    .dw VE_HEAD
    .set VE_HEAD = VE_OCR1AH
XT_OCR1AH:
    .dw PFA_DOVARIABLE
PFA_OCR1AH:
    .dw 75
; ( -- 74 )
VE_OCR1AL:
    .db 6, "OCR1AL",0
    .dw VE_HEAD
    .set VE_HEAD = VE_OCR1AL
XT_OCR1AL:
    .dw PFA_DOVARIABLE
PFA_OCR1AL:
    .dw 74
; ( -- 73 )
VE_OCR1BH:
    .db 6, "OCR1BH",0
    .dw VE_HEAD
    .set VE_HEAD = VE_OCR1BH
XT_OCR1BH:
    .dw PFA_DOVARIABLE
PFA_OCR1BH:
    .dw 73
; ( -- 72 )
VE_OCR1BL:
    .db 6, "OCR1BL",0
    .dw VE_HEAD
    .set VE_HEAD = VE_OCR1BL
XT_OCR1BL:
    .dw PFA_DOVARIABLE
PFA_OCR1BL:
    .dw 72
; ( -- 71 )
VE_ICR1H:
    .db 5, "ICR1H"
    .dw VE_HEAD
    .set VE_HEAD = VE_ICR1H
XT_ICR1H:
    .dw PFA_DOVARIABLE
PFA_ICR1H:
    .dw 71
; ( -- 70 )
VE_ICR1L:
    .db 5, "ICR1L"
    .dw VE_HEAD
    .set VE_HEAD = VE_ICR1L
XT_ICR1L:
    .dw PFA_DOVARIABLE
PFA_ICR1L:
    .dw 70
; ( -- 69 )
VE_TCCR2:
    .db 5, "TCCR2"
    .dw VE_HEAD
    .set VE_HEAD = VE_TCCR2
XT_TCCR2:
    .dw PFA_DOVARIABLE
PFA_TCCR2:
    .dw 69
; ( -- 68 )
VE_TCNT2:
    .db 5, "TCNT2"
    .dw VE_HEAD
    .set VE_HEAD = VE_TCNT2
XT_TCNT2:
    .dw PFA_DOVARIABLE
PFA_TCNT2:
    .dw 68
; ( -- 67 )
VE_OCR2:
    .db 4, "OCR2",0
    .dw VE_HEAD
    .set VE_HEAD = VE_OCR2
XT_OCR2:
    .dw PFA_DOVARIABLE
PFA_OCR2:
    .dw 67
; ( -- 66 )
VE_ASSR:
    .db 4, "ASSR",0
    .dw VE_HEAD
    .set VE_HEAD = VE_ASSR
XT_ASSR:
    .dw PFA_DOVARIABLE
PFA_ASSR:
    .dw 66
; ( -- 65 )
VE_WDTCR:
    .db 5, "WDTCR"
    .dw VE_HEAD
    .set VE_HEAD = VE_WDTCR
XT_WDTCR:
    .dw PFA_DOVARIABLE
PFA_WDTCR:
    .dw 65
; ( -- 64 )
VE_UBRRH:
    .db 5, "UBRRH"
    .dw VE_HEAD
    .set VE_HEAD = VE_UBRRH
XT_UBRRH:
    .dw PFA_DOVARIABLE
PFA_UBRRH:
    .dw 64
; ( -- 63 )
VE_EEARH:
    .db 5, "EEARH"
    .dw VE_HEAD
    .set VE_HEAD = VE_EEARH
XT_EEARH:
    .dw PFA_DOVARIABLE
PFA_EEARH:
    .dw 63
; ( -- 62 )
VE_EEARL:
    .db 5, "EEARL"
    .dw VE_HEAD
    .set VE_HEAD = VE_EEARL
XT_EEARL:
    .dw PFA_DOVARIABLE
PFA_EEARL:
    .dw 62
; ( -- 61 )
VE_EEDR:
    .db 4, "EEDR",0
    .dw VE_HEAD
    .set VE_HEAD = VE_EEDR
XT_EEDR:
    .dw PFA_DOVARIABLE
PFA_EEDR:
    .dw 61
; ( -- 60 )
VE_EECR:
    .db 4, "EECR",0
    .dw VE_HEAD
    .set VE_HEAD = VE_EECR
XT_EECR:
    .dw PFA_DOVARIABLE
PFA_EECR:
    .dw 60
; ( -- 59 )
VE_PORTA:
    .db 5, "PORTA"
    .dw VE_HEAD
    .set VE_HEAD = VE_PORTA
XT_PORTA:
    .dw PFA_DOVARIABLE
PFA_PORTA:
    .dw 59
; ( -- 58 )
VE_DDRA:
    .db 4, "DDRA",0
    .dw VE_HEAD
    .set VE_HEAD = VE_DDRA
XT_DDRA:
    .dw PFA_DOVARIABLE
PFA_DDRA:
    .dw 58
; ( -- 57 )
VE_PINA:
    .db 4, "PINA",0
    .dw VE_HEAD
    .set VE_HEAD = VE_PINA
XT_PINA:
    .dw PFA_DOVARIABLE
PFA_PINA:
    .dw 57
; ( -- 56 )
VE_PORTB:
    .db 5, "PORTB"
    .dw VE_HEAD
    .set VE_HEAD = VE_PORTB
XT_PORTB:
    .dw PFA_DOVARIABLE
PFA_PORTB:
    .dw 56
; ( -- 55 )
VE_DDRB:
    .db 4, "DDRB",0
    .dw VE_HEAD
    .set VE_HEAD = VE_DDRB
XT_DDRB:
    .dw PFA_DOVARIABLE
PFA_DDRB:
    .dw 55
; ( -- 54 )
VE_PINB:
    .db 4, "PINB",0
    .dw VE_HEAD
    .set VE_HEAD = VE_PINB
XT_PINB:
    .dw PFA_DOVARIABLE
PFA_PINB:
    .dw 54
; ( -- 53 )
VE_PORTC:
    .db 5, "PORTC"
    .dw VE_HEAD
    .set VE_HEAD = VE_PORTC
XT_PORTC:
    .dw PFA_DOVARIABLE
PFA_PORTC:
    .dw 53
; ( -- 52 )
VE_DDRC:
    .db 4, "DDRC",0
    .dw VE_HEAD
    .set VE_HEAD = VE_DDRC
XT_DDRC:
    .dw PFA_DOVARIABLE
PFA_DDRC:
    .dw 52
; ( -- 51 )
VE_PINC:
    .db 4, "PINC",0
    .dw VE_HEAD
    .set VE_HEAD = VE_PINC
XT_PINC:
    .dw PFA_DOVARIABLE
PFA_PINC:
    .dw 51
; ( -- 50 )
VE_PORTD:
    .db 5, "PORTD"
    .dw VE_HEAD
    .set VE_HEAD = VE_PORTD
XT_PORTD:
    .dw PFA_DOVARIABLE
PFA_PORTD:
    .dw 50
; ( -- 49 )
VE_DDRD:
    .db 4, "DDRD",0
    .dw VE_HEAD
    .set VE_HEAD = VE_DDRD
XT_DDRD:
    .dw PFA_DOVARIABLE
PFA_DDRD:
    .dw 49
; ( -- 48 )
VE_PIND:
    .db 4, "PIND",0
    .dw VE_HEAD
    .set VE_HEAD = VE_PIND
XT_PIND:
    .dw PFA_DOVARIABLE
PFA_PIND:
    .dw 48
; ( -- 47 )
VE_SPDR:
    .db 4, "SPDR",0
    .dw VE_HEAD
    .set VE_HEAD = VE_SPDR
XT_SPDR:
    .dw PFA_DOVARIABLE
PFA_SPDR:
    .dw 47
; ( -- 46 )
VE_SPSR:
    .db 4, "SPSR",0
    .dw VE_HEAD
    .set VE_HEAD = VE_SPSR
XT_SPSR:
    .dw PFA_DOVARIABLE
PFA_SPSR:
    .dw 46
; ( -- 45 )
VE_SPCR:
    .db 4, "SPCR",0
    .dw VE_HEAD
    .set VE_HEAD = VE_SPCR
XT_SPCR:
    .dw PFA_DOVARIABLE
PFA_SPCR:
    .dw 45
; ( -- 44 )
VE_UDR:
    .db 3, "UDR"
    .dw VE_HEAD
    .set VE_HEAD = VE_UDR
XT_UDR:
    .dw PFA_DOVARIABLE
PFA_UDR:
    .dw 44
; ( -- 43 )
VE_UCSRA:
    .db 5, "UCSRA"
    .dw VE_HEAD
    .set VE_HEAD = VE_UCSRA
XT_UCSRA:
    .dw PFA_DOVARIABLE
PFA_UCSRA:
    .dw 43
; ( -- 42 )
VE_UCSRB:
    .db 5, "UCSRB"
    .dw VE_HEAD
    .set VE_HEAD = VE_UCSRB
XT_UCSRB:
    .dw PFA_DOVARIABLE
PFA_UCSRB:
    .dw 42
; ( -- 64 )
VE_UCSRC:
    .db 5, "UCSRC"
    .dw VE_HEAD
    .set VE_HEAD = VE_UCSRC
XT_UCSRC:
    .dw PFA_DOVARIABLE
PFA_UCSRC:
    .dw 64
; ( -- 41 )
VE_UBRRL:
    .db 5, "UBRRL"
    .dw VE_HEAD
    .set VE_HEAD = VE_UBRRL
XT_UBRRL:
    .dw PFA_DOVARIABLE
PFA_UBRRL:
    .dw 41
; ( -- 40 )
VE_ACSR:
    .db 4, "ACSR",0
    .dw VE_HEAD
    .set VE_HEAD = VE_ACSR
XT_ACSR:
    .dw PFA_DOVARIABLE
PFA_ACSR:
    .dw 40
; ( -- 39 )
VE_ADMUX:
    .db 5, "ADMUX"
    .dw VE_HEAD
    .set VE_HEAD = VE_ADMUX
XT_ADMUX:
    .dw PFA_DOVARIABLE
PFA_ADMUX:
    .dw 39
; ( -- 38 )
VE_ADCSR:
    .db 5, "ADCSR"
    .dw VE_HEAD
    .set VE_HEAD = VE_ADCSR
XT_ADCSR:
    .dw PFA_DOVARIABLE
PFA_ADCSR:
    .dw 38
; ( -- 37 )
VE_ADCH:
    .db 4, "ADCH",0
    .dw VE_HEAD
    .set VE_HEAD = VE_ADCH
XT_ADCH:
    .dw PFA_DOVARIABLE
PFA_ADCH:
    .dw 37
; ( -- 36 )
VE_ADCL:
    .db 4, "ADCL",0
    .dw VE_HEAD
    .set VE_HEAD = VE_ADCL
XT_ADCL:
    .dw PFA_DOVARIABLE
PFA_ADCL:
    .dw 36
; ( -- 35 )
VE_TWDR:
    .db 4, "TWDR",0
    .dw VE_HEAD
    .set VE_HEAD = VE_TWDR
XT_TWDR:
    .dw PFA_DOVARIABLE
PFA_TWDR:
    .dw 35
; ( -- 34 )
VE_TWAR:
    .db 4, "TWAR",0
    .dw VE_HEAD
    .set VE_HEAD = VE_TWAR
XT_TWAR:
    .dw PFA_DOVARIABLE
PFA_TWAR:
    .dw 34
; ( -- 33 )
VE_TWSR:
    .db 4, "TWSR",0
    .dw VE_HEAD
    .set VE_HEAD = VE_TWSR
XT_TWSR:
    .dw PFA_DOVARIABLE
PFA_TWSR:
    .dw 33
; ( -- 32 )
VE_TWBR:
    .db 4, "TWBR",0
    .dw VE_HEAD
    .set VE_HEAD = VE_TWBR
XT_TWBR:
    .dw PFA_DOVARIABLE
PFA_TWBR:
    .dw 32
