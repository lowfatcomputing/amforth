; ( xt1 xt2 -- ) System
; R( -- )
; does the real defer! for eeprom defers
;VE_EDEFERSTORE:
;    .dw $ff07
;    .db "Edefer!"
;    .dw VE_HEAD
;    .set VE_HEAD = VE_EDEFERSTORE
XT_EDEFERSTORE:
    .dw DO_COLON
PFA_EDEFERSTORE:
    .dw XT_1PLUS
    .dw XT_IFETCH
    .dw XT_ESTORE
    .dw XT_EXIT
