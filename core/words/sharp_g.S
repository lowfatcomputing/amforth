; ( d1 -- addr count ) 
; Numeric IO
; Pictured Numeric Output: convert PNO buffer into an string
VE_SHARP_G:
    .word 0xff02
    .ascii "#>"
    .word VE_HEAD
    .set VE_HEAD, VE_SHARP_G
XT_SHARP_G:
    .word DO_COLON
PFA_SHARP_G:
    .word XT_2DROP
    .word XT_HLD
    .word XT_FETCH
    .word XT_DUP
    .word XT_PAD
    .word XT_SWAP
    .word XT_MINUS
    .word XT_EXIT
