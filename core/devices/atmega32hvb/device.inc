; Partname:  ATmega32HVB
; generated automatically, no not edit

.if WANT_AD_CONVERTER == 1
; ( -- addr ) System Constant
; R( -- )
; The VADC multiplexer Selection Register
VE_VADMUX:
	.dw $ff06
	.db "VADMUX"
	.dw VE_HEAD
	.set VE_HEAD=VE_VADMUX
XT_VADMUX:
	.dw PFA_DOVARIABLE
PFA_VADMUX:
	.dw 124
; ( -- addr ) System Constant
; R( -- )
; VADC Data Register  Bytes
VE_VADC:
	.dw $ff04
	.db "VADC"
	.dw VE_HEAD
	.set VE_HEAD=VE_VADC
XT_VADC:
	.dw PFA_DOVARIABLE
PFA_VADC:
	.dw 120
; ( -- addr ) System Constant
; R( -- )
; The VADC Control and Status register
VE_VADCSR:
	.dw $ff06
	.db "VADCSR"
	.dw VE_HEAD
	.set VE_HEAD=VE_VADCSR
XT_VADCSR:
	.dw PFA_DOVARIABLE
PFA_VADCSR:
	.dw 122

.endif
.if WANT_WATCHDOG == 1
; ( -- addr ) System Constant
; R( -- )
; Watchdog Timer Control Register
VE_WDTCSR:
	.dw $ff06
	.db "WDTCSR"
	.dw VE_HEAD
	.set VE_HEAD=VE_WDTCSR
XT_WDTCSR:
	.dw PFA_DOVARIABLE
PFA_WDTCSR:
	.dw 96

.endif
.if WANT_FET == 1
; ( -- addr ) System Constant
; R( -- )
; FET Control and Status Register
VE_FCSR:
	.dw $ff04
	.db "FCSR"
	.dw VE_HEAD
	.set VE_HEAD=VE_FCSR
XT_FCSR:
	.dw PFA_DOVARIABLE
PFA_FCSR:
	.dw 240

.endif
.if WANT_SPI == 1
; ( -- addr ) System Constant
; R( -- )
; SPI Control Register
VE_SPCR:
	.dw $ff04
	.db "SPCR"
	.dw VE_HEAD
	.set VE_HEAD=VE_SPCR
XT_SPCR:
	.dw PFA_DOVARIABLE
PFA_SPCR:
	.dw 76
; ( -- addr ) System Constant
; R( -- )
; SPI Status Register
VE_SPSR:
	.dw $ff04
	.db "SPSR"
	.dw VE_HEAD
	.set VE_HEAD=VE_SPSR
XT_SPSR:
	.dw PFA_DOVARIABLE
PFA_SPSR:
	.dw 77
; ( -- addr ) System Constant
; R( -- )
; SPI Data Register
VE_SPDR:
	.dw $ff04
	.db "SPDR"
	.dw VE_HEAD
	.set VE_HEAD=VE_SPDR
XT_SPDR:
	.dw PFA_DOVARIABLE
PFA_SPDR:
	.dw 78

.endif
.if WANT_EEPROM == 1
; ( -- addr ) System Constant
; R( -- )
; EEPROM Read/Write Access
VE_EEAR:
	.dw $ff04
	.db "EEAR"
	.dw VE_HEAD
	.set VE_HEAD=VE_EEAR
XT_EEAR:
	.dw PFA_DOVARIABLE
PFA_EEAR:
	.dw 65
; ( -- addr ) System Constant
; R( -- )
; EEPROM Data Register
VE_EEDR:
	.dw $ff04
	.db "EEDR"
	.dw VE_HEAD
	.set VE_HEAD=VE_EEDR
XT_EEDR:
	.dw PFA_DOVARIABLE
PFA_EEDR:
	.dw 64
; ( -- addr ) System Constant
; R( -- )
; EEPROM Control Register
VE_EECR:
	.dw $ff04
	.db "EECR"
	.dw VE_HEAD
	.set VE_HEAD=VE_EECR
XT_EECR:
	.dw PFA_DOVARIABLE
PFA_EECR:
	.dw 63

