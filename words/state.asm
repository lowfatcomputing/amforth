;;;;;;;;;;;;;;;;;;;;;;;;;
; ( -- addr )
VE_STATE:
    .db $05, "state"
    .dw VE_LATEST
    .set VE_LATEST = VE_STATE
XT_STATE:
    .dw PFA_DOVARIABLE
PFA_STATE:
    .dw heap
    .set heap = heap + CELLSIZE
