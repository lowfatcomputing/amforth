; ( -- eaddr) System Pointer
; R( -- )
; address of EEPROM cell that holds the first unallocated flash address (below NRWW)
_VE_HEAD:
    .db $04, "head",0
    .dw VE_HEAD
    .set VE_HEAD = _VE_HEAD
XT_HEAD:
    .dw PFA_DOVALUE
PFA_HEAD:
    .dw $02