.endif
.if WANT_COULOMB_COUNTER == 1
; ( -- addr ) System Constant
; R( -- )
; CC-ADC Control and Status Register A
VE_CADCSRA:
	.dw $ff07
	.db "CADCSRA",0
	.dw VE_HEAD
	.set VE_HEAD=VE_CADCSRA
XT_CADCSRA:
	.dw PFA_DOVARIABLE
PFA_CADCSRA:
	.dw 230
; ( -- addr ) System Constant
; R( -- )
; CC-ADC Control and Status Register B
VE_CADCSRB:
	.dw $ff07
	.db "CADCSRB",0
	.dw VE_HEAD
	.set VE_HEAD=VE_CADCSRB
XT_CADCSRB:
	.dw PFA_DOVARIABLE
PFA_CADCSRB:
	.dw 231
; ( -- addr ) System Constant
; R( -- )
; CC-ADC Control and Status Register C
VE_CADCSRC:
	.dw $ff07
	.db "CADCSRC",0
	.dw VE_HEAD
	.set VE_HEAD=VE_CADCSRC
XT_CADCSRC:
	.dw PFA_DOVARIABLE
PFA_CADCSRC:
	.dw 232
; ( -- addr ) System Constant
; R( -- )
; CC-ADC Instantaneous Current
VE_CADIC:
	.dw $ff05
	.db "CADIC",0
	.dw VE_HEAD
	.set VE_HEAD=VE_CADIC
XT_CADIC:
	.dw PFA_DOVARIABLE
PFA_CADIC:
	.dw 228
; ( -- addr ) System Constant
; R( -- )
; ADC Accumulate Current
VE_CADAC3:
	.dw $ff06
	.db "CADAC3"
	.dw VE_HEAD
	.set VE_HEAD=VE_CADAC3
XT_CADAC3:
	.dw PFA_DOVARIABLE
PFA_CADAC3:
	.dw 227
; ( -- addr ) System Constant
; R( -- )
; ADC Accumulate Current
VE_CADAC2:
	.dw $ff06
	.db "CADAC2"
	.dw VE_HEAD
	.set VE_HEAD=VE_CADAC2
XT_CADAC2:
	.dw PFA_DOVARIABLE
PFA_CADAC2:
	.dw 226
; ( -- addr ) System Constant
; R( -- )
; ADC Accumulate Current
VE_CADAC1:
	.dw $ff06
	.db "CADAC1"
	.dw VE_HEAD
	.set VE_HEAD=VE_CADAC1
XT_CADAC1:
	.dw PFA_DOVARIABLE
PFA_CADAC1:
	.dw 225
; ( -- addr ) System Constant
; R( -- )
; ADC Accumulate Current
VE_CADAC0:
	.dw $ff06
	.db "CADAC0"
	.dw VE_HEAD
	.set VE_HEAD=VE_CADAC0
XT_CADAC0:
	.dw PFA_DOVARIABLE
PFA_CADAC0:
	.dw 224
; ( -- addr ) System Constant
; R( -- )
; CC-ADC Regular Charge Current
VE_CADRCC:
	.dw $ff06
	.db "CADRCC"
	.dw VE_HEAD
	.set VE_HEAD=VE_CADRCC
XT_CADRCC:
	.dw PFA_DOVARIABLE
PFA_CADRCC:
	.dw 233
; ( -- addr ) System Constant
; R( -- )
; CC-ADC Regular Discharge Current
VE_CADRDC:
	.dw $ff06
	.db "CADRDC"
	.dw VE_HEAD
	.set VE_HEAD=VE_CADRDC
XT_CADRDC:
	.dw PFA_DOVARIABLE
PFA_CADRDC:
	.dw 234

.endif
.if WANT_TWI == 1
; ( -- addr ) System Constant
; R( -- )
; TWI Bus Control and Status Register
VE_TWBCSR:
	.dw $ff06
	.db "TWBCSR"
	.dw VE_HEAD
	.set VE_HEAD=VE_TWBCSR
XT_TWBCSR:
	.dw PFA_DOVARIABLE
PFA_TWBCSR:
	.dw 190
