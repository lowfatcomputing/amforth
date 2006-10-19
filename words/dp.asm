; ( -- eaddr) address from eeprom
VE_DP:
    .db $02, "dp",0
    .dw VE_HEAD
    .set VE_HEAD = VE_DP
XT_DP:
    .dw PFA_DOVARIABLE
PFA_DP:
    .dw $00
