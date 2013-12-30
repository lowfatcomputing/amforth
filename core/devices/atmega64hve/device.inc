; Partname:  ATmega64HVE
; Built using part description XML file version 1
; generated automatically, no not edit

; ********
.if WANT_AD_CONVERTER == 1
; ********
; ( -- addr ) System Constant
; R( -- )
; ADC Control Register A
VE_ADCRA:
	.word 0xff05
	.db "ADCRA",0
	.word VE_HEAD
	.set VE_HEAD=VE_ADCRA
XT_ADCRA:
	.word PFA_DOVARIABLE
PFA_ADCRA:
	.word 0xe2
; ( -- addr ) System Constant
; R( -- )
; ADC Control Register B
VE_ADCRB:
	.word 0xff05
	.db "ADCRB",0
	.word VE_HEAD
	.set VE_HEAD=VE_ADCRB
XT_ADCRB:
	.word PFA_DOVARIABLE
PFA_ADCRB:
	.word 0xe3
; ( -- addr ) System Constant
; R( -- )
; ADC Control Register B
VE_ADCRC:
	.word 0xff05
	.db "ADCRC",0
	.word VE_HEAD
	.set VE_HEAD=VE_ADCRC
XT_ADCRC:
	.word PFA_DOVARIABLE
PFA_ADCRC:
	.word 0xe4
; ( -- addr ) System Constant
; R( -- )
; ADC Control Register D
VE_ADCRD:
	.word 0xff05
	.db "ADCRD",0
	.word VE_HEAD
	.set VE_HEAD=VE_ADCRD
XT_ADCRD:
	.word PFA_DOVARIABLE
PFA_ADCRD:
	.word 0xe5
; ( -- addr ) System Constant
; R( -- )
; ADC Control Register E
VE_ADCRE:
	.word 0xff05
	.db "ADCRE",0
	.word VE_HEAD
	.set VE_HEAD=VE_ADCRE
XT_ADCRE:
	.word PFA_DOVARIABLE
PFA_ADCRE:
	.word 0xe6
; ( -- addr ) System Constant
; R( -- )
; ADC Interrupt Flag Register
VE_ADIFR:
	.word 0xff05
	.db "ADIFR",0
	.word VE_HEAD
	.set VE_HEAD=VE_ADIFR
XT_ADIFR:
	.word PFA_DOVARIABLE
PFA_ADIFR:
	.word 0xe7
; ( -- addr ) System Constant
; R( -- )
; ADC Interrupt Mask Register
VE_ADIMR:
	.word 0xff05
	.db "ADIMR",0
	.word VE_HEAD
	.set VE_HEAD=VE_ADIMR
XT_ADIMR:
	.word PFA_DOVARIABLE
PFA_ADIMR:
	.word 0xe8
; ( -- addr ) System Constant
; R( -- )
; ADC Synchronization Control and Status Register
VE_ADSCSRA:
	.word 0xff07
	.db "ADSCSRA",0
	.word VE_HEAD
	.set VE_HEAD=VE_ADSCSRA
XT_ADSCSRA:
	.word PFA_DOVARIABLE
PFA_ADSCSRA:
	.word 0xe0
; ( -- addr ) System Constant
; R( -- )
; ADC Synchronization Control and Status Register
VE_ADSCSRB:
	.word 0xff07
	.db "ADSCSRB",0
	.word VE_HEAD
	.set VE_HEAD=VE_ADSCSRB
XT_ADSCSRB:
	.word PFA_DOVARIABLE
PFA_ADSCSRB:
	.word 0xe1
; ( -- addr ) System Constant
; R( -- )
; C-ADC Accumulated Conversion Result
VE_CADAC0:
	.word 0xff06
	.ascii "CADAC0"
	.word VE_HEAD
	.set VE_HEAD=VE_CADAC0
XT_CADAC0:
	.word PFA_DOVARIABLE
PFA_CADAC0:
	.word 0xed
; ( -- addr ) System Constant
; R( -- )
; C-ADC Accumulated Conversion Result
VE_CADAC1:
	.word 0xff06
	.ascii "CADAC1"
	.word VE_HEAD
	.set VE_HEAD=VE_CADAC1
