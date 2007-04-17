; ( addr1 u1 n-- addr2 u2 )
; R( -- )
; adjust string from addr1 to addr1+n, reduce length from u1 to u2
VE_SLASHSTRING:
    .db $7, "/string"
    .dw VE_HEAD
    .set VE_HEAD = VE_SLASHSTRING
XT_SLASHSTRING:
    .dw DO_COLON
PFA_SLASHSTRING:
    .dw XT_OVER
    .dw XT_MIN
    .dw XT_ROT
    .dw XT_OVER
    .dw XT_PLUS
    .dw XT_ROT
    .dw XT_ROT
    .dw XT_MINUS
    .dw XT_EXIT
