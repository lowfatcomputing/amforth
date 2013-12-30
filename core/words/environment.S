; ( -- wid) 
; System Value
; word list identifier of the environmental search list
VE_ENVIRONMENT:
    .word 0xff0b
    .string "environment"
    .word VE_HEAD
    .set VE_HEAD, VE_ENVIRONMENT
XT_ENVIRONMENT:
    .word PFA_DOVARIABLE
PFA_ENVIRONMENT:
    .word EE_ENVIRONMENT
