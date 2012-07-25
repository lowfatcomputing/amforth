\ Partname: ATmega16HVB
\ generated automatically

\ AD_CONVERTER
124 constant VADMUX	\ The VADC multiplexer Selection Register
  $0F constant VADMUX_VADMUX \ Analog Channel and Gain Selection Bits
120 constant VADC	\ VADC Data Register  Bytes
122 constant VADCSR	\ The VADC Control and Status register
  $08 constant VADCSR_VADEN \ VADC Enable
  $04 constant VADCSR_VADSC \ VADC Satrt Conversion
  $02 constant VADCSR_VADCCIF \ VADC Conversion Complete Interrupt Flag
  $01 constant VADCSR_VADCCIE \ VADC Conversion Complete Interrupt Enable
\ WATCHDOG
96 constant WDTCSR	\ Watchdog Timer Control Register
  $80 constant WDTCSR_WDIF \ Watchdog Timeout Interrupt Flag
  $40 constant WDTCSR_WDIE \ Watchdog Timeout Interrupt Enable
  $27 constant WDTCSR_WDP \ Watchdog Timer Prescaler Bits
  $10 constant WDTCSR_WDCE \ Watchdog Change Enable
  $08 constant WDTCSR_WDE \ Watch Dog Enable
\ FET
240 constant FCSR	\ FET Control and Status Register
  $08 constant FCSR_DUVRD \ Deep Under-Voltage Recovery Disable
  $04 constant FCSR_CPS \ Current Protection Status
  $02 constant FCSR_DFE \ Discharge FET Enable
  $01 constant FCSR_CFE \ Charge FET Enable
\ SPI
76 constant SPCR	\ SPI Control Register
  $80 constant SPCR_SPIE \ SPI Interrupt Enable
  $40 constant SPCR_SPE \ SPI Enable
  $20 constant SPCR_DORD \ Data Order
  $10 constant SPCR_MSTR \ Master/Slave Select
  $08 constant SPCR_CPOL \ Clock polarity
  $04 constant SPCR_CPHA \ Clock Phase
  $03 constant SPCR_SPR \ SPI Clock Rate Selects
77 constant SPSR	\ SPI Status Register
  $80 constant SPSR_SPIF \ SPI Interrupt Flag
  $40 constant SPSR_WCOL \ Write Collision Flag
  $01 constant SPSR_SPI2X \ Double SPI Speed Bit
78 constant SPDR	\ SPI Data Register
\ EEPROM
65 constant EEAR	\ EEPROM Read/Write Access
64 constant EEDR	\ EEPROM Data Register
63 constant EECR	\ EEPROM Control Register
  $30 constant EECR_EEPM \ 
  $08 constant EECR_EERIE \ EEProm Ready Interrupt Enable
  $04 constant EECR_EEMPE \ EEPROM Master Write Enable
  $02 constant EECR_EEPE \ EEPROM Write Enable
  $01 constant EECR_EERE \ EEPROM Read Enable
\ COULOMB_COUNTER
230 constant CADCSRA	\ CC-ADC Control and Status Register A
  $80 constant CADCSRA_CADEN \ When the CADEN bit is cleared (zero), the CC-ADC is disabled. When the CADEN bit is set (one), the CC-ADC will continuously measure the voltage drop over the external sense resistor RSENSE. In Power-down, only the Regular Current detection is active. In Power-off, the CC-ADC is always disabled.
  $40 constant CADCSRA_CADPOL \ 
  $20 constant CADCSRA_CADUB \ CC_ADC Update Busy
  $18 constant CADCSRA_CADAS \ CC_ADC Accumulate Current Select Bits
  $06 constant CADCSRA_CADSI \ The CADSI bits determine the current sampling interval for the Regular Current detection in Power-down mode. The actual settings remain to be determined.
  $01 constant CADCSRA_CADSE \ When the CADSE bit is written to one, the ongoing CC-ADC conversion is aborted, and the CC-ADC enters Regular Current detection mode.
231 constant CADCSRB	\ CC-ADC Control and Status Register B
  $40 constant CADCSRB_CADACIE \ 
  $20 constant CADCSRB_CADRCIE \ Regular Current Interrupt Enable
  $10 constant CADCSRB_CADICIE \ CAD Instantenous Current Interrupt Enable
  $04 constant CADCSRB_CADACIF \ CC-ADC Accumulate Current Interrupt Flag
  $02 constant CADCSRB_CADRCIF \ CC-ADC Accumulate Current Interrupt Flag
  $01 constant CADCSRB_CADICIF \ CC-ADC Instantaneous Current Interrupt Flag
