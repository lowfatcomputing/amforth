; ( -- e-addr ) 
; System Value
; address of the next free address in eeprom
VE_EDP:
    .word 0xff03
    .string "edp"
    .word VE_HEAD
    .set VE_HEAD, VE_EDP
XT_EDP:
    .word PFA_DOVALUE1
PFA_EDP:
    .word EE_EDP
    .word XT_EVALUEFETCH
    .word XT_EVALUESTORE
