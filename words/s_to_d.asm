; ( n1 -- d1 ) Conversion
; R( -- )
; extend (signed) single cell value to double cell
VE_S2D:
    .db $03, "s>d"
    .dw VE_HEAD
    .set VE_HEAD = VE_S2D
XT_S2D:
    .dw DO_COLON
PFA_S2D:
    .dw XT_DUP
    .dw XT_LESSZERO
    .dw XT_EXIT