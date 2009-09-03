; ( -- ) Tools
; R( -- )
; emits the version string
VE_VER:
    .dw $ff03
    .db "ver",0
    .dw VE_HEAD
    .set VE_HEAD = VE_VER
XT_VER:
    .dw DO_COLON
PFA_VER:
    .dw XT_SLITERAL
    .dw 11
    .db "amforth 3.6",0
    .dw XT_ITYPE
    .dw XT_SPACE
    .dw XT_DOLITERAL
    .dw mcustring
    .dw XT_ICOUNT
    .dw XT_ITYPE
    .dw XT_EXIT
