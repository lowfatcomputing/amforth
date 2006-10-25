; ( -- eaddr) first free address in eeprom
VE_EHEAP:
    .db $05, "eheap"
    .dw VE_HEAD
    .set VE_HEAD = VE_EHEAP
XT_EHEAP:
    .dw PFA_DOVARIABLE
PFA_EHEAP:
    .dw $06
