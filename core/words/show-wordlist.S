; ( wid -- ) 
; Tools
; prints the name of the words in a wordlist
VE_SHOWWORDLIST:
    .word 0xff0d
    .string "show-wordlist"
    .word VE_HEAD
    .set VE_HEAD, VE_SHOWWORDLIST
XT_SHOWWORDLIST:
    .word DO_COLON
PFA_SHOWWORDLIST:
    .word XT_DOLITERAL
    .word XT_SHOWWORD
    .word XT_SWAP
    .word XT_TRAVERSEWORDLIST
    .word XT_EXIT

XT_SHOWWORD:
    .word DO_COLON
PFA_SHOWWORD:
    .word XT_NAME2STRING
    .word XT_ITYPE
    .word XT_SPACE         ; ( -- addr n)
    .word XT_TRUE
    .word XT_EXIT

