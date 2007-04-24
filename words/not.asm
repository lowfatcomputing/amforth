; ( flag -- flag' ) Logic
; R( -- )
; identical to 0=
VE_NOT:
    .db $03, "not"
    .dw VE_HEAD
    .set VE_HEAD = VE_NOT
XT_NOT:
    .dw DO_COLON
PFA_NOT:
    .dw XT_EQUALZERO
    .dw XT_EXIT
