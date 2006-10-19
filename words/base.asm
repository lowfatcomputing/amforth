; ( -- addr )
VE_BASE:
    .db $04, "base",0
    .dw VE_HEAD
    .set VE_HEAD = VE_BASE
XT_BASE:
    .dw PFA_DOVARIABLE
PFA_BASE:
    .dw heap
    .set heap = heap + CELLSIZE
