; ( -- addr) System Pointer
; R( -- )
; Address of the first unallocated RAM address
VE_HEAP:
    .db $04, "heap",0
    .dw VE_HEAD
    .set VE_HEAD = VE_HEAP
XT_HEAP:
    .dw PFA_DOVALUE
PFA_HEAP:
    .dw $04
