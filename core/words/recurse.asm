; ( -- ) 
; Compiler
; compile the XT of the word currently being defined into the dictionary
VE_RECURSE:
    .dw $0007
    .db "recurse",0
    .dw VE_HEAD
    .set VE_HEAD = VE_RECURSE
XT_RECURSE:
    .dw DO_COLON
PFA_RECURSE:
    .dw XT_DOLITERAL
    .dw COLON_XT
    .dw XT_FETCH
    .dw XT_COMMA
    .dw XT_EXIT
