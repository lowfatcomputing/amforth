; ( wid -- ) Tools
; R( -- )
; prints the names o all words in a wordlist
VE_SHOWWORDLIST:
    .dw $ff0d
    .db "show-wordlist",0
    .dw VE_HEAD
    .set VE_HEAD = VE_SHOWWORDLIST
XT_SHOWWORDLIST:
    .dw DO_COLON
PFA_SHOWWORDLIST:
    .dw XT_EFETCH
PFA_SHOWWORDLIST3:
    .dw XT_QDUP           ; ( -- addr addr )
    .dw XT_DOCONDBRANCH  ; ( -- addr ) is nfa = counted string
    .dw PFA_SHOWWORDLIST2       ;
    .dw XT_ICOUNT   ; ( -- addr n )
    .dw XT_DOLITERAL
    .dw $00FF
    .dw XT_AND      ; mask immediate bit
    .dw XT_OVER
    .dw XT_OVER
    .dw XT_ITYPE
    .dw XT_SPACE         ; ( -- addr n)

    .dw XT_1PLUS
    .dw XT_2SLASH   ; ( -- addr (n+1)/2 )
    .dw XT_PLUS
    .dw XT_IFETCH        ; ( -- addr )
    .dw XT_DOBRANCH      ; ( -- addr )
    .dw PFA_SHOWWORDLIST3       ; ( -- addr )
PFA_SHOWWORDLIST2:
    .dw XT_EXIT
