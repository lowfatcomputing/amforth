; ( -- eaddr) address from eeprom
VE_DP:
    .db $02, "dp",0
    .dw VE_LATEST
    .set VE_LATEST = VE_DP
XT_DP:
    .dw PFA_DOVARIABLE
PFA_DP:
    .dw $00
