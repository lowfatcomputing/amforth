; ( n -- flag ) Compare
; R( -- )
; compare with zero
VE_NOTEQUALZERO:
    .db $03, "0<>"
    .dw VE_HEAD
    .set VE_HEAD = VE_NOTEQUALZERO
XT_NOTEQUALZERO:
    .dw DO_COLON
PFA_NOTEQUALZERO:
    .dw XT_EQUALZERO
    .dw XT_EQUALZERO
    .dw XT_EXIT
