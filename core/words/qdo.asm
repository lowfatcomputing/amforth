; ( -- addr ) Control Structure
; R( -- )
; start do .. [+]loop
VE_QDO:
    .db $83, "?do"
    .dw VE_HEAD
    .set VE_HEAD = VE_QDO
XT_QDO:
    .dw DO_COLON
PFA_QDO:
    .dw XT_COMPILE
    .dw XT_DOQDO
    .dw XT_GMARK
    .dw XT_LMARK
    .dw XT_EXIT
