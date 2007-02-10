; ( -- addr )
; R( -- )
VE_PAD:
    .db $03, "pad"
    .dw VE_HEAD
    .set VE_HEAD = VE_PAD
XT_PAD:
    .dw PFA_DOVARIABLE
PFA_PAD:
    .dw heap
    .set heap = heap + PADSIZE