XT_CADAC1:
	.word PFA_DOVARIABLE
PFA_CADAC1:
	.word 0xee
; ( -- addr ) System Constant
; R( -- )
; C-ADC Accumulated Conversion Result
VE_CADAC2:
	.word 0xff06
	.ascii "CADAC2"
	.word VE_HEAD
	.set VE_HEAD=VE_CADAC2
XT_CADAC2:
	.word PFA_DOVARIABLE
PFA_CADAC2:
	.word 0xef
; ( -- addr ) System Constant
; R( -- )
; C-ADC Accumulated Conversion Result
VE_CADAC3:
	.word 0xff06
	.ascii "CADAC3"
	.word VE_HEAD
	.set VE_HEAD=VE_CADAC3
XT_CADAC3:
	.word PFA_DOVARIABLE
PFA_CADAC3:
	.word 0xf0
; ( -- addr ) System Constant
; R( -- )
; C-ADC Instantaneous Conversion Result
VE_CADICH:
	.word 0xff06
	.ascii "CADICH"
	.word VE_HEAD
	.set VE_HEAD=VE_CADICH
XT_CADICH:
	.word PFA_DOVARIABLE
PFA_CADICH:
	.word 0xec
; ( -- addr ) System Constant
; R( -- )
; C-ADC Instantaneous Conversion Result
VE_CADICL:
	.word 0xff06
	.ascii "CADICL"
	.word VE_HEAD
	.set VE_HEAD=VE_CADICL
XT_CADICL:
	.word PFA_DOVARIABLE
PFA_CADICL:
	.word 0xeb
; ( -- addr ) System Constant
; R( -- )
; CC-ADC Regulator Current Comparator Threshold Level
VE_CADRCLH:
	.word 0xff07
	.db "CADRCLH",0
	.word VE_HEAD
	.set VE_HEAD=VE_CADRCLH
XT_CADRCLH:
	.word PFA_DOVARIABLE
PFA_CADRCLH:
	.word 0xea
; ( -- addr ) System Constant
; R( -- )
; CC-ADC Regulator Current Comparator Threshold Level
VE_CADRCLL:
	.word 0xff07
	.db "CADRCLL",0
	.word VE_HEAD
	.set VE_HEAD=VE_CADRCLL
XT_CADRCLL:
	.word PFA_DOVARIABLE
PFA_CADRCLL:
	.word 0xe9
; ( -- addr ) System Constant
; R( -- )
; V-ADC Accumulated Conversion Result
VE_VADAC0:
	.word 0xff06
	.ascii "VADAC0"
	.word VE_HEAD
	.set VE_HEAD=VE_VADAC0
XT_VADAC0:
	.word PFA_DOVARIABLE
PFA_VADAC0:
	.word 0xf3
; ( -- addr ) System Constant
; R( -- )
; V-ADC Accumulated Conversion Result
VE_VADAC1:
	.word 0xff06
	.ascii "VADAC1"
	.word VE_HEAD
	.set VE_HEAD=VE_VADAC1
XT_VADAC1:
	.word PFA_DOVARIABLE
PFA_VADAC1:
	.word 0xf4
; ( -- addr ) System Constant
; R( -- )
; V-ADC Accumulated Conversion Result
VE_VADAC2:
	.word 0xff06
	.ascii "VADAC2"
	.word VE_HEAD
	.set VE_HEAD=VE_VADAC2
XT_VADAC2:
	.word PFA_DOVARIABLE
PFA_VADAC2:
	.word 0xf5
; ( -- addr ) System Constant
; R( -- )
; V-ADC Accumulated Conversion Result
VE_VADAC3:
	.word 0xff06
	.ascii "VADAC3"
	.word VE_HEAD
	.set VE_HEAD=VE_VADAC3
XT_VADAC3:
	.word PFA_DOVARIABLE
PFA_VADAC3:
	.word 0xf6
; ( -- addr ) System Constant
; R( -- )
; V-ADC Instantaneous Conversion Result
VE_VADICH:
	.word 0xff06
	.ascii "VADICH"
	.word VE_HEAD
	.set VE_HEAD=VE_VADICH
