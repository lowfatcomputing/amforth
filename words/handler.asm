; ( -- addr )
VE_HANDLER:
    .db $07, "handler"
    .dw VE_HEAD
    .set VE_HEAD = VE_HANDLER
XT_HANDLER:
    .dw PFA_DOVARIABLE
PFA_HANDLER:
    .dw heap
    .set heap = heap + CELLSIZE