; ( -- addr ) System Constant
; R( -- )
; TWI (Slave) Address Mask Register
VE_TWAMR:
	.dw $ff05
	.db "TWAMR",0
	.dw VE_HEAD
	.set VE_HEAD=VE_TWAMR
XT_TWAMR:
	.dw PFA_DOVARIABLE
PFA_TWAMR:
	.dw 189
; ( -- addr ) System Constant
; R( -- )
; TWI Bit Rate register
VE_TWBR:
	.dw $ff04
	.db "TWBR"
	.dw VE_HEAD
	.set VE_HEAD=VE_TWBR
XT_TWBR:
	.dw PFA_DOVARIABLE
PFA_TWBR:
	.dw 184
; ( -- addr ) System Constant
; R( -- )
; TWI Control Register
VE_TWCR:
	.dw $ff04
	.db "TWCR"
	.dw VE_HEAD
	.set VE_HEAD=VE_TWCR
XT_TWCR:
	.dw PFA_DOVARIABLE
PFA_TWCR:
	.dw 188
; ( -- addr ) System Constant
; R( -- )
; TWI Status Register
VE_TWSR:
	.dw $ff04
	.db "TWSR"
	.dw VE_HEAD
	.set VE_HEAD=VE_TWSR
XT_TWSR:
	.dw PFA_DOVARIABLE
PFA_TWSR:
	.dw 185
; ( -- addr ) System Constant
; R( -- )
; TWI Data register
VE_TWDR:
	.dw $ff04
	.db "TWDR"
	.dw VE_HEAD
	.set VE_HEAD=VE_TWDR
XT_TWDR:
	.dw PFA_DOVARIABLE
PFA_TWDR:
	.dw 187
; ( -- addr ) System Constant
; R( -- )
; TWI (Slave) Address register
VE_TWAR:
	.dw $ff04
	.db "TWAR"
	.dw VE_HEAD
	.set VE_HEAD=VE_TWAR
XT_TWAR:
	.dw PFA_DOVARIABLE
PFA_TWAR:
	.dw 186

.endif
.if WANT_EXTERNAL_INTERRUPT == 1
; ( -- addr ) System Constant
; R( -- )
; External Interrupt Control Register
VE_EICRA:
	.dw $ff05
	.db "EICRA",0
	.dw VE_HEAD
	.set VE_HEAD=VE_EICRA
XT_EICRA:
	.dw PFA_DOVARIABLE
PFA_EICRA:
	.dw 105
; ( -- addr ) System Constant
; R( -- )
; External Interrupt Mask Register
VE_EIMSK:
	.dw $ff05
	.db "EIMSK",0
	.dw VE_HEAD
	.set VE_HEAD=VE_EIMSK
XT_EIMSK:
	.dw PFA_DOVARIABLE
PFA_EIMSK:
	.dw 61
; ( -- addr ) System Constant
; R( -- )
; External Interrupt Flag Register
VE_EIFR:
	.dw $ff04
	.db "EIFR"
	.dw VE_HEAD
	.set VE_HEAD=VE_EIFR
XT_EIFR:
	.dw PFA_DOVARIABLE
PFA_EIFR:
	.dw 60
; ( -- addr ) System Constant
; R( -- )
; Pin Change Interrupt Control Register
VE_PCICR:
	.dw $ff05
	.db "PCICR",0
	.dw VE_HEAD
	.set VE_HEAD=VE_PCICR
XT_PCICR:
	.dw PFA_DOVARIABLE
PFA_PCICR:
	.dw 104
; ( -- addr ) System Constant
; R( -- )
; Pin Change Interrupt Flag Register
VE_PCIFR:
	.dw $ff05
	.db "PCIFR",0
	.dw VE_HEAD
	.set VE_HEAD=VE_PCIFR
XT_PCIFR:
	.dw PFA_DOVARIABLE
PFA_PCIFR:
	.dw 59
; ( -- addr ) System Constant
; R( -- )
; Pin Change Enable Mask Register 1
VE_PCMSK1:
	.dw $ff06
	.db "PCMSK1"
	.dw VE_HEAD
	.set VE_HEAD=VE_PCMSK1
XT_PCMSK1:
	.dw PFA_DOVARIABLE
PFA_PCMSK1:
	.dw 108
