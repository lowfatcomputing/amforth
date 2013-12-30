; Partname:  ATmega32M1
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
; CAN General Interrupt Register Flags
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
; Enable MOb Register 2
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
; Enable MOb Register 1(empty)
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
; Enable Interrupt MOb Register 2
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
; Enable Interrupt MOb Register 1 (empty)
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
; CAN Status Interrupt MOb Register 2
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
; CAN Status Interrupt MOb Register 1 (empty)
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
; CAN Bit Timing Register 1
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
; CAN Bit Timing Register 2
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
; CAN Bit Timing Register 3
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
	.word 148
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
	.word 149
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
	.word 150
; ( -- addr ) System Constant
; R( -- )
; Analog Comparator 3 Control Register
VE_AC3CON:
	.word 0xff06
	.ascii "AC3CON"
	.word VE_HEAD
	.set VE_HEAD=VE_AC3CON
XT_AC3CON:
	.word PFA_DOVARIABLE
PFA_AC3CON:
	.word 151
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
	.word 146
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
	.word 145
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
	.word 144

.endif
.if WANT_CPU == 1
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
	.word 117
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
	.word 118
; ( -- addr ) System Constant
; R( -- )
; 
VE_AMP2CSR:
	.word 0xff07
	.db "AMP2CSR",0
	.word VE_HEAD
	.set VE_HEAD=VE_AMP2CSR
XT_AMP2CSR:
	.word PFA_DOVARIABLE
PFA_AMP2CSR:
	.word 119

.endif
.if WANT_LINUART == 1
; ( -- addr ) System Constant
; R( -- )
; LIN Control Register
VE_LINCR:
	.word 0xff05
	.db "LINCR",0
	.word VE_HEAD
	.set VE_HEAD=VE_LINCR
XT_LINCR:
	.word PFA_DOVARIABLE
PFA_LINCR:
	.word 200
; ( -- addr ) System Constant
; R( -- )
; LIN Status and Interrupt Register
VE_LINSIR:
	.word 0xff06
	.ascii "LINSIR"
	.word VE_HEAD
	.set VE_HEAD=VE_LINSIR
XT_LINSIR:
	.word PFA_DOVARIABLE
PFA_LINSIR:
	.word 201
; ( -- addr ) System Constant
; R( -- )
; LIN Enable Interrupt Register
VE_LINENIR:
	.word 0xff07
	.db "LINENIR",0
	.word VE_HEAD
	.set VE_HEAD=VE_LINENIR
XT_LINENIR:
	.word PFA_DOVARIABLE
PFA_LINENIR:
	.word 202
; ( -- addr ) System Constant
; R( -- )
; LIN Error Register
VE_LINERR:
	.word 0xff06
	.ascii "LINERR"
	.word VE_HEAD
	.set VE_HEAD=VE_LINERR
XT_LINERR:
	.word PFA_DOVARIABLE
PFA_LINERR:
	.word 203
; ( -- addr ) System Constant
; R( -- )
; LIN Bit Timing Register
VE_LINBTR:
	.word 0xff06
	.ascii "LINBTR"
	.word VE_HEAD
	.set VE_HEAD=VE_LINBTR
XT_LINBTR:
	.word PFA_DOVARIABLE
PFA_LINBTR:
	.word 204
; ( -- addr ) System Constant
; R( -- )
; LIN Baud Rate Low Register
VE_LINBRRL:
	.word 0xff07
	.db "LINBRRL",0
	.word VE_HEAD
	.set VE_HEAD=VE_LINBRRL
XT_LINBRRL:
	.word PFA_DOVARIABLE
PFA_LINBRRL:
	.word 205
; ( -- addr ) System Constant
; R( -- )
; LIN Baud Rate High Register
VE_LINBRRH:
	.word 0xff07
	.db "LINBRRH",0
	.word VE_HEAD
	.set VE_HEAD=VE_LINBRRH
XT_LINBRRH:
	.word PFA_DOVARIABLE
PFA_LINBRRH:
	.word 206
; ( -- addr ) System Constant
; R( -- )
; LIN Data Length Register
VE_LINDLR:
	.word 0xff06
	.ascii "LINDLR"
	.word VE_HEAD
	.set VE_HEAD=VE_LINDLR
