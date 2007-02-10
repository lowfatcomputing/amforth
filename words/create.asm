; ( -- )
; R( -- )
VE_CREATE:
    .db $6, "create",0
    .dw VE_HEAD
    .set VE_HEAD = VE_CREATE
XT_CREATE:
    .dw DO_COLON
PFA_CREATE:
    .dw XT_BL
    .dw XT_WORD
    .dw XT_DOCREATE
    .dw XT_DOLITERAL
    .dw XT_DOVARIABLE
    .dw XT_COMMA
    .dw XT_EXIT
