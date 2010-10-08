; ( -- c ) Tools
; R( -- )
; copy the first character of the next word as TOS
VE_CHAR:
    .dw $ff04
    .db "char"
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