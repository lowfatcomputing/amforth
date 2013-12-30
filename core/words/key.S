; ( -- c ) 
; Character IO
; fetch key vector and execute it, should leave a single character on TOS
VE_KEY:
    .word 0xff03
    .string "key"
    .word VE_HEAD
    .set VE_HEAD, VE_KEY
XT_KEY:
    .word PFA_DODEFER
PFA_KEY:
    .word USER_KEY
    .word XT_UDEFERFETCH
    .word XT_UDEFERSTORE
