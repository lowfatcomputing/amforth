; ( c-addr1 -- c-addr2 len) 
; String
; convert addr of counted string to address of the first characater and length of the string
VE_COUNT:
    .word 0xff05
    .string "count"
    .word VE_HEAD
    .set VE_HEAD, VE_COUNT
XT_COUNT:
    .word DO_COLON
PFA_COUNT:
    .word XT_DUP
    .word XT_1PLUS
    .word XT_SWAP
    .word XT_CFETCH
    .word XT_EXIT
