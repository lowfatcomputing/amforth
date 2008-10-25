; ( -- ) Tools
; R( -- )
; emits a list of all (visible) words in the dictionary
VE_WORDS:
    .dw $ff05
    .db "words",0
    .dw VE_HEAD
    .set VE_HEAD = VE_WORDS
XT_WORDS:
    .dw DO_COLON
PFA_WORDS:
    .dw XT_HEAD
PFA_WORDS1:
    .dw XT_QDUP           ; ( -- addr addr )
    .dw XT_DOCONDBRANCH  ; ( -- addr ) is nfa = counted string
    .dw PFA_WORDS2       ;
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
    .dw PFA_WORDS1       ; ( -- addr )

PFA_WORDS2:
    .dw XT_EXIT

