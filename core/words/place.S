; ( addr1 len1 addr2 -- ) 
; String
; copy string as counted string
VE_PLACE:
    .word 0xff05
    .string "place"
    .word VE_HEAD
    .set VE_HEAD, VE_PLACE
XT_PLACE:
    .word DO_COLON
PFA_PLACE:
    .word XT_2DUP        ; ( -- addr1 len1 addr2 len1 addr2)
    .word XT_CSTORE      ; ( -- addr1 len1 addr2)
    .word XT_1PLUS       ; ( -- addr1 len1 addr2')
    .word XT_SWAP        ; ( -- addr1 addr2' len1)
    .word XT_CMOVE_G     ; ( --- )
    .word XT_EXIT