XT_VADICH:
	.word PFA_DOVARIABLE
PFA_VADICH:
	.word 0xf2
; ( -- addr ) System Constant
; R( -- )
; V-ADC Instantaneous Conversion Result
VE_VADICL:
	.word 0xff06
	.ascii "VADICL"
	.word VE_HEAD
	.set VE_HEAD=VE_VADICL
XT_VADICL:
	.word PFA_DOVARIABLE
PFA_VADICL:
	.word 0xf1

.endif

; ********
.if WANT_BANDGAP == 1
; ********
; ( -- addr ) System Constant
; R( -- )
; Band Gap Calibration Register A
VE_BGCRA:
	.word 0xff05
	.db "BGCRA",0
	.word VE_HEAD
	.set VE_HEAD=VE_BGCRA
XT_BGCRA:
	.word PFA_DOVARIABLE
PFA_BGCRA:
	.word 0xd3
; ( -- addr ) System Constant
; R( -- )
; Band Gap Calibration Register B
VE_BGCRB:
	.word 0xff05
	.db "BGCRB",0
	.word VE_HEAD
	.set VE_HEAD=VE_BGCRB
XT_BGCRB:
	.word PFA_DOVARIABLE
PFA_BGCRB:
	.word 0xd2
; ( -- addr ) System Constant
; R( -- )
; Bandgap Control and Status Register A
VE_BGCSRA:
	.word 0xff06
	.ascii "BGCSRA"
	.word VE_HEAD
	.set VE_HEAD=VE_BGCSRA
XT_BGCSRA:
	.word PFA_DOVARIABLE
PFA_BGCSRA:
	.word 0xd1
; ( -- addr ) System Constant
; R( -- )
; Band Gap Lock Register
VE_BGLR:
	.word 0xff04
	.ascii "BGLR"
	.word VE_HEAD
	.set VE_HEAD=VE_BGLR
XT_BGLR:
	.word PFA_DOVARIABLE
PFA_BGLR:
	.word 0xd4

.endif

; ********
.if WANT_BOOT_LOAD == 1
; ********
; ( -- addr ) System Constant
; R( -- )
; Store Program Memory Control and Status Register
VE_SPMCSR:
	.word 0xff06
	.ascii "SPMCSR"
	.word VE_HEAD
	.set VE_HEAD=VE_SPMCSR
XT_SPMCSR:
	.word PFA_DOVARIABLE
PFA_SPMCSR:
	.word 0x57

.endif

; ********
.if WANT_CPU == 1
; ********
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
	.word 0x61
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
	.word 0x7E
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
	.word 0x3E
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
	.word 0x4A
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
	.word 0x4B
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
; PLL Control and Status Register
VE_PLLCSR:
	.word 0xff06
	.ascii "PLLCSR"
	.word VE_HEAD
	.set VE_HEAD=VE_PLLCSR
XT_PLLCSR:
	.word PFA_DOVARIABLE
PFA_PLLCSR:
	.word 0xd8
; ( -- addr ) System Constant
; R( -- )
; Power Reduction Register 0
VE_PRR0:
	.word 0xff04
	.ascii "PRR0"
	.word VE_HEAD
	.set VE_HEAD=VE_PRR0
XT_PRR0:
	.word PFA_DOVARIABLE
PFA_PRR0:
	.word 0x64
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
	.word 0x53
; ( -- addr ) System Constant
; R( -- )
; Slow Oscillator Calibration Register A
VE_SOSCCALA:
	.word 0xff08
	.ascii "SOSCCALA"
	.word VE_HEAD
	.set VE_HEAD=VE_SOSCCALA
XT_SOSCCALA:
	.word PFA_DOVARIABLE
PFA_SOSCCALA:
	.word 0x66
; ( -- addr ) System Constant
; R( -- )
; Oscillator Calibration Register B
VE_SOSCCALB:
	.word 0xff08
	.ascii "SOSCCALB"
	.word VE_HEAD
	.set VE_HEAD=VE_SOSCCALB
XT_SOSCCALB:
	.word PFA_DOVARIABLE
