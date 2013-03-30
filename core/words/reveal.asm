; ( lda wid -- ) 
; Dictionary
; makes a wordlist visible
VE_REVEAL:
    .dw $ff06
    .db "reveal"
    .dw VE_HEAD
    .set VE_HEAD = VE_REVEAL
XT_REVEAL:
    .dw DO_COLON
PFA_REVEAL:
    .dw XT_STOREE
    .dw XT_EXIT
