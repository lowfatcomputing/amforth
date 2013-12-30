; ( -- a-addr ) (C: "<spaces>name" -- )
; Dictionary
; create a dictionary header. XT is (constant), with the address of the data field of name
VE_CREATE:
    .word 0xff06
    .ascii "create"
    .word VE_HEAD
    .set VE_HEAD, VE_CREATE
XT_CREATE:
    .word DO_COLON
PFA_CREATE:
    .word XT_DOCREATE
    .word XT_REVEAL
    .word XT_COMPILE
    .word PFA_DOCONSTANT
    .word XT_EXIT
