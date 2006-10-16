; ( -- addr )
VE_TIB:
    .db $03, "tib"
    .dw VE_LATEST
    .set VE_LATEST = VE_TIB
XT_TIB:
    .dw PFA_DOVARIABLE
PFA_TIB:
    .dw heap
    .set heap = heap + TIBSIZE
