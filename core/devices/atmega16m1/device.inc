; Partname:  ATmega16M1
; Built using part description XML file version 1
; generated automatically, no not edit

; ********
.if WANT_AD_CONVERTER == 1
; ********
; ( -- addr ) System Constant
; R( -- )
; ADC Data Register High Byte
VE_ADCH:
	.dw $ff04
	.db "ADCH"
	.dw VE_HEAD
	.set VE_HEAD=VE_ADCH
XT_ADCH:
	.dw PFA_DOVARIABLE
PFA_ADCH:
	.dw $79
; ( -- addr ) System Constant
; R( -- )
; ADC Data Register Low Byte
VE_ADCL:
	.dw $ff04
	.db "ADCL"
	.dw VE_HEAD
	.set VE_HEAD=VE_ADCL
XT_ADCL:
	.dw PFA_DOVARIABLE
PFA_ADCL:
	.dw $78
; ( -- addr ) System Constant
; R( -- )
; The ADC Control and Status register
VE_ADCSRA:
	.dw $ff06
	.db "ADCSRA"
	.dw VE_HEAD
	.set VE_HEAD=VE_ADCSRA
XT_ADCSRA:
	.dw PFA_DOVARIABLE
PFA_ADCSRA:
	.dw $7A
; ( -- addr ) System Constant
; R( -- )
; ADC Control and Status Register B
VE_ADCSRB:
	.dw $ff06
	.db "ADCSRB"
	.dw VE_HEAD
	.set VE_HEAD=VE_ADCSRB
XT_ADCSRB:
	.dw PFA_DOVARIABLE
PFA_ADCSRB:
	.dw $7B
; ( -- addr ) System Constant
; R( -- )
; The ADC multiplexer Selection Register
VE_ADMUX:
	.dw $ff05
	.db "ADMUX",0
	.dw VE_HEAD
	.set VE_HEAD=VE_ADMUX
XT_ADMUX:
	.dw PFA_DOVARIABLE
PFA_ADMUX:
	.dw $7C
; ( -- addr ) System Constant
; R( -- )
; 
VE_AMP0CSR:
	.dw $ff07
	.db "AMP0CSR",0
	.dw VE_HEAD
	.set VE_HEAD=VE_AMP0CSR
XT_AMP0CSR:
	.dw PFA_DOVARIABLE
PFA_AMP0CSR:
	.dw $75
; ( -- addr ) System Constant
; R( -- )
; 
VE_AMP1CSR:
	.dw $ff07
	.db "AMP1CSR",0
	.dw VE_HEAD
	.set VE_HEAD=VE_AMP1CSR
XT_AMP1CSR:
	.dw PFA_DOVARIABLE
PFA_AMP1CSR:
	.dw $76
; ( -- addr ) System Constant
; R( -- )
; 
VE_AMP2CSR:
	.dw $ff07
	.db "AMP2CSR",0
	.dw VE_HEAD
	.set VE_HEAD=VE_AMP2CSR
XT_AMP2CSR:
	.dw PFA_DOVARIABLE
PFA_AMP2CSR:
	.dw $77
; ( -- addr ) System Constant
; R( -- )
; Digital Input Disable Register 0
VE_DIDR0:
	.dw $ff05
	.db "DIDR0",0
	.dw VE_HEAD
	.set VE_HEAD=VE_DIDR0
XT_DIDR0:
	.dw PFA_DOVARIABLE
PFA_DIDR0:
	.dw $7E
; ( -- addr ) System Constant
; R( -- )
; Digital Input Disable Register 0
VE_DIDR1:
	.dw $ff05
	.db "DIDR1",0
	.dw VE_HEAD
	.set VE_HEAD=VE_DIDR1
XT_DIDR1:
	.dw PFA_DOVARIABLE
PFA_DIDR1:
	.dw $7F

.endif

; ********
.if WANT_ANALOG_COMPARATOR == 1
; ********
; ( -- addr ) System Constant
; R( -- )
; Analog Comparator 0 Control Register
VE_AC0CON:
	.dw $ff06
	.db "AC0CON"
	.dw VE_HEAD
	.set VE_HEAD=VE_AC0CON
XT_AC0CON:
	.dw PFA_DOVARIABLE
PFA_AC0CON:
	.dw $94
; ( -- addr ) System Constant
; R( -- )
; Analog Comparator 1 Control Register
VE_AC1CON:
	.dw $ff06
	.db "AC1CON"
	.dw VE_HEAD
	.set VE_HEAD=VE_AC1CON
XT_AC1CON:
	.dw PFA_DOVARIABLE
PFA_AC1CON:
	.dw $95
; ( -- addr ) System Constant
; R( -- )
; Analog Comparator 2 Control Register
VE_AC2CON:
	.dw $ff06
	.db "AC2CON"
	.dw VE_HEAD
	.set VE_HEAD=VE_AC2CON
XT_AC2CON:
	.dw PFA_DOVARIABLE
PFA_AC2CON:
	.dw $96
; ( -- addr ) System Constant
; R( -- )
; Analog Comparator 3 Control Register
VE_AC3CON:
	.dw $ff06
	.db "AC3CON"
	.dw VE_HEAD
	.set VE_HEAD=VE_AC3CON
XT_AC3CON:
	.dw PFA_DOVARIABLE
PFA_AC3CON:
	.dw $97
; ( -- addr ) System Constant
; R( -- )
; Analog Comparator Status Register
VE_ACSR:
	.dw $ff04
	.db "ACSR"
	.dw VE_HEAD
	.set VE_HEAD=VE_ACSR
XT_ACSR:
	.dw PFA_DOVARIABLE
PFA_ACSR:
	.dw $50

.endif

; ********
.if WANT_CAN == 1
; ********
; ( -- addr ) System Constant
; R( -- )
; CAN Bit Timing Register 1
VE_CANBT1:
	.dw $ff06
	.db "CANBT1"
	.dw VE_HEAD
	.set VE_HEAD=VE_CANBT1
XT_CANBT1:
	.dw PFA_DOVARIABLE
PFA_CANBT1:
	.dw $E2
