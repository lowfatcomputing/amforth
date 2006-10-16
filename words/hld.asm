; ( -- addr )
VE_HLD:
    .db $03, "hld"
    .dw VE_LATEST
    .set VE_LATEST = VE_HLD
XT_HLD:
    .dw PFA_DOVARIABLE
PFA_HLD:
    .dw heap
    .set heap = heap + 32
