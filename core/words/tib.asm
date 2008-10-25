; ( -- addr ) System Value
; R( -- )
; terminal input buffer address
VE_TIB:
    .dw $ff03
    .db "tib",0
    .dw VE_HEAD
    .set VE_HEAD = VE_TIB
XT_TIB:
    .dw PFA_DOVALUE
PFA_TIB:
    .set TIB = heap
    .set heap = heap + TIBSIZE
    .dw 14
