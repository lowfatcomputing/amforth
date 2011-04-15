; ( -- c ) (C: "<space>name" -- )
; Tools
; skip leading space delimites, place the first character of the word on the stack
VE_BRACKETCHAR:
    .dw $0006
    .db "[char]"
    .dw VE_HEAD
    .set VE_HEAD = VE_BRACKETCHAR
XT_BRACKETCHAR:
    .dw DO_COLON
PFA_BRACKETCHAR:
    .dw XT_BL
    .dw XT_WORD
    .dw XT_COUNT
    .dw XT_DROP
    .dw XT_CFETCH
    .dw XT_COMPILE
    .dw XT_DOLITERAL
    .dw XT_COMMA
    .dw XT_EXIT
