; ( -- addr ) System
; R( -- )
; pointer to current read position in TIB
VE_G_IN:
    .db $03, ">in"
    .dw VE_HEAD
    .set VE_HEAD = VE_G_IN
XT_G_IN:
    .dw PFA_DOVARIABLE
PFA_G_IN:
    .dw heap
    .set heap = heap + CELLSIZE
