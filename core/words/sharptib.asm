; ( -- addr ) System
; R( -- )
; address of variable holding the number of characters in TIB
VE_NUMBERTIB:
    .db $04, "#tib",0
    .dw VE_HEAD
    .set VE_HEAD  = VE_NUMBERTIB
XT_NUMBERTIB:
    .dw PFA_DOVARIABLE
PFA_NUMBERTIB:
    .dw heap
    .set heap  = heap + CELLSIZE
 
