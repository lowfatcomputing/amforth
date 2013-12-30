; ( -- wid ) 
; Search Order
; get the system default word list
VE_FORTH_WORDLIST:
    .word 0xff0e
    .ascii "forth-wordlist"
    .word VE_HEAD
    .set VE_HEAD, VE_FORTH_WORDLIST
XT_FORTH_WORDLIST:
    .word PFA_DOVALUE1
PFA_FORTH_WORDLIST:
    .word EE_WL_FORTH
    .word XT_EVALUEFETCH
    .word XT_EVALUESTORE
