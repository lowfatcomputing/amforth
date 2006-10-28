; ( -- )
VE_VER:
    .db $03, "ver"
    .dw VE_HEAD
    .set VE_HEAD = VE_VER
XT_VER:
    .dw DO_COLON
PFA_VER:
    .dw XT_DOLITERAL
    .dw PFA_VER1
    .dw XT_ITYPE
    .dw XT_DROP
    .dw XT_EXIT
PFA_VER1:
    .db 13,13,10,"amforth 0.3"
