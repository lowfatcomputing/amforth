; ( -- n ) 
; Environment
; maximum number of wordlists in the dictionary search order
VE_ENVWORDLISTS:
    .word 0xff09
    .string "wordlists"
    .word VE_ENVHEAD
    .set VE_ENVHEAD, VE_ENVWORDLISTS
XT_ENVWORDLISTS:
    .word DO_COLON
PFA_ENVWORDLISTS:
    .word XT_DOLITERAL
    .word NUMWORDLISTS
    .word XT_EXIT