; ( -- addr ) System Constant
; R( -- )
; Pin Change Enable Mask Register 0
VE_PCMSK0:
	.dw $ff06
	.db "PCMSK0"
	.dw VE_HEAD
	.set VE_HEAD=VE_PCMSK0
XT_PCMSK0:
	.dw PFA_DOVARIABLE
PFA_PCMSK0:
	.dw 107

.endif
.if WANT_TIMER_COUNTER_1 == 1
; ( -- addr ) System Constant
; R( -- )
; Timer/Counter1 Control Register B
VE_TCCR1B:
	.dw $ff06
	.db "TCCR1B"
	.dw VE_HEAD
	.set VE_HEAD=VE_TCCR1B
XT_TCCR1B:
	.dw PFA_DOVARIABLE
PFA_TCCR1B:
	.dw 129
; ( -- addr ) System Constant
; R( -- )
; Timer/Counter 1 Control Register A
VE_TCCR1A:
	.dw $ff06
	.db "TCCR1A"
	.dw VE_HEAD
	.set VE_HEAD=VE_TCCR1A
XT_TCCR1A:
	.dw PFA_DOVARIABLE
PFA_TCCR1A:
	.dw 128
; ( -- addr ) System Constant
; R( -- )
; Timer Counter 1  Bytes
VE_TCNT1:
	.dw $ff05
	.db "TCNT1",0
	.dw VE_HEAD
	.set VE_HEAD=VE_TCNT1
XT_TCNT1:
	.dw PFA_DOVARIABLE
PFA_TCNT1:
	.dw 132
; ( -- addr ) System Constant
; R( -- )
; Output Compare Register 1A
VE_OCR1A:
	.dw $ff05
	.db "OCR1A",0
	.dw VE_HEAD
	.set VE_HEAD=VE_OCR1A
XT_OCR1A:
	.dw PFA_DOVARIABLE
PFA_OCR1A:
	.dw 136
; ( -- addr ) System Constant
; R( -- )
; Output Compare Register B
VE_OCR1B:
	.dw $ff05
	.db "OCR1B",0
	.dw VE_HEAD
	.set VE_HEAD=VE_OCR1B
XT_OCR1B:
	.dw PFA_DOVARIABLE
PFA_OCR1B:
	.dw 137
; ( -- addr ) System Constant
; R( -- )
; Timer/Counter Interrupt Mask Register
VE_TIMSK1:
	.dw $ff06
	.db "TIMSK1"
	.dw VE_HEAD
	.set VE_HEAD=VE_TIMSK1
XT_TIMSK1:
	.dw PFA_DOVARIABLE
PFA_TIMSK1:
	.dw 111
; ( -- addr ) System Constant
; R( -- )
; Timer/Counter Interrupt Flag register
VE_TIFR1:
	.dw $ff05
	.db "TIFR1",0
	.dw VE_HEAD
	.set VE_HEAD=VE_TIFR1
XT_TIFR1:
	.dw PFA_DOVARIABLE
PFA_TIFR1:
	.dw 54
; ( -- addr ) System Constant
; R( -- )
; General Timer/Counter Control Register
VE_GTCCR:
	.dw $ff05
	.db "GTCCR",0
	.dw VE_HEAD
	.set VE_HEAD=VE_GTCCR
XT_GTCCR:
	.dw PFA_DOVARIABLE
PFA_GTCCR:
	.dw 67

.endif
.if WANT_CELL_BALANCING == 1
; ( -- addr ) System Constant
; R( -- )
; Cell Balancing Control Register
VE_CBCR:
	.dw $ff04
	.db "CBCR"
	.dw VE_HEAD
	.set VE_HEAD=VE_CBCR
XT_CBCR:
	.dw PFA_DOVARIABLE
PFA_CBCR:
	.dw 241

.endif
.if WANT_BATTERY_PROTECTION == 1
; ( -- addr ) System Constant
; R( -- )
; Battery Protection Parameter Lock Register
VE_BPPLR:
	.dw $ff05
	.db "BPPLR",0
	.dw VE_HEAD
	.set VE_HEAD=VE_BPPLR
XT_BPPLR:
	.dw PFA_DOVARIABLE
PFA_BPPLR:
	.dw 254
