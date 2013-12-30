; ( c<name> -- ) 
; Compiler
; creates a defer vector which is kept in eeprom.
VE_EDEFER:
    .word 0xff06
    .ascii "Edefer"
    .word VE_HEAD
    .set VE_HEAD, VE_EDEFER
XT_EDEFER:
    .word DO_COLON
PFA_EDEFER:
    .word XT_DOCREATE
    .word XT_REVEAL
    .word XT_COMPILE
    .word PFA_DODEFER

    .word XT_EDP
    .word XT_DUP
    .word XT_COMMA
    .word XT_COMPILE
    .word XT_EDEFERFETCH
    .word XT_COMPILE
    .word XT_EDEFERSTORE
    .word XT_CELLPLUS
    .word XT_DOTO
    .word PFA_EDP
    .word XT_EXIT
