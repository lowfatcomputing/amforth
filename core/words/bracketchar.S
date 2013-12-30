; ( -- c ) (C: "<space>name" -- )
; Tools
; skip leading space delimites, place the first character of the word on the stack
VE_BRACKETCHAR:
    .word 0x0006
    .ascii "[char]"
    .word VE_HEAD
    .set VE_HEAD, VE_BRACKETCHAR
XT_BRACKETCHAR:
    .word DO_COLON
PFA_BRACKETCHAR:
    .word XT_COMPILE
    .word XT_DOLITERAL
    .word XT_CHAR
    .word XT_COMMA
    .word XT_EXIT
