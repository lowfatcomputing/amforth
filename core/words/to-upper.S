; ( c -- C ) 
; String
; if c is a lowercase letter convert it to uppercase
VE_TOUPPER:
    .word 0xff07 
    .string "toupper"
    .word VE_HEAD
    .set VE_HEAD, VE_TOUPPER
XT_TOUPPER:
    .word DO_COLON 
PFA_TOUPPER:
    .word XT_DUP 
    .word XT_DOLITERAL 
    .word 'a' 
    .word XT_DOLITERAL 
    .word 'z'+1
    .word XT_WITHIN 
    .word XT_DOCONDBRANCH
    .word PFA_TOUPPER0 
    .word XT_DOLITERAL
    .word 0xdf ; inverse of 0x20
    .word XT_AND 
PFA_TOUPPER0:
    .word XT_EXIT 
