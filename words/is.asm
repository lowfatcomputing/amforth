; ( n <name> -- ) ISols
; R( --)
; sISre the ISS IS value (an EEPROM 16bit cell)
VE_IS:
    .db $82, "is", 0
    .dw VE_HEAD
    .set VE_HEAD = VE_IS
XT_IS:
    .dw DO_COLON
PFA_IS:
    .dw XT_STATE
    .dw XT_FETCH
    .dw XT_DOCONDBRANCH
    .dw PFA_IS1
    .dw XT_COMPILE
    .dw XT_BRACKETTICK
    .dw XT_COMPILE
    .dw XT_DEFERSTORE
    .dw XT_EXIT
PFA_IS1:
    .dw XT_TICK
    .dw XT_DEFERSTORE
    .dw XT_EXIT

