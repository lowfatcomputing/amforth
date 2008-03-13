; ( xt1 -- xt2 ) System
; R( -- )
; does the real defer@ for eeprom defers
;VE_EDEFERFETCH:
;    .db $07, "Edefer@"
;    .dw VE_HEAD
;    .set VE_HEAD = VE_EDEFERFETCH
XT_EDEFERFETCH:
    .dw DO_COLON
PFA_EDEFERFETCH:
    .dw XT_1PLUS ; >body
    .dw XT_IFETCH
    .dw XT_EFETCH
    .dw XT_EXIT
