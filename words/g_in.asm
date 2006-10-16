;;;;;;;;;;;;;;;;;;
; ( -- addr )
VE_G_IN:
    .db $03, ">in"
    .dw VE_LATEST
    .set VE_LATEST = VE_G_IN
XT_G_IN:
    .dw PFA_DOVARIABLE
PFA_G_IN:
    .dw heap
    .set heap = heap + CELLSIZE
