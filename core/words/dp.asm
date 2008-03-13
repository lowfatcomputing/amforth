; ( -- eaddr)  System Pointer
; R( -- )
; first unused address in flash (NRWW is always used)
VE_DP:
    .db $02, "dp",0
    .dw VE_HEAD
    .set VE_HEAD = VE_DP
XT_DP:
    .dw PFA_DOVARIABLE
PFA_DP:
    .dw $00
