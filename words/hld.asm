; ( -- addr )
; R( -- )
VE_HLD:
    .db $03, "hld"
    .dw VE_HEAD
    .set VE_HEAD = VE_HLD
XT_HLD:
    .dw PFA_DOVARIABLE
PFA_HLD:
    .dw heap
    .set heap = heap + HLDSIZE