; ( -- addr ) System Constant
; R( -- )
; CAN Bit Timing Register 2
VE_CANBT2:
	.dw $ff06
	.db "CANBT2"
	.dw VE_HEAD
	.set VE_HEAD=VE_CANBT2
XT_CANBT2:
	.dw PFA_DOVARIABLE
PFA_CANBT2:
	.dw $E3
; ( -- addr ) System Constant
; R( -- )
; CAN Bit Timing Register 3
VE_CANBT3:
	.dw $ff06
	.db "CANBT3"
	.dw VE_HEAD
	.set VE_HEAD=VE_CANBT3
XT_CANBT3:
	.dw PFA_DOVARIABLE
PFA_CANBT3:
	.dw $E4
; ( -- addr ) System Constant
; R( -- )
; MOb Control and DLC Register
VE_CANCDMOB:
	.dw $ff08
	.db "CANCDMOB"
	.dw VE_HEAD
	.set VE_HEAD=VE_CANCDMOB
XT_CANCDMOB:
	.dw PFA_DOVARIABLE
PFA_CANCDMOB:
	.dw $EF
; ( -- addr ) System Constant
; R( -- )
; Enable MOb Register 1(empty)
VE_CANEN1:
	.dw $ff06
	.db "CANEN1"
	.dw VE_HEAD
	.set VE_HEAD=VE_CANEN1
XT_CANEN1:
	.dw PFA_DOVARIABLE
PFA_CANEN1:
	.dw $DD
; ( -- addr ) System Constant
; R( -- )
; Enable MOb Register 2
VE_CANEN2:
	.dw $ff06
	.db "CANEN2"
	.dw VE_HEAD
	.set VE_HEAD=VE_CANEN2
XT_CANEN2:
	.dw PFA_DOVARIABLE
PFA_CANEN2:
	.dw $DC
; ( -- addr ) System Constant
; R( -- )
; CAN General Control Register
VE_CANGCON:
	.dw $ff07
	.db "CANGCON",0
	.dw VE_HEAD
	.set VE_HEAD=VE_CANGCON
XT_CANGCON:
	.dw PFA_DOVARIABLE
PFA_CANGCON:
	.dw $D8
; ( -- addr ) System Constant
; R( -- )
; CAN General Interrupt Enable Register
VE_CANGIE:
	.dw $ff06
	.db "CANGIE"
	.dw VE_HEAD
	.set VE_HEAD=VE_CANGIE
XT_CANGIE:
	.dw PFA_DOVARIABLE
PFA_CANGIE:
	.dw $DB
; ( -- addr ) System Constant
; R( -- )
; CAN General Interrupt Register Flags
VE_CANGIT:
	.dw $ff06
	.db "CANGIT"
	.dw VE_HEAD
	.set VE_HEAD=VE_CANGIT
XT_CANGIT:
	.dw PFA_DOVARIABLE
PFA_CANGIT:
	.dw $DA
; ( -- addr ) System Constant
; R( -- )
; CAN General Status Register
VE_CANGSTA:
	.dw $ff07
	.db "CANGSTA",0
	.dw VE_HEAD
	.set VE_HEAD=VE_CANGSTA
XT_CANGSTA:
	.dw PFA_DOVARIABLE
PFA_CANGSTA:
	.dw $D9
; ( -- addr ) System Constant
; R( -- )
; Highest Priority MOb Register
VE_CANHPMOB:
	.dw $ff08
	.db "CANHPMOB"
	.dw VE_HEAD
	.set VE_HEAD=VE_CANHPMOB
XT_CANHPMOB:
	.dw PFA_DOVARIABLE
PFA_CANHPMOB:
	.dw $EC
; ( -- addr ) System Constant
; R( -- )
; Identifier Mask Register 1
VE_CANIDM1:
	.dw $ff07
	.db "CANIDM1",0
	.dw VE_HEAD
	.set VE_HEAD=VE_CANIDM1
XT_CANIDM1:
	.dw PFA_DOVARIABLE
PFA_CANIDM1:
	.dw $F7
; ( -- addr ) System Constant
; R( -- )
; Identifier Mask Register 2
VE_CANIDM2:
	.dw $ff07
	.db "CANIDM2",0
	.dw VE_HEAD
	.set VE_HEAD=VE_CANIDM2
XT_CANIDM2:
	.dw PFA_DOVARIABLE
PFA_CANIDM2:
	.dw $F6
; ( -- addr ) System Constant
; R( -- )
; Identifier Mask Register 3
VE_CANIDM3:
	.dw $ff07
	.db "CANIDM3",0
	.dw VE_HEAD
	.set VE_HEAD=VE_CANIDM3
XT_CANIDM3:
	.dw PFA_DOVARIABLE
PFA_CANIDM3:
	.dw $F5
; ( -- addr ) System Constant
; R( -- )
; Identifier Mask Register 4
VE_CANIDM4:
	.dw $ff07
	.db "CANIDM4",0
	.dw VE_HEAD
	.set VE_HEAD=VE_CANIDM4
XT_CANIDM4:
	.dw PFA_DOVARIABLE
PFA_CANIDM4:
	.dw $F4
; ( -- addr ) System Constant
; R( -- )
; Identifier Tag Register 1
VE_CANIDT1:
	.dw $ff07
	.db "CANIDT1",0
	.dw VE_HEAD
	.set VE_HEAD=VE_CANIDT1
XT_CANIDT1:
	.dw PFA_DOVARIABLE
PFA_CANIDT1:
	.dw $F3
; ( -- addr ) System Constant
; R( -- )
; Identifier Tag Register 2
VE_CANIDT2:
	.dw $ff07
	.db "CANIDT2",0
	.dw VE_HEAD
	.set VE_HEAD=VE_CANIDT2
XT_CANIDT2:
	.dw PFA_DOVARIABLE
PFA_CANIDT2:
	.dw $F2
; ( -- addr ) System Constant
; R( -- )
; Identifier Tag Register 3
VE_CANIDT3:
	.dw $ff07
	.db "CANIDT3",0
	.dw VE_HEAD
	.set VE_HEAD=VE_CANIDT3
XT_CANIDT3:
	.dw PFA_DOVARIABLE
PFA_CANIDT3:
	.dw $F1
