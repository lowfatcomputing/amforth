; ( -- ) 
; MCU
; disable watch dog timer at runtime
VE_NOWDT:
    .dw $ff04
    .db "-wdt"
    .dw VE_HEAD
    .set VE_HEAD = VE_NOWDT
XT_NOWDT:
    .dw PFA_NOWDT
PFA_NOWDT:
     push temp1
     in temp1,SREG
     push temp1
     ; Turn always off global interrupt.
     cli
     ; Reset Watchdog Timer
     wdr
     ; Clear WDRF in MCUSR
     in temp1, MCUSR
     andi temp1, (0xff & (0<<WDRF))
     out MCUSR, temp1
     ; Write logical one to WDCE and WDE
     ; Keep old prescaler setting to prevent unintentional time-out
     lds temp1, WDTCSR
     ori temp1, (1<<WDCE) | (1<<WDE)
     sts WDTCSR, temp1
     ; Turn off WDT
     ldi temp1, (0<<WDE)
     sts WDTCSR, temp1
     ; restore status register
     pop temp1
     out SREG,temp1
     pop temp1
     jmp_ DO_NEXT