; ( -- addr ) System Constant
; R( -- )
; Battery Protection Control Register
VE_BPCR:
	.dw $ff04
	.db "BPCR"
	.dw VE_HEAD
	.set VE_HEAD=VE_BPCR
XT_BPCR:
	.dw PFA_DOVARIABLE
PFA_BPCR:
	.dw 253
; ( -- addr ) System Constant
; R( -- )
; Battery Protection Short-current Timing Register
VE_BPHCTR:
	.dw $ff06
	.db "BPHCTR"
	.dw VE_HEAD
	.set VE_HEAD=VE_BPHCTR
XT_BPHCTR:
	.dw PFA_DOVARIABLE
PFA_BPHCTR:
	.dw 252
; ( -- addr ) System Constant
; R( -- )
; Battery Protection Over-current Timing Register
VE_BPOCTR:
	.dw $ff06
	.db "BPOCTR"
	.dw VE_HEAD
	.set VE_HEAD=VE_BPOCTR
XT_BPOCTR:
	.dw PFA_DOVARIABLE
PFA_BPOCTR:
	.dw 251
; ( -- addr ) System Constant
; R( -- )
; Battery Protection Short-current Timing Register
VE_BPSCTR:
	.dw $ff06
	.db "BPSCTR"
	.dw VE_HEAD
	.set VE_HEAD=VE_BPSCTR
XT_BPSCTR:
	.dw PFA_DOVARIABLE
PFA_BPSCTR:
	.dw 250
; ( -- addr ) System Constant
; R( -- )
; Battery Protection Charge-High-current Detection Level Register
VE_BPCHCD:
	.dw $ff06
	.db "BPCHCD"
	.dw VE_HEAD
	.set VE_HEAD=VE_BPCHCD
XT_BPCHCD:
	.dw PFA_DOVARIABLE
PFA_BPCHCD:
	.dw 249
; ( -- addr ) System Constant
; R( -- )
; Battery Protection Discharge-High-current Detection Level Register
VE_BPDHCD:
	.dw $ff06
	.db "BPDHCD"
	.dw VE_HEAD
	.set VE_HEAD=VE_BPDHCD
XT_BPDHCD:
	.dw PFA_DOVARIABLE
PFA_BPDHCD:
	.dw 248
; ( -- addr ) System Constant
; R( -- )
; Battery Protection Charge-Over-current Detection Level Register
VE_BPCOCD:
	.dw $ff06
	.db "BPCOCD"
	.dw VE_HEAD
	.set VE_HEAD=VE_BPCOCD
XT_BPCOCD:
	.dw PFA_DOVARIABLE
PFA_BPCOCD:
	.dw 247
; ( -- addr ) System Constant
; R( -- )
; Battery Protection Discharge-Over-current Detection Level Register
VE_BPDOCD:
	.dw $ff06
	.db "BPDOCD"
	.dw VE_HEAD
	.set VE_HEAD=VE_BPDOCD
XT_BPDOCD:
	.dw PFA_DOVARIABLE
PFA_BPDOCD:
	.dw 246
; ( -- addr ) System Constant
; R( -- )
; Battery Protection Short-Circuit Detection Level Register
VE_BPSCD:
	.dw $ff05
	.db "BPSCD",0
	.dw VE_HEAD
	.set VE_HEAD=VE_BPSCD
XT_BPSCD:
	.dw PFA_DOVARIABLE
PFA_BPSCD:
	.dw 245
; ( -- addr ) System Constant
; R( -- )
; Battery Protection Interrupt Flag Register
VE_BPIFR:
	.dw $ff05
	.db "BPIFR",0
	.dw VE_HEAD
	.set VE_HEAD=VE_BPIFR
XT_BPIFR:
	.dw PFA_DOVARIABLE
PFA_BPIFR:
	.dw 243
; ( -- addr ) System Constant
; R( -- )
; Battery Protection Interrupt Mask Register
VE_BPIMSK:
	.dw $ff06
	.db "BPIMSK"
	.dw VE_HEAD
	.set VE_HEAD=VE_BPIMSK
XT_BPIMSK:
	.dw PFA_DOVARIABLE
PFA_BPIMSK:
	.dw 242