; ( -- addr ) System Constant
; R( -- )
; Identifier Tag Register 4
VE_CANIDT4:
	.dw $ff07
	.db "CANIDT4",0
	.dw VE_HEAD
	.set VE_HEAD=VE_CANIDT4
XT_CANIDT4:
	.dw PFA_DOVARIABLE
PFA_CANIDT4:
	.dw $F0
; ( -- addr ) System Constant
; R( -- )
; Enable Interrupt MOb Register 1 (empty)
VE_CANIE1:
	.dw $ff06
	.db "CANIE1"
	.dw VE_HEAD
	.set VE_HEAD=VE_CANIE1
XT_CANIE1:
	.dw PFA_DOVARIABLE
PFA_CANIE1:
	.dw $DF
; ( -- addr ) System Constant
; R( -- )
; Enable Interrupt MOb Register 2
VE_CANIE2:
	.dw $ff06
	.db "CANIE2"
	.dw VE_HEAD
	.set VE_HEAD=VE_CANIE2
XT_CANIE2:
	.dw PFA_DOVARIABLE
PFA_CANIE2:
	.dw $DE
; ( -- addr ) System Constant
; R( -- )
; Message Data Register
VE_CANMSG:
	.dw $ff06
	.db "CANMSG"
	.dw VE_HEAD
	.set VE_HEAD=VE_CANMSG
XT_CANMSG:
	.dw PFA_DOVARIABLE
PFA_CANMSG:
	.dw $FA
; ( -- addr ) System Constant
; R( -- )
; Page MOb Register
VE_CANPAGE:
	.dw $ff07
	.db "CANPAGE",0
	.dw VE_HEAD
	.set VE_HEAD=VE_CANPAGE
XT_CANPAGE:
	.dw PFA_DOVARIABLE
PFA_CANPAGE:
	.dw $ED
; ( -- addr ) System Constant
; R( -- )
; Receive Error Counter Register
VE_CANREC:
	.dw $ff06
	.db "CANREC"
	.dw VE_HEAD
	.set VE_HEAD=VE_CANREC
XT_CANREC:
	.dw PFA_DOVARIABLE
PFA_CANREC:
	.dw $EB
; ( -- addr ) System Constant
; R( -- )
; CAN Status Interrupt MOb Register 1 (empty)
VE_CANSIT1:
	.dw $ff07
	.db "CANSIT1",0
	.dw VE_HEAD
	.set VE_HEAD=VE_CANSIT1
XT_CANSIT1:
	.dw PFA_DOVARIABLE
PFA_CANSIT1:
	.dw $E1
; ( -- addr ) System Constant
; R( -- )
; CAN Status Interrupt MOb Register 2
VE_CANSIT2:
	.dw $ff07
	.db "CANSIT2",0
	.dw VE_HEAD
	.set VE_HEAD=VE_CANSIT2
XT_CANSIT2:
	.dw PFA_DOVARIABLE
PFA_CANSIT2:
	.dw $E0
; ( -- addr ) System Constant
; R( -- )
; Time Stamp Register High
VE_CANSTMH:
	.dw $ff07
	.db "CANSTMH",0
	.dw VE_HEAD
	.set VE_HEAD=VE_CANSTMH
XT_CANSTMH:
	.dw PFA_DOVARIABLE
PFA_CANSTMH:
	.dw $F9
; ( -- addr ) System Constant
; R( -- )
; Time Stamp Register Low
VE_CANSTML:
	.dw $ff07
	.db "CANSTML",0
	.dw VE_HEAD
	.set VE_HEAD=VE_CANSTML
XT_CANSTML:
	.dw PFA_DOVARIABLE
PFA_CANSTML:
	.dw $F8
; ( -- addr ) System Constant
; R( -- )
; MOb Status Register
VE_CANSTMOB:
	.dw $ff08
	.db "CANSTMOB"
	.dw VE_HEAD
	.set VE_HEAD=VE_CANSTMOB
XT_CANSTMOB:
	.dw PFA_DOVARIABLE
PFA_CANSTMOB:
	.dw $EE
; ( -- addr ) System Constant
; R( -- )
; Timer Control Register
VE_CANTCON:
	.dw $ff07
	.db "CANTCON",0
	.dw VE_HEAD
	.set VE_HEAD=VE_CANTCON
XT_CANTCON:
	.dw PFA_DOVARIABLE
PFA_CANTCON:
	.dw $E5
; ( -- addr ) System Constant
; R( -- )
; Transmit Error Counter Register
VE_CANTEC:
	.dw $ff06
	.db "CANTEC"
	.dw VE_HEAD
	.set VE_HEAD=VE_CANTEC
XT_CANTEC:
	.dw PFA_DOVARIABLE
PFA_CANTEC:
	.dw $EA
; ( -- addr ) System Constant
; R( -- )
; Timer Register High
VE_CANTIMH:
	.dw $ff07
	.db "CANTIMH",0
	.dw VE_HEAD
	.set VE_HEAD=VE_CANTIMH
XT_CANTIMH:
	.dw PFA_DOVARIABLE
PFA_CANTIMH:
	.dw $E7
; ( -- addr ) System Constant
; R( -- )
; Timer Register Low
VE_CANTIML:
	.dw $ff07
	.db "CANTIML",0
	.dw VE_HEAD
	.set VE_HEAD=VE_CANTIML
XT_CANTIML:
	.dw PFA_DOVARIABLE
PFA_CANTIML:
	.dw $E6
; ( -- addr ) System Constant
; R( -- )
; TTC Timer Register High
VE_CANTTCH:
	.dw $ff07
	.db "CANTTCH",0
	.dw VE_HEAD
	.set VE_HEAD=VE_CANTTCH
XT_CANTTCH:
	.dw PFA_DOVARIABLE
PFA_CANTTCH:
	.dw $E9
; ( -- addr ) System Constant
; R( -- )
; TTC Timer Register Low
VE_CANTTCL:
	.dw $ff07
	.db "CANTTCL",0
	.dw VE_HEAD
	.set VE_HEAD=VE_CANTTCL
XT_CANTTCL:
	.dw PFA_DOVARIABLE
PFA_CANTTCL:
	.dw $E8

.endif

