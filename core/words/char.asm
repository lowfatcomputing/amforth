; ( -- c ) Tools
; R( -- )
; first character of the next word
VE_CHAR:
    .db $4, "char",0
    .dw VE_HEAD
    .set VE_HEAD = VE_CHAR
XT_CHAR:
    .dw DO_COLON
PFA_CHAR:
    .dw XT_BL
    .dw XT_WORD
    .dw XT_COUNT
    .dw XT_DROP
    .dw XT_CFETCH
    .dw XT_EXIT