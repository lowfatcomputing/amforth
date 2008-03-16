; ( n1 -- n2 ) MCU
; R( -- )
; disable watch dog timer at runtime
VE_NOWDT:
    .db 4, "-wdt",0
    .dw VE_HEAD
    .set VE_HEAD = VE_NOWDT
XT_NOWDT:
    .dw PFA_NOWDT
PFA_NOWDT:
    cli
    wdr
    in_ temp0, WDTCR
    ori temp0, ( 1<<WDE) | ( 1<<WDTOE)    
    out_ WDTCR, temp0
    ldi temp0, 0<<WDE
    out_ WDTCR, temp0
    sei
    jmp_ DO_NEXT
