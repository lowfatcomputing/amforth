; ( -- addr )
; R( -- )
VE_TICK:
    .db $01, "'"
    .dw VE_HEAD
    .set VE_HEAD = VE_TICK
XT_TICK:
    .dw DO_COLON
PFA_TICK:
    .dw XT_BL
    .dw XT_WORD
    .dw XT_FIND
    .dw XT_DROP
    .dw XT_EXIT