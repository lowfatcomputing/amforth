; ( -- wid ) 
; Search Order
; create a new, empty wordlist
VE_WORDLIST:
    .word 0xff08
    .ascii "wordlist"
    .word VE_HEAD
    .set VE_HEAD, VE_WORDLIST
XT_WORDLIST:
    .word DO_COLON
PFA_WORDLIST:
    .word XT_EDP
    .word XT_ZERO
    .word XT_OVER
    .word XT_STOREE
    .word XT_DUP
    .word XT_1PLUS
    .word XT_1PLUS
    .word XT_DOTO
    .word PFA_EDP
    .word XT_EXIT
