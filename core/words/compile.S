; ( -- ) 
; Dictionary
; read the following cell from the dictionary and append it to the current dictionary position.
VE_COMPILE:
    .word 0xff07
    .string "compile"
    .word  VE_HEAD
    .set VE_HEAD, VE_COMPILE
XT_COMPILE:
    .word DO_COLON
PFA_COMPILE:
    .word XT_R_FROM
    .word XT_DUP
    .word XT_1PLUS
    .word XT_TO_R
    .word XT_FETCHI
    .word XT_COMMA
    .word XT_EXIT