PFA_SOSCCALB:
	.word 0x67
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
; EEPROM Read/Write Access
VE_EEARH:
	.word 0xff05
	.db "EEARH",0
	.word VE_HEAD
	.set VE_HEAD=VE_EEARH
XT_EEARH:
	.word PFA_DOVARIABLE
PFA_EEARH:
	.word 0x42
; ( -- addr ) System Constant
; R( -- )
; EEPROM Read/Write Access
VE_EEARL:
	.word 0xff05
	.db "EEARL",0
	.word VE_HEAD
	.set VE_HEAD=VE_EEARL
XT_EEARL:
	.word PFA_DOVARIABLE
PFA_EEARL:
	.word 0x41
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
	.word 0x3F
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
	.word 0x40

.endif

; ********
.if WANT_EXTERNAL_INTERRUPT == 1
; ********
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
	.word 0x69
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
	.word 0x3C
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
	.word 0x3D
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
	.word 0x68
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
	.word 0x3B
; ( -- addr ) System Constant
; R( -- )
; Pin Change Enable Mask Register 0
VE_PCMSK0:
	.word 0xff06
	.ascii "PCMSK0"
	.word VE_HEAD
	.set VE_HEAD=VE_PCMSK0
XT_PCMSK0:
	.word PFA_DOVARIABLE
PFA_PCMSK0:
	.word 0x6B
; ( -- addr ) System Constant
; R( -- )
; Pin Change Enable Mask Register 1
VE_PCMSK1:
	.word 0xff06
	.ascii "PCMSK1"
	.word VE_HEAD
	.set VE_HEAD=VE_PCMSK1
XT_PCMSK1:
	.word PFA_DOVARIABLE
PFA_PCMSK1:
	.word 0x6C

.endif

; ********
.if WANT_LINUART == 1
; ********
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
	.word 0xc6
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
	.word 0xc5
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
	.word 0xc4
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
	.word 0xc0
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
	.word 0xcA
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
	.word 0xc7
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
	.word 0xc2
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
	.word 0xc3
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
	.word 0xc8
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
	.word 0xc9
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
	.word 0xc1

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
	.word 0x21
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
	.word 0x20
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
	.word 0x22

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
	.word 0x24
; ( -- addr ) System Constant
; R( -- )
; Port B Override
VE_PBOV:
	.word 0xff04
	.ascii "PBOV"
	.word VE_HEAD
	.set VE_HEAD=VE_PBOV
XT_PBOV:
	.word PFA_DOVARIABLE
PFA_PBOV:
	.word 0xdc
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
	.word 0x23
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
	.word 0x25

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
	.word 0x4c
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
	.word 0x4e
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
	.word 0x4d

.endif

; ********
.if WANT_TIMER_COUNTER_0 == 1
; ********
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
	.word 0x43
; ( -- addr ) System Constant
; R( -- )
; Output Compare Register 0A 
VE_OCR0A:
	.word 0xff05
	.db "OCR0A",0
	.word VE_HEAD
	.set VE_HEAD=VE_OCR0A
XT_OCR0A:
	.word PFA_DOVARIABLE
PFA_OCR0A:
	.word 0x48
; ( -- addr ) System Constant
; R( -- )
; Output Compare Register B 
VE_OCR0B:
	.word 0xff05
	.db "OCR0B",0
	.word VE_HEAD
	.set VE_HEAD=VE_OCR0B
XT_OCR0B:
	.word PFA_DOVARIABLE
PFA_OCR0B:
	.word 0x49
; ( -- addr ) System Constant
; R( -- )
; Timer/Counter 0 Control Register A
VE_TCCR0A:
	.word 0xff06
	.ascii "TCCR0A"
	.word VE_HEAD
	.set VE_HEAD=VE_TCCR0A
XT_TCCR0A:
	.word PFA_DOVARIABLE
PFA_TCCR0A:
	.word 0x44
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
	.word 0x45
; ( -- addr ) System Constant
; R( -- )
; Timer Counter 0 High Byte
VE_TCNT0H:
	.word 0xff06
	.ascii "TCNT0H"
	.word VE_HEAD
	.set VE_HEAD=VE_TCNT0H
XT_TCNT0H:
	.word PFA_DOVARIABLE
