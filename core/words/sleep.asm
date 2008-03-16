; ( -- ) MCU
; R( -- )
; calls the MCU sleep instruction. Not useful itself!
VE_SLEEP:
    .db $05, "sleep"
    .dw VE_HEAD
    .set VE_HEAD = VE_SLEEP
XT_SLEEP:
    .dw PFA_SLEEP
PFA_SLEEP:
    sleep
    jmp_ DO_NEXT
