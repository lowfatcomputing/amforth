; ( n <name> -- ) Compiler
; R( -- )
; creates a defer vector which is kept in eeprom.
VE_EDEFER:
    .db $06, "Edefer",0
    .dw VE_HEAD
    .set VE_HEAD = VE_EDEFER
XT_EDEFER:
    .dw DO_COLON
PFA_EDEFER:
    .dw XT_DOCREATE
    .dw XT_COMPILE
    .dw PFA_DODEFER

    .dw XT_EDP
    .dw XT_EFETCH
    .dw XT_DUP
    .dw XT_COMMA
    .dw XT_COMPILE
    .dw XT_EDEFERFETCH
    .dw XT_COMPILE
    .dw XT_EDEFERSTORE
    .dw XT_1PLUS
    .dw XT_1PLUS
    .dw XT_EDP
    .dw XT_ESTORE
    .dw XT_EXIT
