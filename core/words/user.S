; ( n cchar -- ) 
; Compiler
; create a dictionary entry for a user variable at offset n
VE_USER:
    .word 0xff04
    .ascii "user"
    .word VE_HEAD
    .set VE_HEAD, VE_USER
XT_USER:
    .word DO_COLON
PFA_USER:
    .word XT_DOCREATE
    .word XT_REVEAL

    .word XT_COMPILE
    .word PFA_DOUSER
    .word XT_COMMA
    .word XT_EXIT