232 constant CADCSRC	\ CC-ADC Control and Status Register C
  $01 constant CADCSRC_CADVSE \ CC-ADC Voltage Scaling Enable
228 constant CADIC	\ CC-ADC Instantaneous Current
227 constant CADAC3	\ ADC Accumulate Current
226 constant CADAC2	\ ADC Accumulate Current
225 constant CADAC1	\ ADC Accumulate Current
224 constant CADAC0	\ ADC Accumulate Current
233 constant CADRCC	\ CC-ADC Regular Charge Current
234 constant CADRDC	\ CC-ADC Regular Discharge Current
\ TWI
190 constant TWBCSR	\ TWI Bus Control and Status Register
  $80 constant TWBCSR_TWBCIF \ TWI Bus Connect/Disconnect Interrupt Flag
  $40 constant TWBCSR_TWBCIE \ TWI Bus Connect/Disconnect Interrupt Enable
  $06 constant TWBCSR_TWBDT \ TWI Bus Disconnect Time-out Period
  $01 constant TWBCSR_TWBCIP \ TWI Bus Connect/Disconnect Interrupt Polarity
189 constant TWAMR	\ TWI (Slave) Address Mask Register
  $FE constant TWAMR_TWAM \ 
184 constant TWBR	\ TWI Bit Rate register
188 constant TWCR	\ TWI Control Register
  $80 constant TWCR_TWINT \ TWI Interrupt Flag
  $40 constant TWCR_TWEA \ TWI Enable Acknowledge Bit
  $20 constant TWCR_TWSTA \ TWI Start Condition Bit
  $10 constant TWCR_TWSTO \ TWI Stop Condition Bit
  $08 constant TWCR_TWWC \ TWI Write Collition Flag
  $04 constant TWCR_TWEN \ TWI Enable Bit
  $01 constant TWCR_TWIE \ TWI Interrupt Enable
185 constant TWSR	\ TWI Status Register
  $F8 constant TWSR_TWS \ TWI Status
  $03 constant TWSR_TWPS \ TWI Prescaler
187 constant TWDR	\ TWI Data register
186 constant TWAR	\ TWI (Slave) Address register
  $FE constant TWAR_TWA \ TWI (Slave) Address register Bits
  $01 constant TWAR_TWGCE \ TWI General Call Recognition Enable Bit
\ EXTERNAL_INTERRUPT
105 constant EICRA	\ External Interrupt Control Register
  $C0 constant EICRA_ISC3 \ External Interrupt Sense Control 3 Bits
  $30 constant EICRA_ISC2 \ External Interrupt Sense Control 2 Bits
  $0C constant EICRA_ISC1 \ External Interrupt Sense Control 1 Bits
  $03 constant EICRA_ISC0 \ External Interrupt Sense Control 0 Bits
61 constant EIMSK	\ External Interrupt Mask Register
  $0F constant EIMSK_INT \ External Interrupt Request 3 Enable
60 constant EIFR	\ External Interrupt Flag Register
  $0F constant EIFR_INTF \ External Interrupt Flags
104 constant PCICR	\ Pin Change Interrupt Control Register
  $03 constant PCICR_PCIE \ Pin Change Interrupt Enables
59 constant PCIFR	\ Pin Change Interrupt Flag Register
  $03 constant PCIFR_PCIF \ Pin Change Interrupt Flags
108 constant PCMSK1	\ Pin Change Enable Mask Register 1
107 constant PCMSK0	\ Pin Change Enable Mask Register 0
\ TIMER_COUNTER_1
129 constant TCCR1B	\ Timer/Counter1 Control Register B
  $07 constant TCCR1B_CS \ Clock Select1 bis
128 constant TCCR1A	\ Timer/Counter 1 Control Register A
  $80 constant TCCR1A_TCW1 \ Timer/Counter Width
  $40 constant TCCR1A_ICEN1 \ Input Capture Mode Enable
  $20 constant TCCR1A_ICNC1 \ Input Capture Noise Canceler
  $10 constant TCCR1A_ICES1 \ Input Capture Edge Select
  $08 constant TCCR1A_ICS1 \ Input Capture Select
  $01 constant TCCR1A_WGM10 \ Waveform Generation Mode
