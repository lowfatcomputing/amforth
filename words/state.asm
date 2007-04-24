; ( -- addr ) Compiler
; R( -- )
; system state
VE_STATE:
    .db $05, "state"
    .dw VE_HEAD
    .set VE_HEAD = VE_STATE
XT_STATE:
    .dw PFA_DOVARIABLE
PFA_STATE:
    .dw heap
    .set heap = heap + CELLSIZE
