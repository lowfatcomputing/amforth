; ( -- ) 
; MCU
; calls the MCU watch dog reset instruction
VE_WDR:
    .word 0xff03
    .string "wdr"
    .word VE_HEAD
    .set VE_HEAD, VE_WDR
XT_WDR:
    .word PFA_WDR
PFA_WDR:
    wdr
    jmp_ DO_NEXT
