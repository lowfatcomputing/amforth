; ( addr -- n1 ) Memory
; R( -- )
; reads a cell from flash
VE_IFETCH:
    .dw $ff02
    .db "i@"
    .dw VE_HEAD
    .set VE_HEAD = VE_IFETCH
XT_IFETCH:
    .dw PFA_IFETCH
PFA_IFETCH:
    movw zl, tosl
    readflashcell tosl,tosh
    rjmp DO_NEXT