; ********
.if WANT_CPU == 1
; ********
; ( -- addr ) System Constant
; R( -- )
; 
VE_CLKPR:
	.dw $ff05
	.db "CLKPR",0
	.dw VE_HEAD
	.set VE_HEAD=VE_CLKPR
XT_CLKPR:
	.dw PFA_DOVARIABLE
PFA_CLKPR:
	.dw $61
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
	.dw $3E
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
	.dw $39
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
	.dw $3A
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
	.dw $55
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
	.dw $54
; ( -- addr ) System Constant
; R( -- )
; Oscillator Calibration Value
VE_OSCCAL:
	.dw $ff06
	.db "OSCCAL"
	.dw VE_HEAD
	.set VE_HEAD=VE_OSCCAL
XT_OSCCAL:
	.dw PFA_DOVARIABLE
PFA_OSCCAL:
	.dw $66
; ( -- addr ) System Constant
; R( -- )
; PLL Control And Status Register
VE_PLLCSR:
	.dw $ff06
	.db "PLLCSR"
	.dw VE_HEAD
	.set VE_HEAD=VE_PLLCSR
XT_PLLCSR:
	.dw PFA_DOVARIABLE
PFA_PLLCSR:
	.dw $49
; ( -- addr ) System Constant
; R( -- )
; Power Reduction Register
VE_PRR:
	.dw $ff03
	.db "PRR",0
	.dw VE_HEAD
	.set VE_HEAD=VE_PRR
XT_PRR:
	.dw PFA_DOVARIABLE
PFA_PRR:
	.dw $64
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
	.dw $53
; ( -- addr ) System Constant
; R( -- )
; Stack Pointer High
VE_SPH:
	.dw $ff03
	.db "SPH",0
	.dw VE_HEAD
	.set VE_HEAD=VE_SPH
XT_SPH:
	.dw PFA_DOVARIABLE
PFA_SPH:
	.dw $5E
; ( -- addr ) System Constant
; R( -- )
; Stack Pointer Low
VE_SPL:
	.dw $ff03
	.db "SPL",0
	.dw VE_HEAD
	.set VE_HEAD=VE_SPL
XT_SPL:
	.dw PFA_DOVARIABLE
PFA_SPL:
	.dw $5D
; ( -- addr ) System Constant
; R( -- )
; Store Program Memory Control Register
VE_SPMCSR:
	.dw $ff06
	.db "SPMCSR"
	.dw VE_HEAD
	.set VE_HEAD=VE_SPMCSR
XT_SPMCSR:
	.dw PFA_DOVARIABLE
PFA_SPMCSR:
	.dw $57
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
	.dw $5F

.endif

; ********
.if WANT_DA_CONVERTER == 1
; ********
; ( -- addr ) System Constant
; R( -- )
; DAC Data Register High Byte
VE_DACH:
	.dw $ff04
	.db "DACH"
	.dw VE_HEAD
	.set VE_HEAD=VE_DACH
XT_DACH:
	.dw PFA_DOVARIABLE
PFA_DACH:
	.dw $92
; ( -- addr ) System Constant
; R( -- )
; DAC Data Register Low Byte
VE_DACL:
	.dw $ff04
	.db "DACL"
	.dw VE_HEAD
	.set VE_HEAD=VE_DACL
XT_DACL:
	.dw PFA_DOVARIABLE
PFA_DACL:
	.dw $91
; ( -- addr ) System Constant
; R( -- )
; DAC Control Register
VE_DACON:
	.dw $ff05
	.db "DACON",0
	.dw VE_HEAD
	.set VE_HEAD=VE_DACON
XT_DACON:
	.dw PFA_DOVARIABLE
PFA_DACON:
	.dw $90

.endif

; ********
.if WANT_EEPROM == 1
; ********
; ( -- addr ) System Constant
; R( -- )
; EEPROM Read/Write Access
VE_EEARH:
	.dw $ff05
	.db "EEARH",0
	.dw VE_HEAD
	.set VE_HEAD=VE_EEARH
XT_EEARH:
	.dw PFA_DOVARIABLE
PFA_EEARH:
	.dw $42
; ( -- addr ) System Constant
; R( -- )
; EEPROM Read/Write Access
VE_EEARL:
	.dw $ff05
	.db "EEARL",0
	.dw VE_HEAD
	.set VE_HEAD=VE_EEARL
XT_EEARL:
	.dw PFA_DOVARIABLE
PFA_EEARL:
	.dw $41
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
	.dw $3F
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
	.dw $40

.endif

; ********
.if WANT_EXTERNAL_INTERRUPT == 1
; ********
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
	.dw $69
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
	.dw $3C
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
	.dw $3D
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
	.dw $68
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
	.dw $3B
; ( -- addr ) System Constant
; R( -- )
; Pin Change Mask Register 0
VE_PCMSK0:
	.dw $ff06
	.db "PCMSK0"
	.dw VE_HEAD
	.set VE_HEAD=VE_PCMSK0
XT_PCMSK0:
	.dw PFA_DOVARIABLE
PFA_PCMSK0:
	.dw $6A
; ( -- addr ) System Constant
; R( -- )
; Pin Change Mask Register 1
VE_PCMSK1:
	.dw $ff06
	.db "PCMSK1"
	.dw VE_HEAD
	.set VE_HEAD=VE_PCMSK1
XT_PCMSK1:
	.dw PFA_DOVARIABLE
PFA_PCMSK1:
	.dw $6B
; ( -- addr ) System Constant
; R( -- )
; Pin Change Mask Register 2
VE_PCMSK2:
	.dw $ff06
	.db "PCMSK2"
	.dw VE_HEAD
	.set VE_HEAD=VE_PCMSK2
XT_PCMSK2:
	.dw PFA_DOVARIABLE
PFA_PCMSK2:
	.dw $6C
; ( -- addr ) System Constant
; R( -- )
; Pin Change Mask Register 3
VE_PCMSK3:
	.dw $ff06
	.db "PCMSK3"
	.dw VE_HEAD
	.set VE_HEAD=VE_PCMSK3
XT_PCMSK3:
	.dw PFA_DOVARIABLE
PFA_PCMSK3:
	.dw $6D

.endif

