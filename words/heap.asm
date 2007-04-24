; ( -- eaddr) System Pointer
; R( -- )
;  address of first unallocated RAM
VE_HEAP:
    .db $04, "heap",0
    .dw VE_HEAD
    .set VE_HEAD = VE_HEAP
XT_HEAP:
    .dw PFA_DOVARIABLE
PFA_HEAP:
    .dw $04