.endif
.if WANT_CHARGER_DETECT == 1
; ( -- addr ) System Constant
; R( -- )
; Charger Detect Control and Status Register
VE_CHGDCSR:
	.dw $ff07
	.db "CHGDCSR",0
	.dw VE_HEAD
	.set VE_HEAD=VE_CHGDCSR
XT_CHGDCSR:
	.dw PFA_DOVARIABLE
PFA_CHGDCSR:
	.dw 212

.endif
.if WANT_VOLTAGE_REGULATOR == 1
; ( -- addr ) System Constant
; R( -- )
; Regulator Operating Condition Register
VE_ROCR:
	.dw $ff04
	.db "ROCR"
	.dw VE_HEAD
	.set VE_HEAD=VE_ROCR
XT_ROCR:
	.dw PFA_DOVARIABLE
PFA_ROCR:
	.dw 200

.endif
.if WANT_BANDGAP == 1
; ( -- addr ) System Constant
; R( -- )
; Bandgap Control and Status Register
VE_BGCSR:
	.dw $ff05
	.db "BGCSR",0
	.dw VE_HEAD
	.set VE_HEAD=VE_BGCSR
XT_BGCSR:
	.dw PFA_DOVARIABLE
PFA_BGCSR:
	.dw 210
; ( -- addr ) System Constant
; R( -- )
; Bandgap Calibration of Resistor Ladder
VE_BGCRR:
	.dw $ff05
	.db "BGCRR",0
	.dw VE_HEAD
	.set VE_HEAD=VE_BGCRR
XT_BGCRR:
	.dw PFA_DOVARIABLE
PFA_BGCRR:
	.dw 209
; ( -- addr ) System Constant
; R( -- )
; Bandgap Calibration Register
VE_BGCCR:
	.dw $ff05
	.db "BGCCR",0
	.dw VE_HEAD
	.set VE_HEAD=VE_BGCCR
XT_BGCCR:
	.dw PFA_DOVARIABLE
PFA_BGCCR:
	.dw 208

.endif
.if WANT_CPU == 1
; ( -- addr ) System Constant
; R( -- )
; Status Register
VE_SREG:
	.dw $ff04
	.db "SREG"
	.dw VE_HEAD
	.set VE_HEAD=VE_SREG
XT_SREG:
	.dw PFA_DOVARIABLE
PFA_SREG:
	.dw 95
; ( -- addr ) System Constant
; R( -- )
; Stack Pointer 
VE_SP:
	.dw $ff02
	.db "SP"
	.dw VE_HEAD
	.set VE_HEAD=VE_SP
XT_SP:
	.dw PFA_DOVARIABLE
PFA_SP:
	.dw 93
; ( -- addr ) System Constant
; R( -- )
; MCU Control Register
VE_MCUCR:
	.dw $ff05
	.db "MCUCR",0
	.dw VE_HEAD
	.set VE_HEAD=VE_MCUCR
XT_MCUCR:
	.dw PFA_DOVARIABLE
PFA_MCUCR:
	.dw 85
; ( -- addr ) System Constant
; R( -- )
; MCU Status Register
VE_MCUSR:
	.dw $ff05
	.db "MCUSR",0
	.dw VE_HEAD
	.set VE_HEAD=VE_MCUSR
XT_MCUSR:
	.dw PFA_DOVARIABLE
PFA_MCUSR:
	.dw 84
; ( -- addr ) System Constant
; R( -- )
; Fast Oscillator Calibration Value
VE_FOSCCAL:
	.dw $ff07
	.db "FOSCCAL",0
	.dw VE_HEAD
	.set VE_HEAD=VE_FOSCCAL
XT_FOSCCAL:
	.dw PFA_DOVARIABLE
PFA_FOSCCAL:
	.dw 102
; ( -- addr ) System Constant
; R( -- )
; Oscillator Sampling Interface Control and Status Register
VE_OSICSR:
	.dw $ff06
	.db "OSICSR"
	.dw VE_HEAD
	.set VE_HEAD=VE_OSICSR
XT_OSICSR:
	.dw PFA_DOVARIABLE
PFA_OSICSR:
	.dw 55
