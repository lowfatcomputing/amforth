; ( -- addr) System Value
; R( -- )
; Address of the first unallocated RAM cell
VE_HEAP:
    .dw $ff04
    .db "heap"
    .dw VE_HEAD
    .set VE_HEAD = VE_HEAP
XT_HEAP:
    .dw PFA_DOVALUE
PFA_HEAP:
    .dw 6