XT_LINDLR:
	.word PFA_DOVARIABLE
PFA_LINDLR:
	.word 207
; ( -- addr ) System Constant
; R( -- )
; LIN Identifier Register
VE_LINIDR:
	.word 0xff06
	.ascii "LINIDR"
	.word VE_HEAD
	.set VE_HEAD=VE_LINIDR
XT_LINIDR:
	.word PFA_DOVARIABLE
PFA_LINIDR:
	.word 208
; ( -- addr ) System Constant
; R( -- )
; LIN Data Buffer Selection Register
VE_LINSEL:
	.word 0xff06
	.ascii "LINSEL"
	.word VE_HEAD
	.set VE_HEAD=VE_LINSEL
XT_LINSEL:
	.word PFA_DOVARIABLE
PFA_LINSEL:
	.word 209
; ( -- addr ) System Constant
; R( -- )
; LIN Data Register
VE_LINDAT:
	.word 0xff06
	.ascii "LINDAT"
	.word VE_HEAD
	.set VE_HEAD=VE_LINDAT
XT_LINDAT:
	.word PFA_DOVARIABLE
PFA_LINDAT:
	.word 210

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
; Pin Change Mask Register 3
VE_PCMSK3:
	.word 0xff06
	.ascii "PCMSK3"
	.word VE_HEAD
	.set VE_HEAD=VE_PCMSK3
XT_PCMSK3:
	.word PFA_DOVARIABLE
PFA_PCMSK3:
	.word 109
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
	.word 108
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
	.word 107
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
	.word 106
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

.endif
.if WANT_EEPROM == 1
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
.if WANT_PSC == 1
; ( -- addr ) System Constant
; R( -- )
; PSC Interrupt Flag Register
VE_PIFR:
	.word 0xff04
	.ascii "PIFR"
	.word VE_HEAD
	.set VE_HEAD=VE_PIFR
XT_PIFR:
	.word PFA_DOVARIABLE
PFA_PIFR:
	.word 188
; ( -- addr ) System Constant
; R( -- )
; PSC Interrupt Mask Register
VE_PIM:
	.word 0xff03
	.db "PIM",0
	.word VE_HEAD
	.set VE_HEAD=VE_PIM
XT_PIM:
	.word PFA_DOVARIABLE
PFA_PIM:
	.word 187
; ( -- addr ) System Constant
; R( -- )
; PSC Module 2 Input Control Register
VE_PMIC2:
	.word 0xff05
	.db "PMIC2",0
	.word VE_HEAD
	.set VE_HEAD=VE_PMIC2
XT_PMIC2:
	.word PFA_DOVARIABLE
PFA_PMIC2:
	.word 186
; ( -- addr ) System Constant
; R( -- )
; PSC Module 1 Input Control Register
VE_PMIC1:
	.word 0xff05
	.db "PMIC1",0
	.word VE_HEAD
	.set VE_HEAD=VE_PMIC1
XT_PMIC1:
	.word PFA_DOVARIABLE
PFA_PMIC1:
	.word 185
; ( -- addr ) System Constant
; R( -- )
; PSC Module 0 Input Control Register
VE_PMIC0:
	.word 0xff05
	.db "PMIC0",0
	.word VE_HEAD
	.set VE_HEAD=VE_PMIC0
XT_PMIC0:
	.word PFA_DOVARIABLE
PFA_PMIC0:
	.word 184
; ( -- addr ) System Constant
; R( -- )
; PSC Control Register
VE_PCTL:
	.word 0xff04
	.ascii "PCTL"
	.word VE_HEAD
	.set VE_HEAD=VE_PCTL
XT_PCTL:
	.word PFA_DOVARIABLE
PFA_PCTL:
	.word 183
; ( -- addr ) System Constant
; R( -- )
; PSC Output Configuration
VE_POC:
	.word 0xff03
	.db "POC",0
	.word VE_HEAD
	.set VE_HEAD=VE_POC
XT_POC:
	.word PFA_DOVARIABLE
PFA_POC:
	.word 182
; ( -- addr ) System Constant
; R( -- )
; PSC Configuration Register
VE_PCNF:
	.word 0xff04
	.ascii "PCNF"
	.word VE_HEAD
	.set VE_HEAD=VE_PCNF