; ( -- addr ) System Constant
; R( -- )
; Sleep Mode Control Register
VE_SMCR:
	.dw $ff04
	.db "SMCR"
	.dw VE_HEAD
	.set VE_HEAD=VE_SMCR
XT_SMCR:
	.dw PFA_DOVARIABLE
PFA_SMCR:
	.dw 83
; ( -- addr ) System Constant
; R( -- )
; General Purpose IO Register 2
VE_GPIOR2:
	.dw $ff06
	.db "GPIOR2"
	.dw VE_HEAD
	.set VE_HEAD=VE_GPIOR2
XT_GPIOR2:
	.dw PFA_DOVARIABLE
PFA_GPIOR2:
	.dw 75
; ( -- addr ) System Constant
; R( -- )
; General Purpose IO Register 1
VE_GPIOR1:
	.dw $ff06
	.db "GPIOR1"
	.dw VE_HEAD
	.set VE_HEAD=VE_GPIOR1
XT_GPIOR1:
	.dw PFA_DOVARIABLE
PFA_GPIOR1:
	.dw 74
; ( -- addr ) System Constant
; R( -- )
; General Purpose IO Register 0
VE_GPIOR0:
	.dw $ff06
	.db "GPIOR0"
	.dw VE_HEAD
	.set VE_HEAD=VE_GPIOR0
XT_GPIOR0:
	.dw PFA_DOVARIABLE
PFA_GPIOR0:
	.dw 62
; ( -- addr ) System Constant
; R( -- )
; Digital Input Disable Register
VE_DIDR0:
	.dw $ff05
	.db "DIDR0",0
	.dw VE_HEAD
	.set VE_HEAD=VE_DIDR0
XT_DIDR0:
	.dw PFA_DOVARIABLE
PFA_DIDR0:
	.dw 126
; ( -- addr ) System Constant
; R( -- )
; Power Reduction Register 0
VE_PRR0:
	.dw $ff04
	.db "PRR0"
	.dw VE_HEAD
	.set VE_HEAD=VE_PRR0
XT_PRR0:
	.dw PFA_DOVARIABLE
PFA_PRR0:
	.dw 100
; ( -- addr ) System Constant
; R( -- )
; Clock Prescale Register
VE_CLKPR:
	.dw $ff05
	.db "CLKPR",0
	.dw VE_HEAD
	.set VE_HEAD=VE_CLKPR
XT_CLKPR:
	.dw PFA_DOVARIABLE
PFA_CLKPR:
	.dw 97

.endif
.if WANT_PORTA == 1
; ( -- addr ) System Constant
; R( -- )
; Port A Data Register
VE_PORTA:
	.dw $ff05
	.db "PORTA",0
	.dw VE_HEAD
	.set VE_HEAD=VE_PORTA
XT_PORTA:
	.dw PFA_DOVARIABLE
PFA_PORTA:
	.dw 34
; ( -- addr ) System Constant
; R( -- )
; Port A Data Direction Register
VE_DDRA:
	.dw $ff04
	.db "DDRA"
	.dw VE_HEAD
	.set VE_HEAD=VE_DDRA
XT_DDRA:
	.dw PFA_DOVARIABLE
PFA_DDRA:
	.dw 33
; ( -- addr ) System Constant
; R( -- )
; Port A Input Pins
VE_PINA:
	.dw $ff04
	.db "PINA"
	.dw VE_HEAD
	.set VE_HEAD=VE_PINA
XT_PINA:
	.dw PFA_DOVARIABLE
PFA_PINA:
	.dw 32

.endif
.if WANT_PORTB == 1
; ( -- addr ) System Constant
; R( -- )
; Port B Data Register
VE_PORTB:
	.dw $ff05
	.db "PORTB",0
	.dw VE_HEAD
	.set VE_HEAD=VE_PORTB
XT_PORTB:
	.dw PFA_DOVARIABLE
PFA_PORTB:
	.dw 37
; ( -- addr ) System Constant
; R( -- )
; Port B Data Direction Register
VE_DDRB:
	.dw $ff04
	.db "DDRB"
	.dw VE_HEAD
	.set VE_HEAD=VE_DDRB
XT_DDRB:
	.dw PFA_DOVARIABLE