132 constant TCNT1	\ Timer Counter 1  Bytes
136 constant OCR1A	\ Output Compare Register 1A
137 constant OCR1B	\ Output Compare Register B
111 constant TIMSK1	\ Timer/Counter Interrupt Mask Register
  $08 constant TIMSK1_ICIE1 \ Timer/Counter n Input Capture Interrupt Enable
  $04 constant TIMSK1_OCIE1B \ Timer/Counter1 Output Compare B Interrupt Enable
  $02 constant TIMSK1_OCIE1A \ Timer/Counter1 Output Compare A Interrupt Enable
  $01 constant TIMSK1_TOIE1 \ Timer/Counter1 Overflow Interrupt Enable
54 constant TIFR1	\ Timer/Counter Interrupt Flag register
  $08 constant TIFR1_ICF1 \ Timer/Counter 1 Input Capture Flag
  $04 constant TIFR1_OCF1B \ Timer/Counter1 Output Compare Flag B
  $02 constant TIFR1_OCF1A \ Timer/Counter1 Output Compare Flag A
  $01 constant TIFR1_TOV1 \ Timer/Counter1 Overflow Flag
67 constant GTCCR	\ General Timer/Counter Control Register
  $80 constant GTCCR_TSM \ Timer/Counter Synchronization Mode
  $01 constant GTCCR_PSRSYNC \ Prescaler Reset
\ CELL_BALANCING
241 constant CBCR	\ Cell Balancing Control Register
  $0F constant CBCR_CBE \ Cell Balancing Enables
\ BATTERY_PROTECTION
254 constant BPPLR	\ Battery Protection Parameter Lock Register
  $02 constant BPPLR_BPPLE \ Battery Protection Parameter Lock Enable
  $01 constant BPPLR_BPPL \ Battery Protection Parameter Lock
253 constant BPCR	\ Battery Protection Control Register
  $20 constant BPCR_EPID \ External Protection Input Disable
  $10 constant BPCR_SCD \ Short Circuit Protection Disabled
  $08 constant BPCR_DOCD \ Discharge Over-current Protection Disabled
  $04 constant BPCR_COCD \ Charge Over-current Protection Disabled
  $02 constant BPCR_DHCD \ Discharge High-current Protection Disable
  $01 constant BPCR_CHCD \ Charge High-current Protection Disable
252 constant BPHCTR	\ Battery Protection Short-current Timing Register
251 constant BPOCTR	\ Battery Protection Over-current Timing Register
250 constant BPSCTR	\ Battery Protection Short-current Timing Register
249 constant BPCHCD	\ Battery Protection Charge-High-current Detection Level Register
248 constant BPDHCD	\ Battery Protection Discharge-High-current Detection Level Register
247 constant BPCOCD	\ Battery Protection Charge-Over-current Detection Level Register
246 constant BPDOCD	\ Battery Protection Discharge-Over-current Detection Level Register
245 constant BPSCD	\ Battery Protection Short-Circuit Detection Level Register
243 constant BPIFR	\ Battery Protection Interrupt Flag Register
  $10 constant BPIFR_SCIF \ Short-circuit Protection Activated Interrupt Flag
  $08 constant BPIFR_DOCIF \ Discharge Over-current Protection Activated Interrupt Flag
  $04 constant BPIFR_COCIF \ Charge Over-current Protection Activated Interrupt Flag
  $02 constant BPIFR_DHCIF \ Disharge High-current Protection Activated Interrupt
  $01 constant BPIFR_CHCIF \ Charge High-current Protection Activated Interrupt
242 constant BPIMSK	\ Battery Protection Interrupt Mask Register
  $10 constant BPIMSK_SCIE \ Short-circuit Protection Activated Interrupt Enable
  $08 constant BPIMSK_DOCIE \ Discharge Over-current Protection Activated Interrupt Enable
  $04 constant BPIMSK_COCIE \ Charge Over-current Protection Activated Interrupt Enable
  $02 constant BPIMSK_DHCIE \ Discharger High-current Protection Activated Interrupt
  $01 constant BPIMSK_CHCIE \ Charger High-current Protection Activated Interrupt
\ CHARGER_DETECT
212 constant CHGDCSR	\ Charger Detect Control and Status Register
  $10 constant CHGDCSR_BATTPVL \ BATT Pin Voltage Level
  $0C constant CHGDCSR_CHGDISC \ Charger Detect Interrupt Sense Control
  $02 constant CHGDCSR_CHGDIF \ Charger Detect Interrupt Flag
  $01 constant CHGDCSR_CHGDIE \ Charger Detect Interrupt Enable
\ VOLTAGE_REGULATOR
200 constant ROCR	\ Regulator Operating Condition Register
  $80 constant ROCR_ROCS \ ROC Status
  $10 constant ROCR_ROCD \ ROC Disable
  $02 constant ROCR_ROCWIF \ ROC Warning Interrupt Flag
  $01 constant ROCR_ROCWIE \ ROC Warning Interrupt Enable
