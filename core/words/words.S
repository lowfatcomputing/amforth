; ( -- ) 
; Tools
; prints a list of all (visible) words in the dictionary
VE_WORDS:
    .word 0xff05
    .string "words"
    .word VE_HEAD
    .set VE_HEAD, VE_WORDS
XT_WORDS:
    .word DO_COLON
PFA_WORDS:
    .word XT_DOLITERAL
    .word EE_ORDERLIST
    .word XT_FETCHE
    .word XT_SHOWWORDLIST
    .word XT_EXIT
