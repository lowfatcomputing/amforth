; ( -- )
VE_VER:
    .db $03, "ver"
    .dw VE_HEAD
    .set VE_HEAD = VE_VER
XT_VER:
    .dw DO_COLON
PFA_VER:
    .dw XT_DODOTSTRING
    .db 11,"amforth 1.0"
    .dw XT_EXIT
