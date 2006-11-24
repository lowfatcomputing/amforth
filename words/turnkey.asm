; ( -- eaddr) first free address in eeprom
VE_TURNKEY:
    .db $07, "turnkey"
    .dw VE_HEAD
    .set VE_HEAD = VE_TURNKEY
XT_TURNKEY:
    .dw PFA_DOVARIABLE
PFA_TURNKEY:
    .dw $08
