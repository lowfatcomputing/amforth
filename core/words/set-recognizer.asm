; ( recn .. rec00 n -- ) Interpreter
; R( -- )
; replace the recognizer list
VE_SET_RECOGNIZER:
    .dw $ff0e
    .db "set-recognizer"
    .dw VE_HEAD
    .set VE_HEAD = VE_SET_RECOGNIZER
XT_SET_RECOGNIZER:
    .dw DO_COLON
PFA_SET_RECOGNIZER:
    .dw XT_DUP
    .dw XT_DOLITERAL
    .dw EE_RECOGNIZERLISTLEN
    .dw XT_STOREE
    
    .dw XT_ZERO
    .dw XT_DODO
    .dw PFA_SETRECOGNIZER2
PFA_SETRECOGNIZER1:
    .dw XT_DOLITERAL
    .dw EE_RECOGNIZERLIST
    .dw XT_I
    .dw XT_2STAR
    .dw XT_PLUS
    .dw XT_STOREE
    .dw XT_DOLOOP
    .dw PFA_SETRECOGNIZER1
PFA_SETRECOGNIZER2:
    .dw XT_EXIT
