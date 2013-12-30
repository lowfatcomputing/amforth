; ( -- recn .. rec0 n) 
; Interpreter
; Get the current recognizer list
VE_GET_RECOGNIZER:
    .word 0xff0e
    .ascii "get-recognizer"
    .word VE_HEAD
    .set VE_HEAD, VE_GET_RECOGNIZER
XT_GET_RECOGNIZER:
    .word DO_COLON
PFA_GET_RECOGNIZER:
    .word XT_DOLITERAL
    .word EE_RECOGNIZERLISTLEN
    .word XT_FETCH_EE_ARRAY
    .word XT_EXIT