; ********
.if WANT_LINUART == 1
; ********
; ( -- addr ) System Constant
; R( -- )
; LIN Baud Rate High Register
VE_LINBRRH:
	.dw $ff07
	.db "LINBRRH",0
	.dw VE_HEAD
	.set VE_HEAD=VE_LINBRRH
XT_LINBRRH:
	.dw PFA_DOVARIABLE
PFA_LINBRRH:
	.dw $CE
; ( -- addr ) System Constant
; R( -- )
; LIN Baud Rate Low Register
VE_LINBRRL:
	.dw $ff07
	.db "LINBRRL",0
	.dw VE_HEAD
	.set VE_HEAD=VE_LINBRRL
XT_LINBRRL:
	.dw PFA_DOVARIABLE
PFA_LINBRRL:
	.dw $CD
; ( -- addr ) System Constant
; R( -- )
; LIN Bit Timing Register
VE_LINBTR:
	.dw $ff06
	.db "LINBTR"
	.dw VE_HEAD
	.set VE_HEAD=VE_LINBTR
XT_LINBTR:
	.dw PFA_DOVARIABLE
PFA_LINBTR:
	.dw $CC
; ( -- addr ) System Constant
; R( -- )
; LIN Control Register
VE_LINCR:
	.dw $ff05
	.db "LINCR",0
	.dw VE_HEAD
	.set VE_HEAD=VE_LINCR
XT_LINCR:
	.dw PFA_DOVARIABLE
PFA_LINCR:
	.dw $C8
; ( -- addr ) System Constant
; R( -- )
; LIN Data Register
VE_LINDAT:
	.dw $ff06
	.db "LINDAT"
	.dw VE_HEAD
	.set VE_HEAD=VE_LINDAT
XT_LINDAT:
	.dw PFA_DOVARIABLE
PFA_LINDAT:
	.dw $D2
; ( -- addr ) System Constant
; R( -- )
; LIN Data Length Register
VE_LINDLR:
	.dw $ff06
	.db "LINDLR"
	.dw VE_HEAD
	.set VE_HEAD=VE_LINDLR
XT_LINDLR:
	.dw PFA_DOVARIABLE
PFA_LINDLR:
	.dw $CF
; ( -- addr ) System Constant
; R( -- )
; LIN Enable Interrupt Register
VE_LINENIR:
	.dw $ff07
	.db "LINENIR",0
	.dw VE_HEAD
	.set VE_HEAD=VE_LINENIR
XT_LINENIR:
	.dw PFA_DOVARIABLE
PFA_LINENIR:
	.dw $CA
; ( -- addr ) System Constant
; R( -- )
; LIN Error Register
VE_LINERR:
	.dw $ff06
	.db "LINERR"
	.dw VE_HEAD
	.set VE_HEAD=VE_LINERR
XT_LINERR:
	.dw PFA_DOVARIABLE
PFA_LINERR:
	.dw $CB
; ( -- addr ) System Constant
; R( -- )
; LIN Identifier Register
VE_LINIDR:
	.dw $ff06
	.db "LINIDR"
	.dw VE_HEAD
	.set VE_HEAD=VE_LINIDR
XT_LINIDR:
	.dw PFA_DOVARIABLE
PFA_LINIDR:
	.dw $D0
; ( -- addr ) System Constant
; R( -- )
; LIN Data Buffer Selection Register
VE_LINSEL:
	.dw $ff06
	.db "LINSEL"
	.dw VE_HEAD
	.set VE_HEAD=VE_LINSEL
XT_LINSEL:
	.dw PFA_DOVARIABLE
PFA_LINSEL:
	.dw $D1
; ( -- addr ) System Constant
; R( -- )
; LIN Status and Interrupt Register
VE_LINSIR:
	.dw $ff06
	.db "LINSIR"
	.dw VE_HEAD
	.set VE_HEAD=VE_LINSIR
XT_LINSIR:
	.dw PFA_DOVARIABLE
PFA_LINSIR:
	.dw $C9

.endif

; ********
.if WANT_PORTB == 1
; ********
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
	.dw $24
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
	.dw $23
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
	.dw $25

.endif

; ********
.if WANT_PORTC == 1
; ********
; ( -- addr ) System Constant
; R( -- )
; Port C Data Direction Register
VE_DDRC:
	.dw $ff04
	.db "DDRC"
	.dw VE_HEAD
	.set VE_HEAD=VE_DDRC
XT_DDRC:
	.dw PFA_DOVARIABLE
PFA_DDRC:
	.dw $27
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
	.dw $26
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
	.dw $28

.endif

; ********
.if WANT_PORTD == 1
; ********
; ( -- addr ) System Constant
; R( -- )
; Port D Data Direction Register
VE_DDRD:
	.dw $ff04
	.db "DDRD"
	.dw VE_HEAD
	.set VE_HEAD=VE_DDRD
XT_DDRD:
	.dw PFA_DOVARIABLE
PFA_DDRD:
	.dw $2A
; ( -- addr ) System Constant
; R( -- )
; Port D Input Pins
VE_PIND:
	.dw $ff04
	.db "PIND"
	.dw VE_HEAD
	.set VE_HEAD=VE_PIND
XT_PIND:
	.dw PFA_DOVARIABLE
PFA_PIND:
	.dw $29
; ( -- addr ) System Constant
; R( -- )
; Port D Data Register
VE_PORTD:
	.dw $ff05
	.db "PORTD",0
	.dw VE_HEAD
	.set VE_HEAD=VE_PORTD
XT_PORTD:
	.dw PFA_DOVARIABLE
PFA_PORTD:
	.dw $2B

.endif

; ********
.if WANT_PORTE == 1
; ********
; ( -- addr ) System Constant
; R( -- )
; Port E Data Direction Register
VE_DDRE:
	.dw $ff04
	.db "DDRE"
	.dw VE_HEAD
	.set VE_HEAD=VE_DDRE
XT_DDRE:
	.dw PFA_DOVARIABLE
PFA_DDRE:
	.dw $2D
; ( -- addr ) System Constant
; R( -- )
; Port E Input Pins
VE_PINE:
	.dw $ff04
	.db "PINE"
	.dw VE_HEAD
	.set VE_HEAD=VE_PINE
