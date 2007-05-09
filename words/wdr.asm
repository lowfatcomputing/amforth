; ( -- ) Interrupt
; R( -- )
; calls the MCU wdr instruction
VE_WDR:
    .db $03, "wdr"
    .dw VE_HEAD
    .set VE_HEAD = VE_WDR
XT_WDR:
    .dw PFA_WDR
PFA_WDR:
    wdr
    rjmp DO_NEXT
