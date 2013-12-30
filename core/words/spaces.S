; ( n -- ) 
; Character IO
; emits n space(s) (bl)
VE_SPACES:
    .word 0xff06
    .ascii "spaces"
    .word VE_HEAD
    .set VE_HEAD, VE_SPACES
XT_SPACES:
    .word DO_COLON
PFA_SPACES:
    .word XT_DUP
    .word XT_GREATERZERO
    .word XT_AND
    .word XT_ZERO
    .word XT_DOQDO
    .word PFA_SPACES2
PFA_SPACES1:
    .word XT_SPACE
    .word XT_DOLOOP
    .word PFA_SPACES1
PFA_SPACES2:
    .word XT_EXIT
