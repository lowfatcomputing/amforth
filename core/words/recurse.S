; ( -- ) 
; Compiler
; compile the XT of the word currently being defined into the dictionary
VE_RECURSE:
    .word 0x0007
    .string "recurse"
    .word VE_HEAD
    .set VE_HEAD, VE_RECURSE
XT_RECURSE:
    .word DO_COLON
PFA_RECURSE:
    .word XT_LATEST
    .word XT_FETCH
    .word XT_COMMA
    .word XT_EXIT
