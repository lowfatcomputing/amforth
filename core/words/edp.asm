; ( -- edp) System Value
; R( -- )
; first unused address in eeprom
VE_EDP:
    .dw $ff03
    .db "edp",0
    .dw VE_HEAD
    .set VE_HEAD = VE_EDP
XT_EDP:
    .dw PFA_DOVALUE
PFA_EDP:
    .dw EE_EDP
