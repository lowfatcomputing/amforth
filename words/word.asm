; ( -- addr )
VE_WORD:
    .db $04, "word",0
    .dw VE_HEAD
    .set VE_HEAD = VE_WORD
XT_WORD:
    .dw DO_COLON
PFA_WORD:
    .dw XT_ZERO
    .dw XT_TO_R
PFA_WORD2:
    .dw XT_G_IN
    .dw XT_FETCH
    .dw XT_NUMBERTIB
    .dw XT_FETCH
    .dw XT_NOTEQUAL
    .dw XT_DOCONDBRANCH
    .dw PFA_WORD6
    
    .dw XT_TIB
    .dw XT_G_IN
    .dw XT_FETCH
    .dw XT_PLUS
    .dw XT_CFETCH
    .dw XT_G_IN
    .dw XT_FETCH
    .dw XT_1PLUS
    .dw XT_G_IN
    .dw XT_STORE
    .dw XT_OVER
    .dw XT_OVER
    .dw XT_NOTEQUAL
    .dw XT_DOCONDBRANCH
    .dw PFA_WORD3
    ; character can be stored to PAD
    .dw XT_PAD
    .dw XT_R_FROM
    .dw XT_1PLUS
    .dw XT_DUP
    .dw XT_TO_R
    .dw XT_PLUS
    .dw XT_STORE ; we want trailing zero byte!
    .dw XT_DOBRANCH
    .dw PFA_WORD2
PFA_WORD3:
    ; either skip starting characters or stop iterating
    .dw XT_DROP
    .dw XT_R_FROM
    .dw XT_DUP
    .dw XT_TO_R
    .dw XT_NOTEQUALZERO
    .dw XT_DOCONDBRANCH
    .dw PFA_WORD2
PFA_WORD6:
    .dw XT_R_FROM
    .dw XT_PAD
    .dw XT_CSTORE
    .dw XT_DROP    
    .dw XT_PAD
    .dw XT_EXIT
