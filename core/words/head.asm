; ( -- eaddr) System Pointer
; R( -- )
; address of first unallocated flash (below NRWW)
_VE_HEAD:
    .db $04, "head",0
    .dw VE_HEAD
    .set VE_HEAD = _VE_HEAD
XT_HEAD:
    .dw PFA_DOVARIABLE
PFA_HEAD:
    .dw $02
