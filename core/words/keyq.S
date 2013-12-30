; ( -- f) 
; Character IO
; fetch key? vector and execute it. should turn on key sender, if it is disabled/stopped
VE_KEYQ:
    .word 0xff04
    .ascii "key?"
    .word VE_HEAD
    .set VE_HEAD, VE_KEYQ
XT_KEYQ:
    .word PFA_DODEFER
PFA_KEYQ:
    .word USER_KEYQ
    .word XT_UDEFERFETCH
    .word XT_UDEFERSTORE
