; ( n <name> -- ) 
; Compiler
; create a dictionary entry for a value and allocate 1 cell in EEPROM.
VE_VALUE:
    .word 0xff05
    .string "value"
    .word VE_HEAD
    .set VE_HEAD, VE_VALUE
XT_VALUE:
    .word DO_COLON
PFA_VALUE:
    .word XT_DOVALUE
    .word XT_EDP
    .word XT_COMMA
    .word XT_COMPILE
    .word XT_EVALUEFETCH
    .word XT_COMPILE
    .word XT_EVALUESTORE
    .word XT_EDP
    .word XT_DUP
    .word XT_1PLUS
    .word XT_1PLUS
    .word XT_DOTO
    .word PFA_EDP
    .word XT_STOREE
    .word XT_EXIT

XT_EVALUEFETCH:
    .word DO_COLON
PFA_EVALUEFETCH:
    .word XT_FETCHI
    .word XT_FETCHE
    .word XT_EXIT

XT_EVALUESTORE:
    .word DO_COLON
PFA_EVALUESTORE:
    .word XT_FETCHI
    .word XT_STOREE
    .word XT_EXIT
