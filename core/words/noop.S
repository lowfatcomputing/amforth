; ( -- ) 
; Tools
; do nothing
VE_NOOP:
    .word 0xff04
    .ascii "noop"
    .word VE_HEAD
    .set VE_HEAD, VE_NOOP
XT_NOOP:
    .word PFA_NOOP
PFA_NOOP:
    jmp_ DO_NEXT
