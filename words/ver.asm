; ( -- ) Tools
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
    .db 11,"amforth 2.1"
    .dw XT_ITYPE
    .dw XT_SPACE
    .dw XT_DOLITERAL
    .dw mcustring
    .dw XT_ICOUNT
    .dw XT_ITYPE
    .dw XT_EXIT
