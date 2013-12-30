; ( d1 d2 -- flag )
; Compare
; compares two double cell values (signed)
VE_DGREATER:
    .word 0xff02
    .ascii "d>"
    .word VE_HEAD
    .set VE_HEAD, VE_DGREATER
XT_DGREATER:
    .word DO_COLON
PFA_DGREATER:
    .word XT_DMINUS
    .word XT_DGREATERZERO
    .word XT_EXIT
