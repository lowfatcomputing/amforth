; ( C --  c) 
; String
; if C is an uppercase letter convert it to lowercase
VE_TOLOWER:
    .word 0xff07
    .string "tolower"
    .word VE_HEAD
    .set VE_HEAD, VE_TOLOWER
XT_TOLOWER:
    .word DO_COLON
PFA_TOLOWER:
    .word XT_DUP
    .word XT_DOLITERAL
    .word 'A'
    .word XT_DOLITERAL
    .word 'Z'+1
    .word XT_WITHIN
    .word XT_DOCONDBRANCH
    .word PFA_TOLOWER0 
    .word XT_DOLITERAL
    .word 0x20 
    .word XT_OR 
PFA_TOLOWER0:
    .word XT_EXIT 
