; ( -- ) 
; Dictionary
; makes an entry in a wordlist visible, if not already done.
VE_REVEAL:
    .word 0xff06
    .ascii "reveal"
    .word VE_HEAD
    .set VE_HEAD, VE_REVEAL
XT_REVEAL:
    .word DO_COLON
PFA_REVEAL:
    .word XT_DOLITERAL
    .word COLON_SMUDGE+0
    .word XT_FETCH
    .word XT_QDUP
    .word XT_DOCONDBRANCH
    .word PFA_REVEAL1
;
    .word XT_DOLITERAL
    .word COLON_SMUDGE+2
    .word XT_FETCH		; ( NFA WID )
    .word XT_STOREE
    ; prevent duplicate actions and cooperate with :noname
    .word XT_ZERO
    .word XT_DOLITERAL
    .word COLON_SMUDGE+0
    .word XT_STORE
PFA_REVEAL1:
    .word XT_EXIT
