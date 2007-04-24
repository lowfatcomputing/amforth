; ( -- ) Tools
; R( -- )
; emits a list of all (visible) words in the dictionary
VE_WORDS:
    .db $05, "words"
    .dw VE_HEAD
    .set VE_HEAD = VE_WORDS
XT_WORDS:
    .dw DO_COLON
PFA_WORDS:
    .dw XT_HEAD
    .dw XT_EFETCH
PFA_WORDS1:
    .dw XT_DUP           ; ( -- addr addr ) 
    .dw XT_NOTEQUALZERO  ; ( -- addr f )
    .dw XT_DOCONDBRANCH  ; ( -- addr ) is nfa = counted string
    .dw PFA_WORDS2       ; 
 
    .dw XT_ICOUNT   ; ( -- adr n )
    .dw XT_DOLITERAL
    .dw $1F
    .dw XT_AND      ; mask immediate bit
    .dw XT_OVER
    .dw XT_OVER
    .dw XT_ITYPE    ; ( -- adr n  )

    .dw XT_2SLASH   ; ( -- adr k )
    .dw XT_1PLUS    ; ( -- adr k+1 )
    .dw XT_PLUS     ; ( -- adrk+1 )

    .dw XT_SPACE         ; emit space
    .dw XT_IFETCH        ; ( -- addr )
    .dw XT_DOBRANCH      ; ( -- addr )
    .dw PFA_WORDS1       ; ( -- addr )

PFA_WORDS2:
    .dw XT_DROP          ; ( addr --  )
    .dw XT_EXIT