\ BANDGAP
210 constant BGCSR	\ Bandgap Control and Status Register
  $20 constant BGCSR_BGD \ Bandgap Disable
  $10 constant BGCSR_BGSCDE \ Bandgap Short Circuit Detection Enabled
  $02 constant BGCSR_BGSCDIF \ Bandgap Short Circuit Detection Interrupt Flag
  $01 constant BGCSR_BGSCDIE \ Bandgap Short Circuit Detection Interrupt Enable
209 constant BGCRR	\ Bandgap Calibration of Resistor Ladder
208 constant BGCCR	\ Bandgap Calibration Register
  $3F constant BGCCR_BGCC \ BG Calibration of PTAT Current Bits
\ CPU
95 constant SREG	\ Status Register
  $80 constant SREG_I \ Global Interrupt Enable
  $40 constant SREG_T \ Bit Copy Storage
  $20 constant SREG_H \ Half Carry Flag
  $10 constant SREG_S \ Sign Bit
  $08 constant SREG_V \ Two's Complement Overflow Flag
  $04 constant SREG_N \ Negative Flag
  $02 constant SREG_Z \ Zero Flag
  $01 constant SREG_C \ Carry Flag
93 constant SP	\ Stack Pointer 
85 constant MCUCR	\ MCU Control Register
  $20 constant MCUCR_CKOE \ Clock Output Enable
  $10 constant MCUCR_PUD \ Pull-up disable
  $02 constant MCUCR_IVSEL \ Interrupt Vector Select
  $01 constant MCUCR_IVCE \ Interrupt Vector Change Enable
84 constant MCUSR	\ MCU Status Register
  $10 constant MCUSR_OCDRF \ OCD Reset Flag
  $08 constant MCUSR_WDRF \ Watchdog Reset Flag
  $04 constant MCUSR_BODRF \ Brown-out Reset Flag
  $02 constant MCUSR_EXTRF \ External Reset Flag
  $01 constant MCUSR_PORF \ Power-on reset flag
102 constant FOSCCAL	\ Fast Oscillator Calibration Value
55 constant OSICSR	\ Oscillator Sampling Interface Control and Status Register
  $10 constant OSICSR_OSISEL0 \ Oscillator Sampling Interface Select 0
  $02 constant OSICSR_OSIST \ Oscillator Sampling Interface Status
  $01 constant OSICSR_OSIEN \ Oscillator Sampling Interface Enable
83 constant SMCR	\ Sleep Mode Control Register
  $0E constant SMCR_SM \ Sleep Mode Select bits
  $01 constant SMCR_SE \ Sleep Enable
75 constant GPIOR2	\ General Purpose IO Register 2
74 constant GPIOR1	\ General Purpose IO Register 1
62 constant GPIOR0	\ General Purpose IO Register 0
126 constant DIDR0	\ Digital Input Disable Register
  $02 constant DIDR0_PA1DID \ When this bit is written logic one, the digital input buffer of the corresponding V_ADC pin is disabled.
  $01 constant DIDR0_PA0DID \ When this bit is written logic one, the digital input buffer of the corresponding V_ADC pin is disabled.
100 constant PRR0	\ Power Reduction Register 0
  $40 constant PRR0_PRTWI \ Power Reduction TWI
  $20 constant PRR0_PRVRM \ Power Reduction Voltage Regulator Monitor
  $08 constant PRR0_PRSPI \ Power reduction SPI
  $04 constant PRR0_PRTIM1 \ Power Reduction Timer/Counter1
  $02 constant PRR0_PRTIM0 \ Power Reduction Timer/Counter0
  $01 constant PRR0_PRVADC \ Power Reduction V-ADC
97 constant CLKPR	\ Clock Prescale Register
  $80 constant CLKPR_CLKPCE \ Clock Prescaler Change Enable
  $03 constant CLKPR_CLKPS \ Clock Prescaler Select Bits
\ PORTA
34 constant PORTA	\ Port A Data Register
33 constant DDRA	\ Port A Data Direction Register
32 constant PINA	\ Port A Input Pins
\ PORTB
37 constant PORTB	\ Port B Data Register
36 constant DDRB	\ Port B Data Direction Register
35 constant PINB	\ Port B Input Pins
\ PORTC
40 constant PORTC	\ Port C Data Register
38 constant PINC	\ Port C Input Pins
\ TIMER_COUNTER_0
69 constant TCCR0B	\ Timer/Counter0 Control Register B
  $04 constant TCCR0B_CS02 \ Clock Select0 bit 2
  $02 constant TCCR0B_CS01 \ Clock Select0 bit 1
  $01 constant TCCR0B_CS00 \ Clock Select0 bit 0