XT_PCNF:
	.word PFA_DOVARIABLE
PFA_PCNF:
	.word 181
; ( -- addr ) System Constant
; R( -- )
; PSC Synchro Configuration
VE_PSYNC:
	.word 0xff05
	.db "PSYNC",0
	.word VE_HEAD
	.set VE_HEAD=VE_PSYNC
XT_PSYNC:
	.word PFA_DOVARIABLE
PFA_PSYNC:
	.word 180
; ( -- addr ) System Constant
; R( -- )
; PSC Output Compare RB Register 
VE_POCR_RB:
	.word 0xff07
	.db "POCR_RB",0
	.word VE_HEAD
	.set VE_HEAD=VE_POCR_RB
XT_POCR_RB:
	.word PFA_DOVARIABLE
PFA_POCR_RB:
	.word 178
; ( -- addr ) System Constant
; R( -- )
; PSC Module 2 Output Compare SB Register 
VE_POCR2SB:
	.word 0xff07
	.db "POCR2SB",0
	.word VE_HEAD
	.set VE_HEAD=VE_POCR2SB
XT_POCR2SB:
	.word PFA_DOVARIABLE
PFA_POCR2SB:
	.word 176
; ( -- addr ) System Constant
; R( -- )
; PSC Module 2 Output Compare RA Register 
VE_POCR2RA:
	.word 0xff07
	.db "POCR2RA",0
	.word VE_HEAD
	.set VE_HEAD=VE_POCR2RA
XT_POCR2RA:
	.word PFA_DOVARIABLE
PFA_POCR2RA:
	.word 174
; ( -- addr ) System Constant
; R( -- )
; PSC Module 2 Output Compare SA Register 
VE_POCR2SA:
	.word 0xff07
	.db "POCR2SA",0
	.word VE_HEAD
	.set VE_HEAD=VE_POCR2SA
XT_POCR2SA:
	.word PFA_DOVARIABLE
PFA_POCR2SA:
	.word 172
; ( -- addr ) System Constant
; R( -- )
; PSC Module 1 Output Compare SB Register 
VE_POCR1SB:
	.word 0xff07
	.db "POCR1SB",0
	.word VE_HEAD
	.set VE_HEAD=VE_POCR1SB
XT_POCR1SB:
	.word PFA_DOVARIABLE
PFA_POCR1SB:
	.word 170
; ( -- addr ) System Constant
; R( -- )
; PSC Module 1 Output Compare RA Register 
VE_POCR1RA:
	.word 0xff07
	.db "POCR1RA",0
	.word VE_HEAD
	.set VE_HEAD=VE_POCR1RA
XT_POCR1RA:
	.word PFA_DOVARIABLE
PFA_POCR1RA:
	.word 168
; ( -- addr ) System Constant
; R( -- )
; PSC Output Compare SA Register 
VE_POCR1SA:
	.word 0xff07
	.db "POCR1SA",0
	.word VE_HEAD
	.set VE_HEAD=VE_POCR1SA
XT_POCR1SA:
	.word PFA_DOVARIABLE
PFA_POCR1SA:
	.word 166
; ( -- addr ) System Constant
; R( -- )
; PSC Output Compare SB Register 
VE_POCR0SB:
	.word 0xff07
	.db "POCR0SB",0
	.word VE_HEAD
	.set VE_HEAD=VE_POCR0SB
XT_POCR0SB:
	.word PFA_DOVARIABLE
PFA_POCR0SB:
	.word 164
; ( -- addr ) System Constant
; R( -- )
; PSC Module 0 Output Compare RA Register 
VE_POCR0RA:
	.word 0xff07
	.db "POCR0RA",0
	.word VE_HEAD
	.set VE_HEAD=VE_POCR0RA
XT_POCR0RA:
	.word PFA_DOVARIABLE
PFA_POCR0RA:
	.word 162
; ( -- addr ) System Constant
; R( -- )
; PSC Module 0 Output Compare SA Register 
VE_POCR0SA:
	.word 0xff07
	.db "POCR0SA",0
	.word VE_HEAD
	.set VE_HEAD=VE_POCR0SA
XT_POCR0SA:
	.word PFA_DOVARIABLE
PFA_POCR0SA:
	.word 160

.endif
