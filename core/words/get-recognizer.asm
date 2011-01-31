; ( -- widn .. wid0 n) Search Order
; R( -- )
; Get the current search order list
VE_GET_RECOGNIZER:
    .dw $ff0e
    .db "get-recognizer"
    .dw VE_HEAD
    .set VE_HEAD = VE_GET_RECOGNIZER
XT_GET_RECOGNIZER:
    .dw DO_COLON
PFA_GET_RECOGNIZER:
    .dw XT_DOLITERAL
    .dw EE_RECOGNIZERLISTLEN
    .dw XT_FETCHE
    .dw XT_TO_R
    .dw XT_R_FETCH
    .dw XT_ZERO
    .dw XT_SWAP
    .dw XT_1MINUS
    .dw XT_DODO
    .dw PFA_GET_RECOGNIZER2
PFA_GET_RECOGNIZER1:
    .dw XT_DOLITERAL
    .dw EE_RECOGNIZERLIST
    .dw XT_I
    .dw XT_2STAR
    .dw XT_PLUS
    .dw XT_FETCHE 
    .dw XT_DOLITERAL
    .dw -1
    .dw XT_DOPLUSLOOP
    .dw PFA_GET_RECOGNIZER1
PFA_GET_RECOGNIZER2:
    .dw XT_R_FROM
    .dw XT_EXIT
