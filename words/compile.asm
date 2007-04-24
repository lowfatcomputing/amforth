; ( -- ) Dictionary
; R( -- )
; copy the next flash cell to here
VE_COMPILE:
    .db $07, "compile"
    .dw  VE_HEAD
    .set VE_HEAD = VE_COMPILE
XT_COMPILE:
    .dw DO_COLON
PFA_COMPILE:
    .dw XT_R_FROM
    .dw XT_DUP
    .dw XT_1PLUS
    .dw XT_TO_R
    .dw XT_IFETCH
    .dw XT_COMMA
    .dw XT_EXIT

