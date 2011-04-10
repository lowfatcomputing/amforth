;
;  sleep   ( mode -- )
;
;  mode selects the type of sleep mode to use.  Refer to the
;  SMCR documentation for details.  The following table is
;  based on the ATmega328P docs.
;
;  0 = Idle
;  1 = ADC noise reduction
;  2 = Power down
;  3 = Power save
;  4 = Reserved
;  5 = Reserved
;  6 = Standby
;  7 = External standby
;
;  Note that on the ATmega328P, Idle mode is the only sleep that
;  leaves interrupts enabled AND the USART running.  This means
;  you can wake up out of Idle mode just by sending a char to the
;  USART.  For all other sleep modes, you must either use reset
;  or provide some kind of timed or external event to wake up;
;  the USART won't work.
;

; ( mode -- ) Arithmetics
; R( -- )
; let the controller sleep
VE_SLEEP:
    .dw $ff05
    .db "sleep", 0
    .dw VE_HEAD
    .set VE_HEAD = VE_SLEEP
XT_SLEEP:
    .dw PFA_SLEEP
PFA_SLEEP:
    andi tosl, 7			; leave only legal mode bits
    lsl tosl				; move to correct location (bits 3-1)
    ori tosl, 1				; set the SE bit
    out SMCR, tosl			; set the sleep config
    sleep				; nighty-night
    clr tosl				; need to clean up the SMCR reg before we leave
    out SMCR, tosl			; 0 protects against accidental sleeps
    loadtos				; pop argument from stack
    jmp DO_NEXT