PFA_DDRB:
	.dw 36
; ( -- addr ) System Constant
; R( -- )
; Port B Input Pins
VE_PINB:
	.dw $ff04
	.db "PINB"
	.dw VE_HEAD
	.set VE_HEAD=VE_PINB
XT_PINB:
	.dw PFA_DOVARIABLE
PFA_PINB:
	.dw 35

.endif
.if WANT_PORTC == 1
; ( -- addr ) System Constant
; R( -- )
; Port C Data Register
VE_PORTC:
	.dw $ff05
	.db "PORTC",0
	.dw VE_HEAD
	.set VE_HEAD=VE_PORTC
XT_PORTC:
	.dw PFA_DOVARIABLE
PFA_PORTC:
	.dw 40
; ( -- addr ) System Constant
; R( -- )
; Port C Input Pins
VE_PINC:
	.dw $ff04
	.db "PINC"
	.dw VE_HEAD
	.set VE_HEAD=VE_PINC
XT_PINC:
	.dw PFA_DOVARIABLE
PFA_PINC:
	.dw 38

.endif
.if WANT_TIMER_COUNTER_0 == 1
; ( -- addr ) System Constant
; R( -- )
; Timer/Counter0 Control Register B
VE_TCCR0B:
	.dw $ff06
	.db "TCCR0B"
	.dw VE_HEAD
	.set VE_HEAD=VE_TCCR0B
XT_TCCR0B:
	.dw PFA_DOVARIABLE
PFA_TCCR0B:
	.dw 69
; ( -- addr ) System Constant
; R( -- )
; Timer/Counter 0 Control Register A
VE_TCCR0A:
	.dw $ff06
	.db "TCCR0A"
	.dw VE_HEAD
	.set VE_HEAD=VE_TCCR0A
XT_TCCR0A:
	.dw PFA_DOVARIABLE
PFA_TCCR0A:
	.dw 68
; ( -- addr ) System Constant
; R( -- )
; Timer Counter 0  Bytes
VE_TCNT0:
	.dw $ff05
	.db "TCNT0",0
	.dw VE_HEAD
	.set VE_HEAD=VE_TCNT0
XT_TCNT0:
	.dw PFA_DOVARIABLE
PFA_TCNT0:
	.dw 70
; ( -- addr ) System Constant
; R( -- )
; Output Compare Register 0A
VE_OCR0A:
	.dw $ff05
	.db "OCR0A",0
	.dw VE_HEAD
	.set VE_HEAD=VE_OCR0A
XT_OCR0A:
	.dw PFA_DOVARIABLE
PFA_OCR0A:
	.dw 72
; ( -- addr ) System Constant
; R( -- )
; Output Compare Register B
VE_OCR0B:
	.dw $ff05
	.db "OCR0B",0
	.dw VE_HEAD
	.set VE_HEAD=VE_OCR0B
XT_OCR0B:
	.dw PFA_DOVARIABLE
PFA_OCR0B:
	.dw 73
; ( -- addr ) System Constant
; R( -- )
; Timer/Counter Interrupt Mask Register
VE_TIMSK0:
	.dw $ff06
	.db "TIMSK0"
	.dw VE_HEAD
	.set VE_HEAD=VE_TIMSK0
XT_TIMSK0:
	.dw PFA_DOVARIABLE
PFA_TIMSK0:
	.dw 110
; ( -- addr ) System Constant
; R( -- )
; Timer/Counter Interrupt Flag register
VE_TIFR0:
	.dw $ff05
	.db "TIFR0",0
	.dw VE_HEAD
	.set VE_HEAD=VE_TIFR0
XT_TIFR0:
	.dw PFA_DOVARIABLE
PFA_TIFR0:
	.dw 53

.endif
.if WANT_BOOT_LOAD == 1
; ( -- addr ) System Constant
; R( -- )
; Store Program Memory Control and Status Register
VE_SPMCSR:
	.dw $ff06
	.db "SPMCSR"
	.dw VE_HEAD
	.set VE_HEAD=VE_SPMCSR
XT_SPMCSR:
	.dw PFA_DOVARIABLE
PFA_SPMCSR:
	.dw 87

.endif
