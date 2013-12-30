; ( -- c ) (C: "<space>name" -- )
; Tools
; skip leading space delimites, place the first COMPILEacter of the word on the stack
VE_BRACKETCOMPILE:
    .word 0x0009
    .string "[compile]"
    .word VE_HEAD
    .set VE_HEAD, VE_BRACKETCOMPILE
XT_BRACKETCOMPILE:
    .word DO_COLON
PFA_BRACKETCOMPILE:
    .word XT_COMPILE
    .word XT_COMPILE
    .word XT_TICK
    .word XT_COMMA
    .word XT_EXIT
