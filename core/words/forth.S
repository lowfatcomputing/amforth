; ( -- ) 
; Search Order
; replace the search order list with the system default list
VE_FORTH:
    .word 0xff05
    .string "forth"
    .word VE_HEAD
    .set VE_HEAD, VE_FORTH
XT_FORTH:
    .word DO_COLON
PFA_FORTH:
    .word XT_GET_ORDER
    .word XT_SWAP
    .word XT_DROP
    .word XT_FORTH_WORDLIST
    .word XT_SWAP
    .word XT_SET_ORDER
    .word XT_EXIT
