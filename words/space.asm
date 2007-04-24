; ( -- ) Character IO
; R( -- )
; emits a space (bl)
VE_SPACE:
    .db $05, "space"
    .dw VE_HEAD
    .set VE_HEAD = VE_SPACE
XT_SPACE:
    .dw DO_COLON
PFA_SPACE:
    .dw XT_BL
    .dw XT_EMIT
    .dw XT_EXIT