XT_PINE:
	.dw PFA_DOVARIABLE
PFA_PINE:
	.dw $2C
; ( -- addr ) System Constant
; R( -- )
; Port E Data Register
VE_PORTE:
	.dw $ff05
	.db "PORTE",0
	.dw VE_HEAD
	.set VE_HEAD=VE_PORTE
XT_PORTE:
	.dw PFA_DOVARIABLE
PFA_PORTE:
	.dw $2E

.endif

; ********
.if WANT_PSC == 1
; ********
; ( -- addr ) System Constant
; R( -- )
; PSC Configuration Register
VE_PCNF:
	.dw $ff04
	.db "PCNF"
	.dw VE_HEAD
	.set VE_HEAD=VE_PCNF
XT_PCNF:
	.dw PFA_DOVARIABLE
PFA_PCNF:
	.dw $B5
; ( -- addr ) System Constant
; R( -- )
; PSC Control Register
VE_PCTL:
	.dw $ff04
	.db "PCTL"
	.dw VE_HEAD
	.set VE_HEAD=VE_PCTL
XT_PCTL:
	.dw PFA_DOVARIABLE
PFA_PCTL:
	.dw $B7
; ( -- addr ) System Constant
; R( -- )
; PSC Interrupt Flag Register
VE_PIFR:
	.dw $ff04
	.db "PIFR"
	.dw VE_HEAD
	.set VE_HEAD=VE_PIFR
XT_PIFR:
	.dw PFA_DOVARIABLE
PFA_PIFR:
	.dw $BC
; ( -- addr ) System Constant
; R( -- )
; PSC Interrupt Mask Register
VE_PIM:
	.dw $ff03
	.db "PIM",0
	.dw VE_HEAD
	.set VE_HEAD=VE_PIM
XT_PIM:
	.dw PFA_DOVARIABLE
PFA_PIM:
	.dw $BB
; ( -- addr ) System Constant
; R( -- )
; PSC Module 0 Input Control Register
VE_PMIC0:
	.dw $ff05
	.db "PMIC0",0
	.dw VE_HEAD
	.set VE_HEAD=VE_PMIC0
XT_PMIC0:
	.dw PFA_DOVARIABLE
PFA_PMIC0:
	.dw $B8
; ( -- addr ) System Constant
; R( -- )
; PSC Module 1 Input Control Register
VE_PMIC1:
	.dw $ff05
	.db "PMIC1",0
	.dw VE_HEAD
	.set VE_HEAD=VE_PMIC1
XT_PMIC1:
	.dw PFA_DOVARIABLE
PFA_PMIC1:
	.dw $B9
; ( -- addr ) System Constant
; R( -- )
; PSC Module 2 Input Control Register
VE_PMIC2:
	.dw $ff05
	.db "PMIC2",0
	.dw VE_HEAD
	.set VE_HEAD=VE_PMIC2
XT_PMIC2:
	.dw PFA_DOVARIABLE
PFA_PMIC2:
	.dw $BA
; ( -- addr ) System Constant
; R( -- )
; PSC Output Configuration
VE_POC:
	.dw $ff03
	.db "POC",0
	.dw VE_HEAD
	.set VE_HEAD=VE_POC
XT_POC:
	.dw PFA_DOVARIABLE
PFA_POC:
	.dw $B6
; ( -- addr ) System Constant
; R( -- )
; PSC Module 0 Output Compare RA Register High
VE_POCR0RAH:
	.dw $ff08
	.db "POCR0RAH"
	.dw VE_HEAD
	.set VE_HEAD=VE_POCR0RAH
XT_POCR0RAH:
	.dw PFA_DOVARIABLE
PFA_POCR0RAH:
	.dw $A3
; ( -- addr ) System Constant
; R( -- )
; PSC Module 0 Output Compare RA Register Low
VE_POCR0RAL:
	.dw $ff08
	.db "POCR0RAL"
	.dw VE_HEAD
	.set VE_HEAD=VE_POCR0RAL
XT_POCR0RAL:
	.dw PFA_DOVARIABLE
PFA_POCR0RAL:
	.dw $A2
; ( -- addr ) System Constant
; R( -- )
; PSC Module 0 Output Compare SA Register High
VE_POCR0SAH:
	.dw $ff08
	.db "POCR0SAH"
	.dw VE_HEAD
	.set VE_HEAD=VE_POCR0SAH
XT_POCR0SAH:
	.dw PFA_DOVARIABLE
PFA_POCR0SAH:
	.dw $A1
; ( -- addr ) System Constant
; R( -- )
; PSC Module 0 Output Compare SA Register Low
VE_POCR0SAL:
	.dw $ff08
	.db "POCR0SAL"
	.dw VE_HEAD
	.set VE_HEAD=VE_POCR0SAL
XT_POCR0SAL:
	.dw PFA_DOVARIABLE
PFA_POCR0SAL:
	.dw $A0
; ( -- addr ) System Constant
; R( -- )
; PSC Output Compare SB Register High
VE_POCR0SBH:
	.dw $ff08
	.db "POCR0SBH"
	.dw VE_HEAD
	.set VE_HEAD=VE_POCR0SBH
XT_POCR0SBH:
	.dw PFA_DOVARIABLE
PFA_POCR0SBH:
	.dw $A5
; ( -- addr ) System Constant
; R( -- )
; PSC Module 0 Output Compare SB Register Low
VE_POCR0SBL:
	.dw $ff08
	.db "POCR0SBL"
	.dw VE_HEAD
	.set VE_HEAD=VE_POCR0SBL
XT_POCR0SBL:
	.dw PFA_DOVARIABLE
PFA_POCR0SBL:
	.dw $A4
; ( -- addr ) System Constant
; R( -- )
; PSC Module 1 Output Compare RA Register High
VE_POCR1RAH:
	.dw $ff08
	.db "POCR1RAH"
	.dw VE_HEAD
	.set VE_HEAD=VE_POCR1RAH
XT_POCR1RAH:
	.dw PFA_DOVARIABLE
PFA_POCR1RAH:
	.dw $A9
