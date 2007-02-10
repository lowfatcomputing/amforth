; ( -- eaddr) first free address in eeprom
; R( -- )
VE_EDP:
    .db $03, "edp"
    .dw VE_HEAD
    .set VE_HEAD = VE_EDP
XT_EDP:
    .dw PFA_DOVARIABLE
PFA_EDP:
    .dw $06
