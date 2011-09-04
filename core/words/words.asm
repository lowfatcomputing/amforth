; ( -- ) 
; Tools
; prints a list of all (visible) words in the dictionary
VE_WORDS:
    .dw $ff05
    .db "words",0
    .dw VE_HEAD
    .set VE_HEAD = VE_WORDS
XT_WORDS:
    .dw DO_COLON
PFA_WORDS:
    .dw XT_GET_ORDER 
    .dw XT_ZERO
    .dw XT_DOQDO
    .dw PFA_WORDS2
PFA_WORDS1:
    .dw XT_SHOWWORDLIST
    .dw XT_LEAVE
PFA_WORDS2:
    .dw XT_DOLOOP
    .dw PFA_WORDS1
    .dw XT_EXIT