; ( -- addr ) System Constant
; R( -- )
; PSC Module 1 Output Compare RA Register Low
VE_POCR1RAL:
	.dw $ff08
	.db "POCR1RAL"
	.dw VE_HEAD
	.set VE_HEAD=VE_POCR1RAL
XT_POCR1RAL:
	.dw PFA_DOVARIABLE
PFA_POCR1RAL:
	.dw $A8
; ( -- addr ) System Constant
; R( -- )
; PSC Output Compare SA Register High
VE_POCR1SAH:
	.dw $ff08
	.db "POCR1SAH"
	.dw VE_HEAD
	.set VE_HEAD=VE_POCR1SAH
XT_POCR1SAH:
	.dw PFA_DOVARIABLE
PFA_POCR1SAH:
	.dw $A7
; ( -- addr ) System Constant
; R( -- )
; PSC Module 1 Output Compare SA Register Low
VE_POCR1SAL:
	.dw $ff08
	.db "POCR1SAL"
	.dw VE_HEAD
	.set VE_HEAD=VE_POCR1SAL
XT_POCR1SAL:
	.dw PFA_DOVARIABLE
PFA_POCR1SAL:
	.dw $A6
; ( -- addr ) System Constant
; R( -- )
; PSC Module 1 Output Compare SB Register High
VE_POCR1SBH:
	.dw $ff08
	.db "POCR1SBH"
	.dw VE_HEAD
	.set VE_HEAD=VE_POCR1SBH
XT_POCR1SBH:
	.dw PFA_DOVARIABLE
PFA_POCR1SBH:
	.dw $AB
; ( -- addr ) System Constant
; R( -- )
; PSC Module 1 Output Compare SB Register Low
VE_POCR1SBL:
	.dw $ff08
	.db "POCR1SBL"
	.dw VE_HEAD
	.set VE_HEAD=VE_POCR1SBL
XT_POCR1SBL:
	.dw PFA_DOVARIABLE
PFA_POCR1SBL:
	.dw $AA
; ( -- addr ) System Constant
; R( -- )
; PSC Module 2 Output Compare RA Register High
VE_POCR2RAH:
	.dw $ff08
	.db "POCR2RAH"
	.dw VE_HEAD
	.set VE_HEAD=VE_POCR2RAH
XT_POCR2RAH:
	.dw PFA_DOVARIABLE
PFA_POCR2RAH:
	.dw $AF
; ( -- addr ) System Constant
; R( -- )
; PSC Module 2 Output Compare RA Register Low
VE_POCR2RAL:
	.dw $ff08
	.db "POCR2RAL"
	.dw VE_HEAD
	.set VE_HEAD=VE_POCR2RAL
XT_POCR2RAL:
	.dw PFA_DOVARIABLE
PFA_POCR2RAL:
	.dw $AE
; ( -- addr ) System Constant
; R( -- )
; PSC Module 2 Output Compare SA Register High
VE_POCR2SAH:
	.dw $ff08
	.db "POCR2SAH"
	.dw VE_HEAD
	.set VE_HEAD=VE_POCR2SAH
XT_POCR2SAH:
	.dw PFA_DOVARIABLE
PFA_POCR2SAH:
	.dw $AD
; ( -- addr ) System Constant
; R( -- )
; PSC Module 2 Output Compare SA Register Low
VE_POCR2SAL:
	.dw $ff08
	.db "POCR2SAL"
	.dw VE_HEAD
	.set VE_HEAD=VE_POCR2SAL
XT_POCR2SAL:
	.dw PFA_DOVARIABLE
PFA_POCR2SAL:
	.dw $AC
; ( -- addr ) System Constant
; R( -- )
; PSC Module 2 Output Compare SB Register High
VE_POCR2SBH:
	.dw $ff08
	.db "POCR2SBH"
	.dw VE_HEAD
	.set VE_HEAD=VE_POCR2SBH
XT_POCR2SBH:
	.dw PFA_DOVARIABLE
PFA_POCR2SBH:
	.dw $B1
; ( -- addr ) System Constant
; R( -- )
; PSC Module 2 Output Compare SB Register Low
VE_POCR2SBL:
	.dw $ff08
	.db "POCR2SBL"
	.dw VE_HEAD
	.set VE_HEAD=VE_POCR2SBL
XT_POCR2SBL:
	.dw PFA_DOVARIABLE
PFA_POCR2SBL:
	.dw $B0
; ( -- addr ) System Constant
; R( -- )
; PSC Output Compare RB Register High
VE_POCR_RBH:
	.dw $ff08
	.db "POCR_RBH"
	.dw VE_HEAD
	.set VE_HEAD=VE_POCR_RBH
XT_POCR_RBH:
	.dw PFA_DOVARIABLE
PFA_POCR_RBH:
	.dw $B3
; ( -- addr ) System Constant
; R( -- )
; PSC Output Compare RB Register Low
VE_POCR_RBL:
	.dw $ff08
	.db "POCR_RBL"
	.dw VE_HEAD
	.set VE_HEAD=VE_POCR_RBL
XT_POCR_RBL:
	.dw PFA_DOVARIABLE
PFA_POCR_RBL:
	.dw $B2
; ( -- addr ) System Constant
; R( -- )
; PSC Synchro Configuration
VE_PSYNC:
	.dw $ff05
	.db "PSYNC",0
	.dw VE_HEAD
	.set VE_HEAD=VE_PSYNC
XT_PSYNC:
	.dw PFA_DOVARIABLE
PFA_PSYNC:
	.dw $B4

.endif

; ********
.if WANT_SPI == 1
; ********
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
	.dw $4C
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
	.dw $4E
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
	.dw $4D

.endif

; ********
.if WANT_TIMER_COUNTER_0 == 1
; ********
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
	.dw $43
; ( -- addr ) System Constant
; R( -- )
; Timer/Counter0 Output Compare Register
VE_OCR0A:
	.dw $ff05
	.db "OCR0A",0
	.dw VE_HEAD
	.set VE_HEAD=VE_OCR0A
XT_OCR0A:
	.dw PFA_DOVARIABLE
PFA_OCR0A:
	.dw $47
