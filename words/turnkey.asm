; ( -- eaddr) first free address in eeprom
VE_TICKTURNKEY:
    .db $08, $27, "turnkey",0
    .dw VE_HEAD
    .set VE_HEAD = VE_TICKTURNKEY
XT_TICKTURNKEY:
    .dw PFA_DOVARIABLE
PFA_TICKTURNKEY:
    .dw $08