68 constant TCCR0A	\ Timer/Counter 0 Control Register A
  $80 constant TCCR0A_TCW0 \ Timer/Counter Width
  $40 constant TCCR0A_ICEN0 \ Input Capture Mode Enable
  $20 constant TCCR0A_ICNC0 \ Input Capture Noise Canceler
  $10 constant TCCR0A_ICES0 \ Input Capture Edge Select
  $08 constant TCCR0A_ICS0 \ Input Capture Select
  $01 constant TCCR0A_WGM00 \ Waveform Generation Mode
70 constant TCNT0	\ Timer Counter 0  Bytes
72 constant OCR0A	\ Output Compare Register 0A
73 constant OCR0B	\ Output Compare Register B
110 constant TIMSK0	\ Timer/Counter Interrupt Mask Register
  $08 constant TIMSK0_ICIE0 \ Timer/Counter n Input Capture Interrupt Enable
  $04 constant TIMSK0_OCIE0B \ Timer/Counter0 Output Compare B Interrupt Enable
  $02 constant TIMSK0_OCIE0A \ Timer/Counter0 Output Compare A Interrupt Enable
  $01 constant TIMSK0_TOIE0 \ Timer/Counter0 Overflow Interrupt Enable
53 constant TIFR0	\ Timer/Counter Interrupt Flag register
  $08 constant TIFR0_ICF0 \ Timer/Counter 0 Input Capture Flag
  $04 constant TIFR0_OCF0B \ Timer/Counter0 Output Compare Flag B
  $02 constant TIFR0_OCF0A \ Timer/Counter0 Output Compare Flag A
  $01 constant TIFR0_TOV0 \ Timer/Counter0 Overflow Flag
\ BOOT_LOAD
87 constant SPMCSR	\ Store Program Memory Control and Status Register
  $80 constant SPMCSR_SPMIE \ SPM Interrupt Enable
  $40 constant SPMCSR_RWWSB \ Read-While-Write Section Busy
  $20 constant SPMCSR_SIGRD \ Signature Row Read
  $10 constant SPMCSR_RWWSRE \ Read-While-Write Section Read Enable
  $08 constant SPMCSR_LBSET \ Lock Bit Set
  $04 constant SPMCSR_PGWRT \ Page Write
  $02 constant SPMCSR_PGERS \ Page Erase
  $01 constant SPMCSR_SPMEN \ Store Program Memory Enable

\ Interrupts
2  constant BPINTAddr \ Battery Protection Interrupt
4  constant VREGMONAddr \ Voltage regulator monitor interrupt
6  constant INT0Addr \ External Interrupt Request 0
8  constant INT1Addr \ External Interrupt Request 1
10  constant INT2Addr \ External Interrupt Request 2
12  constant INT3Addr \ External Interrupt Request 3
14  constant PCINT0Addr \ Pin Change Interrupt 0
16  constant PCINT1Addr \ Pin Change Interrupt 1
18  constant WDTAddr \ Watchdog Timeout Interrupt
20  constant BGSCDAddr \ Bandgap Buffer Short Circuit Detected
22  constant CHDETAddr \ Charger Detect
24  constant TIMER1_ICAddr \ Timer 1 Input capture
26  constant TIMER1_COMPAAddr \ Timer 1 Compare Match A
28  constant TIMER1_COMPBAddr \ Timer 1 Compare Match B
30  constant TIMER1_OVFAddr \ Timer 1 overflow
32  constant TIMER0_ICAddr \ Timer 0 Input Capture
34  constant TIMER0_COMPAAddr \ Timer 0 Comapre Match A
36  constant TIMER0_COMPBAddr \ Timer 0 Compare Match B
38  constant TIMER0_OVFAddr \ Timer 0 Overflow
40  constant TWIBUSCDAddr \ Two-Wire Bus Connect/Disconnect
42  constant TWIAddr \ Two-Wire Serial Interface
44  constant SPI_STCAddr \ SPI Serial transfer complete
46  constant VADCAddr \ Voltage ADC Conversion Complete
48  constant CCADC_CONVAddr \ Coulomb Counter ADC Conversion Complete
50  constant CCADC_REG_CURAddr \ Coloumb Counter ADC Regular Current
52  constant CCADC_ACCAddr \ Coloumb Counter ADC Accumulator
54  constant EE_READYAddr \ EEPROM Ready
56  constant SPMAddr \ SPM Ready