; ( -- addr ) System Constant
; R( -- )
; Timer/Counter0 Output Compare Register
VE_OCR0B:
	.dw $ff05
	.db "OCR0B",0
	.dw VE_HEAD
	.set VE_HEAD=VE_OCR0B
XT_OCR0B:
	.dw PFA_DOVARIABLE
PFA_OCR0B:
	.dw $48
; ( -- addr ) System Constant
; R( -- )
; Timer/Counter  Control Register A
VE_TCCR0A:
	.dw $ff06
	.db "TCCR0A"
	.dw VE_HEAD
	.set VE_HEAD=VE_TCCR0A
XT_TCCR0A:
	.dw PFA_DOVARIABLE
PFA_TCCR0A:
	.dw $44
; ( -- addr ) System Constant
; R( -- )
; Timer/Counter Control Register B
VE_TCCR0B:
	.dw $ff06
	.db "TCCR0B"
	.dw VE_HEAD
	.set VE_HEAD=VE_TCCR0B
XT_TCCR0B:
	.dw PFA_DOVARIABLE
PFA_TCCR0B:
	.dw $45
; ( -- addr ) System Constant
; R( -- )
; Timer/Counter0
VE_TCNT0:
	.dw $ff05
	.db "TCNT0",0
	.dw VE_HEAD
	.set VE_HEAD=VE_TCNT0
XT_TCNT0:
	.dw PFA_DOVARIABLE
PFA_TCNT0:
	.dw $46
; ( -- addr ) System Constant
; R( -- )
; Timer/Counter0 Interrupt Flag register
VE_TIFR0:
	.dw $ff05
	.db "TIFR0",0
	.dw VE_HEAD
	.set VE_HEAD=VE_TIFR0
XT_TIFR0:
	.dw PFA_DOVARIABLE
PFA_TIFR0:
	.dw $35
; ( -- addr ) System Constant
; R( -- )
; Timer/Counter0 Interrupt Mask Register
VE_TIMSK0:
	.dw $ff06
	.db "TIMSK0"
	.dw VE_HEAD
	.set VE_HEAD=VE_TIMSK0
XT_TIMSK0:
	.dw PFA_DOVARIABLE
PFA_TIMSK0:
	.dw $6E

.endif

; ********
.if WANT_TIMER_COUNTER_1 == 1
; ********
; ( -- addr ) System Constant
; R( -- )
; Timer/Counter1 Input Capture Register High Byte
VE_ICR1H:
	.dw $ff05
	.db "ICR1H",0
	.dw VE_HEAD
	.set VE_HEAD=VE_ICR1H
XT_ICR1H:
	.dw PFA_DOVARIABLE
PFA_ICR1H:
	.dw $87
; ( -- addr ) System Constant
; R( -- )
; Timer/Counter1 Input Capture Register Low Byte
VE_ICR1L:
	.dw $ff05
	.db "ICR1L",0
	.dw VE_HEAD
	.set VE_HEAD=VE_ICR1L
XT_ICR1L:
	.dw PFA_DOVARIABLE
PFA_ICR1L:
	.dw $86
; ( -- addr ) System Constant
; R( -- )
; Timer/Counter1 Output Compare Register High Byte
VE_OCR1AH:
	.dw $ff06
	.db "OCR1AH"
	.dw VE_HEAD
	.set VE_HEAD=VE_OCR1AH
XT_OCR1AH:
	.dw PFA_DOVARIABLE
PFA_OCR1AH:
	.dw $89
; ( -- addr ) System Constant
; R( -- )
; Timer/Counter1 Output Compare Register Low Byte
VE_OCR1AL:
	.dw $ff06
	.db "OCR1AL"
	.dw VE_HEAD
	.set VE_HEAD=VE_OCR1AL
XT_OCR1AL:
	.dw PFA_DOVARIABLE
PFA_OCR1AL:
	.dw $88
; ( -- addr ) System Constant
; R( -- )
; Timer/Counter1 Output Compare Register High Byte
VE_OCR1BH:
	.dw $ff06
	.db "OCR1BH"
	.dw VE_HEAD
	.set VE_HEAD=VE_OCR1BH
XT_OCR1BH:
	.dw PFA_DOVARIABLE
PFA_OCR1BH:
	.dw $8B
; ( -- addr ) System Constant
; R( -- )
; Timer/Counter1 Output Compare Register Low Byte
VE_OCR1BL:
	.dw $ff06
	.db "OCR1BL"
	.dw VE_HEAD
	.set VE_HEAD=VE_OCR1BL
XT_OCR1BL:
	.dw PFA_DOVARIABLE
PFA_OCR1BL:
	.dw $8A
; ( -- addr ) System Constant
; R( -- )
; Timer/Counter1 Control Register A
VE_TCCR1A:
	.dw $ff06
	.db "TCCR1A"
	.dw VE_HEAD
	.set VE_HEAD=VE_TCCR1A
XT_TCCR1A:
	.dw PFA_DOVARIABLE
PFA_TCCR1A:
	.dw $80
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
	.dw $81
; ( -- addr ) System Constant
; R( -- )
; Timer/Counter1 Control Register C
VE_TCCR1C:
	.dw $ff06
	.db "TCCR1C"
	.dw VE_HEAD
	.set VE_HEAD=VE_TCCR1C
XT_TCCR1C:
	.dw PFA_DOVARIABLE
PFA_TCCR1C:
	.dw $82
; ( -- addr ) System Constant
; R( -- )
; Timer/Counter1 High Byte
VE_TCNT1H:
	.dw $ff06
	.db "TCNT1H"
	.dw VE_HEAD
	.set VE_HEAD=VE_TCNT1H
XT_TCNT1H:
	.dw PFA_DOVARIABLE
PFA_TCNT1H:
	.dw $85
; ( -- addr ) System Constant
; R( -- )
; Timer/Counter1 Low Byte
VE_TCNT1L:
	.dw $ff06
	.db "TCNT1L"
	.dw VE_HEAD
	.set VE_HEAD=VE_TCNT1L
XT_TCNT1L:
	.dw PFA_DOVARIABLE
PFA_TCNT1L:
	.dw $84
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
	.dw $36
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
	.dw $6F

.endif

; ********
.if WANT_WATCHDOG == 1
; ********
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
	.dw $60

.endif
