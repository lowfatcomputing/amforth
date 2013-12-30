; ( a-addr u c -- ) 
; Memory
; fill u bytes memory beginning at a-addr with character c
VE_FILL:
    .word 0xff04
    .ascii "fill"
    .word VE_HEAD
    .set VE_HEAD, VE_FILL
XT_FILL:
    .word DO_COLON
PFA_FILL:
    .word XT_ROT
    .word XT_ROT
    .word XT_ZERO
    .word XT_DOQDO
    .word PFA_FILL2
PFA_FILL1:
    .word XT_2DUP
    .word XT_CSTORE  ; ( -- c c-addr)
    .word XT_1PLUS
    .word XT_DOLOOP
    .word PFA_FILL1
PFA_FILL2:
    .word XT_DROP
    .word XT_DROP
    .word XT_EXIT
