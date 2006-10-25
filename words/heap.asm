; ( -- eaddr) address from eeprom
_VE_HEAP:
    .db $04, "heap",0
    .dw VE_HEAP
    .set VE_HEAP = _VE_HEAP
XT_HEAP:
    .dw PFA_DOVARIABLE
PFA_HEAP:
    .dw $04
