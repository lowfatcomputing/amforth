;***************************************************************************
;* A P P L I C A T I O N   N O T E   F O R   T H E   A V R   F A M I L Y
;* 
;* Number            : AVR000
;* File Name         : "m168def.inc" 
;* Title             : Register/Bit Definitions for the ATMEGA168 
;* Date              : 15.01.2004
;* Version           : 
;* Support E-mail    : avr@atmel.com
;* Target MCU        : ATMEGA168 
;* 
;* DESCRIPTION
;* When including this file in the assembly program file, all I/O register 
;* names and I/O register bit names appearing in the data book can be used.
;* In addition, the six registers forming the three data pointers X, Y and 
;* Z have been assigned names XL - ZH. Highest RAM address for Internal 
;* SRAM is also defined 
;* 
;* The Register names are represented by their hexadecimal address.
;* 
;* The Register Bit names are represented by their bit number (0-7).
;* 
;* Please observe the difference in using the bit names with instructions
;* such as "sbr"/"cbr" (set/clear bit in register) and "sbrs"/"sbrc" 
;* (skip if bit in register set/cleared). The following example illustrates
;* this:
;* 
;* in    r16,PORTB             ;read PORTB latch
;* sbr   r16,(1<<PB6)+(1<<PB5) ;set PB6 and PB5 (use masks, not bit#)
;* out   PORTB,r16             ;output to PORTB
;* 
;* in    r16,TIFR              ;read the Timer Interrupt Flag Register
;* sbrc  r16,TOV0              ;test the overflow flag (use bit#)
;* rjmp  TOV0_is_set           ;jump if set
;* ...                         ;otherwise do something else
;***************************************************************************

;***** SPECIFY DEVICE ******************************************************
.device ATmega168

;***** MEMORY MAPPED I/O REGISTER DEFINITIONS (&FF-$60) ********************
.equ  UDR0       =$C6
.equ  UBRR0H     =$C5
.equ  UBRR0L     =$C4
.equ  UCSR0C     =$C2
.equ  UCSR0B     =$C1
.equ  UCSR0A     =$C0
.equ  TWAMR      =$BD
.equ  TWCR       =$BC
.equ  TWDR       =$BB
.equ  TWAR       =$BA
.equ  TWSR       =$B9
.equ  TWBR       =$B8
.equ  ASSR       =$B6
.equ  OCR2B      =$B4
.equ  OCR2A      =$B3
.equ  TCNT2      =$B2
.equ  TCCR2B     =$B1
.equ  TCCR2A     =$B0
.equ  OCR1BH     =$8B
.equ  OCR1BL     =$8A
.equ  OCR1AH     =$89
.equ  OCR1AL     =$88
.equ  ICR1H      =$87
.equ  ICR1L      =$86
.equ  TCNT1H     =$85
.equ  TCNT1L     =$84
.equ  TCCR1C     =$82
.equ  TCCR1B     =$81
.equ  TCCR1A     =$80
.equ  DIDR1      =$7F
.equ  DIDR0      =$7E
.equ  ADMUX      =$7C
.equ  ADCSRB     =$7B
.equ  ADCSRA     =$7A
.equ  ADCH       =$79
.equ  ADCL       =$78
.equ  TIMSK2     =$70
.equ  TIMSK1     =$6F
.equ  TIMSK0     =$6E
.equ  PCMSK2     =$6D
.equ  PCMSK1     =$6C
.equ  PCMSK0     =$6B
.equ  EICRA      =$69
.equ  PCICR      =$68
.equ  OSCCAL     =$66
.equ  PRR        =$64
.equ  CLKPR      =$61
.equ  WDTCSR     =$60

;***** I/O REGISTER DEFINITIONS ($3F-$00) **********************************
.equ  SREG       =$3F
.equ  SPH        =$3E
.equ  SPL        =$3D
.equ  SPMCSR     =$37
.equ  MCUCR      =$35
.equ  MCUSR      =$34
.equ  SMCR       =$33
.equ  MONDR      =$31
.equ  ACSR       =$30
.equ  SPDR       =$2E
.equ  SPSR       =$2D
.equ  SPCR       =$2c
.equ  GPIOR2     =$2B
.equ  GPIOR1     =$2A
.equ  OCR0B      =$28
.equ  OCR0A      =$27
.equ  TCNT0      =$26
.equ  TCCR0B     =$25
.equ  TCCR0A     =$24
.equ  GTCCR      =$23
.equ  EEARH      =$22
.equ  EEARL      =$21
.equ  EEDR       =$20
.equ  EECR       =$1F
.equ  GPIOR0     =$1E
.equ  EIMSK      =$1D
.equ  EIFR       =$1C
.equ  PCIFR      =$1B
.equ  TIFR2      =$17
.equ  TIFR1      =$16
.equ  TIFR0      =$15
.equ  PORTD      =$0B
.equ  DDRD       =$0A
.equ  PIND       =$09
.equ  PORTC      =$08
.equ  DDRC       =$07
.equ  PINC       =$06
.equ  PORTB      =$05
.equ  DDRB       =$04
.equ  PINB       =$03


;***** BIT DEFINITIONS *****************************************************

;**********USART0*********************
;UDR0:
;UCSR0A:
.equ  RXC0       =7
.equ  TXC0       =6
.equ  UDRE0      =5
.equ  FE0        =4
.equ  DOR0       =3
.equ  UPE0       =2
.equ  U2X0       =1
.equ  MPCM0      =0
;UCSR0B:
.equ  RXCIE0     =7
.equ  TXCIE0     =6
.equ  UDRIE0     =5
.equ  RXEN0      =4
.equ  TXEN0      =3
.equ  UCSZ02     =2
.equ  RXB80      =1
.equ  TXB80      =0
;UCSR0C:
.equ  UMSEL01    =7
.equ  UMSEL00    =6
.equ  UPM01      =5
.equ  UPM00      =4
.equ  USBS0      =3
.equ  UCSZ01     =2
.equ  UCSZ00     =1
.equ  UCPOL0     =0

;**********TWI************************

;TWCR:
.equ  TWINT      =7
.equ  TWEA       =6
.equ  TWSTA      =5
.equ  TWSTO      =4
.equ  TWWC       =3
.equ  TWEN       =2
.equ  TWIE       =0
;TWSR:
.equ  TWS7       =7
.equ  TWS6       =6
.equ  TWS5       =5
.equ  TWS4       =4
.equ  TWS3       =3
.equ  TWPS1      =1
.equ  TWPS0      =0

;TWAR:
.equ  TWA6       =7
.equ  TWA5       =6
.equ  TWA4       =5
.equ  TWA3       =4
.equ  TWA2       =3
.equ  TWA1       =2
.equ  TWA0       =1
.equ  TWGCE      =0

;**********TIMER_COUNTER_1************
;TIMSK1:
.equ  ICIE1      =5
.equ  OCIE1B     =2
.equ  OCIE1A     =1
.equ  TOIE1      =0
;TIFR1:
.equ  ICF1       =5
.equ  OCF1B      =2
.equ  OCF1A      =1
.equ  TOV1       =0
;TCCR1A:
.equ  COM1A1     =7
.equ  COM1A0     =6
.equ  COM1B1     =5
.equ  COM1B0     =4
.equ  WGM11      =1
.equ  WGM10      =0
;TCCR1B:
.equ  ICNC1      =7
.equ  ICES1      =6
.equ  WGM13      =4
.equ  WGM12      =3
.equ  CS12       =2
.equ  CS11       =1
.equ  CS10       =0
;TCCR1C:
.equ  FOC1A      =7
.equ  FOC1B      =6

;**********TIMER_COUNTER_2************
;TIMSK2:
.equ  OCIE2B     =2
.equ  OCIE2A     =1
.equ  TOIE2A     =0
;TIFR2:
.equ  OCF2B      =2
.equ  OCF2A      =1
.equ  TOV2       =0
;TCCR2A:
.equ  COM2A1     =7
.equ  COM2A0     =6
.equ  COM2B1     =5
.equ  COM2B0     =4
.equ  WGM21      =1
.equ  WGM20      =0
;TCCR2B:
.equ  FOC2A      =7
.equ  FOC2B      =6
.equ  WGM22      =3
.equ  CS22       =2
.equ  CS21       =1
.equ  CS20       =0
;ASSR:
.equ  EXCLK      =6
.equ  AS2        =5
.equ  TCN2UB     =4
.equ  OCR2AUB    =3
.equ  OCR2BUB    =2
.equ  TCR2AUB    =1
.equ  TCR2BUB    =0
;GTCCR:
.equ  PSRASY     =1

;**********AD_CONVERTER***************
;ADMUX:
.equ  REFS1      =7
.equ  REFS0      =6
.equ  ADLAR      =5
.equ  MUX3       =3
.equ  MUX2       =2
.equ  MUX1       =1
.equ  MUX0       =0
;ADCH:
.equ  ADCH7      =7
.equ  ADCH6      =6
.equ  ADCH5      =5
.equ  ADCH4      =4
.equ  ADCH3      =3
.equ  ADCH2      =2
.equ  ADCH1      =1
.equ  ADCH0      =0
;ADCL:
.equ  ADCL7      =7
.equ  ADCL6      =6
.equ  ADCL5      =5
.equ  ADCL4      =4
.equ  ADCL3      =3
.equ  ADCL2      =2
.equ  ADCL1      =1
.equ  ADCL0      =0
;ADCSRA:
.equ  ADEN       =7
.equ  ADSC       =6
.equ  ADATE      =5
.equ  ADIF       =4
.equ  ADIE       =3
.equ  ADPS2      =2
.equ  ADPS1      =1
.equ  ADPS0      =0
;ADCSRB:
.equ  ACME       =6
.equ  ATDS2      =2
.equ  ADTS1      =1
.equ  ADTS0      =0
;DIDR0:
.equ  ADC5D      =5
.equ  ADC4D      =4
.equ  ADC3D      =3
.equ  ADC2D      =2
.equ  ADC1D      =1
.equ  ADC0D      =0

;**********ANALOG_COMPARATOR**********
;ACSR:
.equ  ACD        =7
.equ  ACBG       =6
.equ  ACO        =5
.equ  ACI        =4
.equ  ACIE       =3
.equ  ACIC       =2
.equ  ACIS1      =1
.equ  ACIS0      =0
;DIDR1:
.equ  AIN1D      =1
.equ  AIN0D      =0

;**********PORTB**********************
;PORTB:
.equ  PORTB7     =7
.equ  PORTB6     =6
.equ  PORTB5     =5
.equ  PORTB4     =4
.equ  PORTB3     =3
.equ  PORTB2     =2
.equ  PORTB1     =1
.equ  PORTB0     =0
;DDRB:
.equ  DDRB7      =7
.equ  DDRB6      =6
.equ  DDRB5      =5
.equ  DDRB4      =4
.equ  DDRB3      =3
.equ  DDRB2      =2
.equ  DDRB1      =1
.equ  DDRB0      =0
;PINB:
.equ  PINB7      =7
.equ  PINB6      =6
.equ  PINB5      =5
.equ  PINB4      =4
.equ  PINB3      =3
.equ  PINB2      =2
.equ  PINB1      =1
.equ  PINB0      =0

;**********PORTC**********************
;PORTC:
.equ  PORTC6     =6
.equ  PORTC5     =5
.equ  PORTC4     =4
.equ  PORTC3     =3
.equ  PORTC2     =2
.equ  PORTC1     =1
.equ  PORTC0     =0
;DDRC:
.equ  DDRC6      =6
.equ  DDRC5      =5
.equ  DDRC4      =4
.equ  DDRC3      =3
.equ  DDRC2      =2
.equ  DDRC1      =1
.equ  DDRC0      =0
;PINC:
.equ  PINC6      =6
.equ  PINC5      =5
.equ  PINC4      =4
.equ  PINC3      =3
.equ  PINC2      =2
.equ  PINC1      =1
.equ  PINC0      =0

;**********PORTD**********************
;PORTD:
.equ  PORTD7     =7
.equ  PORTD6     =6
.equ  PORTD5     =5
.equ  PORTD4     =4
.equ  PORTD3     =3
.equ  PORTD2     =2
.equ  PORTD1     =1
.equ  PORTD0     =0
;DDRD:
.equ  DDRD7      =7
.equ  DDRD6      =6
.equ  DDRD5      =5
.equ  DDRD4      =4
.equ  DDRD3      =3
.equ  DDRD2      =2
.equ  DDRD1      =1
.equ  DDRD0      =0
;PIND:
.equ  PIND7      =7
.equ  PIND6      =6
.equ  PIND5      =5
.equ  PIND4      =4
.equ  PIND3      =3
.equ  PIND2      =2
.equ  PIND1      =1
.equ  PIND0      =0

;**********TIMER_COUNTER_0************
;OCR0B:
;OCR0A:
;TCNT0:
;TCCR0B:
.equ  FOC0A      =7
.equ  FOC0B      =6
.equ  WGM02      =3
.equ  CS02       =2
.equ  CS01       =1
.equ  CS00       =0
;TCCR0A:
.equ  COM0A1     =7
.equ  COM0A0     =6
.equ  COM0B1     =5
.equ  COM0B0     =4
.equ  WGM01      =1
.equ  WGM00      =0
;TIMSK0:
.equ  OCIE0B     =2
.equ  OCIE0A     =1
.equ  TOIE0      =0
;TIFR0:
.equ  OCF0B      =2
.equ  OCF0A      =1
.equ  TOV0       =0
;GTCCR:
.equ  TSM        =7
.equ  PSRSYNC    =0

;**********EXTERNAL_INTERRUPT*********
;EICRA:
.equ  ISC11      =3
.equ  ISC10      =2
.equ  ISC01      =1
.equ  ISC00      =0
;EIMSK:
.equ  INT1       =1
.equ  INT0       =0
;EIFR:
.equ  INTF1      =1
.equ  INTF0      =0
;PCMSK2:
.equ  PCINT23    =7
.equ  PCINT22    =6
.equ  PCINT21    =5
.equ  PCINT20    =4
.equ  PCINT19    =3
.equ  PCINT18    =2
.equ  PCINT17    =1
.equ  PCINT16    =0
;PCMSK1:
.equ  PCINT14    =6
.equ  PCINT13    =5
.equ  PCINT12    =4
.equ  PCINT11    =3
.equ  PCINT10    =2
.equ  PCINT9     =1
.equ  PCINT8     =0
;PCMSK0:
.equ  PCINT7     =7
.equ  PCINT6     =6
.equ  PCINT5     =5
.equ  PCINT4     =4
.equ  PCINT3     =3
.equ  PCINT2     =2
.equ  PCINT1     =1
.equ  PCINT0     =0
;PCIFR:
.equ  PCIF2      =2
.equ  PCIF1      =1
.equ  PCIF0      =0

;**********SPI************************
;SPSR:
.equ  SPIF       =7
.equ  WCOL       =6
.equ  SPI2X      =0
;SPCR:
.equ  SPIE       =7
.equ  SPE        =6
.equ  DORD       =5
.equ  MSTR       =4
.equ  CPOL       =3
.equ  CPHA       =2
.equ  SPR1       =1
.equ  SPR0       =0

;**********CPU************************
;PCICR:
.equ  PCIE2      =2
.equ  PCIE1      =1
.equ  PCIE0      =0
;PRR:
.equ  PRTWI      =7
.equ  PRTIM2     =6
.equ  PRTIM0     =5
.equ  PRTIM1     =3
.equ  PRSPI      =2
.equ  PRUSART0   =1
.equ  PRADC      =0

;CLKPR:
.equ  CLKPCE     =7
.equ  CLKPS3     =3
.equ  CLKPS2     =2
.equ  CLKPS1     =1
.equ  CLKPS0     =0
;SREG:
;SPH:
.equ  SP9        =1
.equ  SP8        =0
;SPL:
.equ  SP7        =7
.equ  SP6        =6
.equ  SP5        =5
.equ  SP4        =4
.equ  SP3        =3
.equ  SP2        =2
.equ  SP1        =1
.equ  SP0        =0
;SPMCSR:
.equ  SPMIE      =7
.equ  RWWSB      =6
.equ  RWWSRE     =4
.equ  BLBSET     =3
.equ  PGWRT      =2
.equ  PGERS      =1
.equ  SELFPRGEN  =0
;MCUCR:
.equ  PUD        =4
.equ  IVSEL      =1
.equ  IVCE       =0
;MCUSR:
.equ  WDRF       =3
.equ  BORF       =2
.equ  EXTREF     =1
.equ  PORF       =0
;SMCR:
.equ  SM2        =3
.equ  SM1        =2
.equ  SM0        =1
.equ  SE         =0
;MONDR:
.equ  MONDR7     =7
.equ  MONDR6     =6
.equ  MONDR5     =5
.equ  MONDR4     =4
.equ  MONDR3     =3
.equ  MONDR2     =2
.equ  MONDR1     =1
.equ  MONDR0     =0
;GPIOR2:
.equ  GPIOR27    =7
.equ  GPIOR26    =6
.equ  GPIOR25    =5
.equ  GPIOR24    =4
.equ  GPIOR23    =3
.equ  GPIOR22    =2
.equ  GPIOR21    =1
.equ  GPIOR20    =0
;GPIOR1:
.equ  GPIOR17    =7
.equ  GPIOR16    =6
.equ  GPIOR15    =5
.equ  GPIOR14    =4
.equ  GPIOR13    =3
.equ  GPIOR12    =2
.equ  GPIOR11    =1
.equ  GPIOR10    =0
;GPIOR0:
.equ  GPIOR07    =7
.equ  GPIOR06    =6
.equ  GPIOR05    =5
.equ  GPIOR04    =4
.equ  GPIOR03    =3
.equ  GPIOR02    =2
.equ  GPIOR01    =1
.equ  GPIOR00    =0

;**********WATCHDOG*******************
;WDTCSR:
.equ  WDIF       =7
.equ  WDIE       =6
.equ  WDP3       =5
.equ  WDCE       =4
.equ  WDE        =3
.equ  WDP2       =2
.equ  WDP1       =1
.equ  WDP0       =0

;**********EEPROM*********************
;EEARH:
.equ  EEAR8      =0
;EEARL:
.equ  EEAR7      =7
.equ  EEAR6      =6
.equ  EEAR5      =5
.equ  EEAR4      =4
.equ  EEAR3      =3
.equ  EEAR2      =2
.equ  EEAR1      =1
.equ  EEAR0      =0
;EEDR:
.equ  EEDR7      =7
.equ  EEDR6      =6
.equ  EEDR5      =5
.equ  EEDR4      =4
.equ  EEDR3      =3
.equ  EEDR2      =2
.equ  EEDR1      =1
.equ  EEDR0      =0
;EECR:
.equ  EEPM1      =5
.equ  EEPM0      =4
.equ  EERIE      =3
.equ  EEMPE      =2
.equ  EEPE       =1
.equ  EERE       =0

;***** LOCKS AND FUSES *****************************************************
;lockbits
.equ  LB1         =0    ;Lock bit
.equ  LB2         =1    ;Lock bit
.equ  BLB01       =2    ;Boot Lock bit
.equ  BLB02       =3    ;Boot Lock bit
.equ  BLB11       =4    ;Boot lock bit
.equ  BLB12       =5    ;Boot lock bit

;low fuse bits
.equ  CKDIV8      =7    ;Divide clock by 8
.equ  CKOUT       =6    ;Clock output
.equ  SUT1        =5    ;Select start-up time
.equ  SUT0        =4    ;Select start-up time
.equ  CKSEL3      =3    ;Select Clock Source
.equ  CKSEL2      =2    ;Select Clock Source
.equ  CKSEL1      =1    ;Select Clock Source
.equ  CKSEL0      =0    ;Select Clock Source

;high fuse bits
.equ  RSTDISBL    =7    ;External reset disable
.equ  DWEN        =6    ;debugWIRE Enable
.equ  SPIEN       =5    ;Enable Serial programming and Data Downloading
.equ  WDTON       =4    ;Watchdog Timer Always On
.equ  EESAVE      =3    ;EEPROM memory is preserved through chip erase
.equ  BODLEVEL2   =2    ;Brown-out Detector trigger level
.equ  BODLEVEL1   =1    ;Brown-out Detector trigger level
.equ  BODLEVEL0   =0    ;Brown-out Detector trigger level

;extended fuse bits
.equ  BOOTSZ1     =2    ;Select boot size
.equ  BOOTSZ0     =1    ;Select boot size
.equ  BOOTRST     =0    ;Select reset vector

;***** CPU REGISTER DEFINITIONS ********************************************
.def    XL    = r26
.def    XH    = r27
.def    YL    = r28
.def    YH    = r29
.def    ZL    = r30
.def    ZH    = r31

;***** DATA MEMORY DECLARATIONS ********************************************
.equ  RAMEND     = $4FF
.equ  XRAMEND    = $4FF
.equ  E2END  = $1FF

;***** PROGRAM MEMORY DECLARATIONS *****************************************
.equ  FLASHEND     = $1FFF

;** Bootvectors **
.equ  SMALLBOOTSTART      =0x1F80
.equ  SECONDBOOTSTART     =0x1F00
.equ  THIRDBOOTSTART      =0x1E00
.equ  LARGEBOOTSTART      =0x1C00
.equ  PAGESIZE            =64

;***** INTERRUPT VECTORS ***************************************************
.equ  INT0addr       = $002    ; External Interrupt Request 0
.equ  INT1addr       = $004    ; External Interrupt Request 1
.equ  PCI0addr       = $006    ; Pin Change Interrupt Request 0
.equ  PCI1addr       = $008    ; Pin Change Interrupt Request 0
.equ  PCI2addr       = $00A    ; Pin Change Interrupt Request 1
.equ  WDTaddr        = $00C    ; Watchdog Time-out Interrupt
.equ  OC2Aaddr       = $00E    ; Timer/Counter2 Compare Match A
.equ  OC2Baddr       = $010    ; Timer/Counter2 Compare Match A
.equ  OVF2addr       = $012    ; Timer/Counter2 Overflow
.equ  ICP1addr       = $014    ; Timer/Counter1 Capture Event
.equ  OC1Aaddr       = $016    ; Timer/Counter1 Compare Match A
.equ  OC1Baddr       = $018    ; Timer/Counter1 Compare Match B
.equ  OVF1addr       = $01A    ; Timer/Counter1 Overflow
.equ  OC0Aaddr       = $01C    ; TimerCounter0 Compare Match A
.equ  OC0Baddr       = $01E    ; TimerCounter0 Compare Match B
.equ  OVF0addr       = $020    ; Timer/Couner0 Overflow
.equ  SPIaddr        = $022    ; SPI Serial Transfer Complete
.equ  URXCaddr       = $024    ; USART Rx Complete
.equ  UDREaddr       = $026    ; USART, Data Register Empty
.equ  UTXCaddr       = $028    ; USART Tx Complete
.equ  ADCaddr        = $02A    ; ADC Conversion Complete
.equ  ERDYaddr       = $02C    ; EEPROM Ready
.equ  ACIaddr        = $02E    ; Analog Comparator
.equ  TWIaddr        = $030    ; Two-wire Serial Interface
.equ  SPMRaddr       = $032    ; Store Program Memory Read


;***** END OF FILE *********************************************************
