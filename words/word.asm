; ( c -- addr )
; R( -- )
; skip leading delimiter characters and parses TIB to the next delimiter. copy the word into PAD
VE_WORD:
    .db $04, "word",0
    .dw VE_HEAD
    .set VE_HEAD = VE_WORD
XT_WORD:
    .dw DO_COLON
PFA_WORD:
    .dw XT_ZERO          ; ( -- c 0 )
    .dw XT_TO_R
PFA_WORD2:
    .dw XT_G_IN
    .dw XT_FETCH         ; ( -- c >in )
    .dw XT_NUMBERTIB
    .dw XT_FETCH         ; ( -- c >in #in)
    .dw XT_NOTEQUAL
    .dw XT_DOCONDBRANCH
    .dw PFA_WORD6

    .dw XT_TIB            ; ( -- c tib )
    .dw XT_G_IN
    .dw XT_FETCH          ; ( -- c tib >in )
    .dw XT_PLUS
    .dw XT_CFETCH         ; ( -- cdelim cinput )
    .dw XT_DOLITERAL
    .dw 1
    .dw XT_G_IN
    .dw XT_PLUSSTORE      ; >in ++ ( -- cdelim cinput )
    .dw XT_OVER
    .dw XT_OVER
    .dw XT_NOTEQUAL
    .dw XT_DOCONDBRANCH
    .dw PFA_WORD3
    ; character can be stored to PAD ( -- cdelim cinput )
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
    .dw XT_R_FETCH
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
