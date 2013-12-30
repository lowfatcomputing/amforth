; ( -- ) System
; R( -- )
; prints the date and time the hex file was generated
VE_BUILT:
    .word 0xff05
    .string "built"
    .word VE_HEAD
    .set VE_HEAD, VE_BUILT
XT_BUILT:
    .word DO_COLON
PFA_BUILT:
    .word XT_DOSLITERAL
    .word 11
    .db __DATE__,0 ; generated from assembler
    .word XT_ITYPE
    .word XT_SPACE
    .word XT_DOSLITERAL
    .word 8
    .db __TIME__ ; generated from assembler
    .word XT_ITYPE
    .word XT_EXIT