PFA_TCNT0H:
	.word 0x47
; ( -- addr ) System Constant
; R( -- )
; Timer Counter 0 Low Byte
VE_TCNT0L:
	.word 0xff06
	.ascii "TCNT0L"
	.word VE_HEAD
	.set VE_HEAD=VE_TCNT0L
XT_TCNT0L:
	.word PFA_DOVARIABLE
PFA_TCNT0L:
	.word 0x46
; ( -- addr ) System Constant
; R( -- )
; Timer/Counter Interrupt Flag register
VE_TIFR0:
	.word 0xff05
	.db "TIFR0",0
	.word VE_HEAD
	.set VE_HEAD=VE_TIFR0
XT_TIFR0:
	.word PFA_DOVARIABLE
PFA_TIFR0:
	.word 0x35
; ( -- addr ) System Constant
; R( -- )
; Timer/Counter Interrupt Mask Register
VE_TIMSK0:
	.word 0xff06
	.ascii "TIMSK0"
	.word VE_HEAD
	.set VE_HEAD=VE_TIMSK0
XT_TIMSK0:
	.word PFA_DOVARIABLE
PFA_TIMSK0:
	.word 0x6E

.endif

; ********
.if WANT_TIMER_COUNTER_1 == 1
; ********
; ( -- addr ) System Constant
; R( -- )
; Output Compare Register 1A 
VE_OCR1A:
	.word 0xff05
	.db "OCR1A",0
	.word VE_HEAD
	.set VE_HEAD=VE_OCR1A
XT_OCR1A:
	.word PFA_DOVARIABLE
PFA_OCR1A:
	.word 0x88
; ( -- addr ) System Constant
; R( -- )
; Output Compare Register B 
VE_OCR1B:
	.word 0xff05
	.db "OCR1B",0
	.word VE_HEAD
	.set VE_HEAD=VE_OCR1B
XT_OCR1B:
	.word PFA_DOVARIABLE
PFA_OCR1B:
	.word 0x89
; ( -- addr ) System Constant
; R( -- )
; Timer/Counter 1 Control Register A
VE_TCCR1A:
	.word 0xff06
	.ascii "TCCR1A"
	.word VE_HEAD
	.set VE_HEAD=VE_TCCR1A
XT_TCCR1A:
	.word PFA_DOVARIABLE
PFA_TCCR1A:
	.word 0x80
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
	.word 0x81
; ( -- addr ) System Constant
; R( -- )
; Timer Counter 1 High Byte
VE_TCNT1H:
	.word 0xff06
	.ascii "TCNT1H"
	.word VE_HEAD
	.set VE_HEAD=VE_TCNT1H
XT_TCNT1H:
	.word PFA_DOVARIABLE
PFA_TCNT1H:
	.word 0x85
; ( -- addr ) System Constant
; R( -- )
; Timer Counter 1 Low Byte
VE_TCNT1L:
	.word 0xff06
	.ascii "TCNT1L"
	.word VE_HEAD
	.set VE_HEAD=VE_TCNT1L
XT_TCNT1L:
	.word PFA_DOVARIABLE
PFA_TCNT1L:
	.word 0x84
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
	.word 0x36
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
	.word 0x6F

.endif

; ********
.if WANT_WAKEUP_TIMER == 1
; ********
; ( -- addr ) System Constant
; R( -- )
; Wake-up Timer Control and Status Register
VE_WUTCSR:
	.word 0xff06
	.ascii "WUTCSR"
	.word VE_HEAD
	.set VE_HEAD=VE_WUTCSR
XT_WUTCSR:
	.word PFA_DOVARIABLE
PFA_WUTCSR:
	.word 0x62

.endif

; ********
.if WANT_WATCHDOG == 1
; ********
; ( -- addr ) System Constant
; R( -- )
; Watchdog Timer Configuration Lock Register
VE_WDTCLR:
	.word 0xff06
	.ascii "WDTCLR"
	.word VE_HEAD
	.set VE_HEAD=VE_WDTCLR
XT_WDTCLR:
	.word PFA_DOVARIABLE
PFA_WDTCLR:
	.word 0x63
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
	.word 0x60

.endif
