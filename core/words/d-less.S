; ( d1 d2 -- flag)
; Compare
; checks whether d1 is less than d2
VE_DLESS:
    .word 0xff02
    .ascii "d<"
    .word VE_HEAD
    .set VE_HEAD, VE_DLESS
XT_DLESS:
    .word DO_COLON
PFA_DLESS:
    .word XT_DMINUS
    .word XT_DLESSZERO
    .word XT_EXIT
