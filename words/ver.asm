; ( -- )
; R( -- )
; emits the version string
VE_VER:
    .db $03, "ver"
    .dw VE_HEAD
    .set VE_HEAD = VE_VER
XT_VER:
    .dw DO_COLON
PFA_VER:
    .dw XT_SLITERAL
    .db 11,"amforth 1.9"
    .dw XT_ITYPE
    .dw XT_EXIT
