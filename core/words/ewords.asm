; ( -- ) Tools
; R( -- )
; emits a list of all (visible) words in the dictionary
VE_EWORDS:
    .dw $ff06
    .db "ewords"
    .dw VE_HEAD
    .set VE_HEAD = VE_EWORDS
XT_EWORDS:
    .dw DO_COLON
PFA_EWORDS:
    .dw XT_ENVHEAD
    .dw XT_EFETCH
PFA_EWORDS1:
    .dw XT_QDUP           ; ( -- addr addr )
    .dw XT_DOCONDBRANCH  ; ( -- addr ) is nfa = counted string
    .dw PFA_EWORDS2       ;
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
    .dw PFA_EWORDS1       ; ( -- addr )
PFA_EWORDS2:
    .dw XT_EXIT
