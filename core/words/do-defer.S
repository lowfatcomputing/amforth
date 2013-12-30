; ( i*x -- j*x )
; System
; runtime of defer
;VE_DOEDEFER:
;    .word 0xff0a
;    .db "(defer)", 0
;    .word VE_HEAD
;    .set VE_HEAD, VE_DOEDEFER
XT_DODEFER:
    .word PFA_DODEFER
PFA_DODEFER:
    call_ DO_DODOES
    .word XT_DUP
    .word XT_1MINUS
    .word XT_SWAP
    .word XT_1PLUS
    .word XT_FETCHI
    .word XT_EXECUTE 
    .word XT_EXECUTE
    .word XT_EXIT
