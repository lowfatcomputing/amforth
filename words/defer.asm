; ( n <name> -- ) Compiler
; R( -- )
; allocate space for 1 cell in EEPROM. used in conjunction with TO
VE_DEFER:
    .db $05, "defer"
    .dw VE_HEAD
    .set VE_HEAD = VE_DEFER
XT_DEFER:
    .dw DO_COLON
PFA_DEFER:
    .dw XT_DOCREATE
    .dw XT_COMPILE
    .dw PFA_DODEFER
    .dw XT_EDP
    .dw XT_EFETCH
    .dw XT_DUP
    .dw XT_COMMA
    .dw XT_DUP
    .dw XT_1PLUS
    .dw XT_1PLUS
    .dw XT_EDP
    .dw XT_ESTORE
    .dw XT_ESTORE
    .dw XT_EXIT

