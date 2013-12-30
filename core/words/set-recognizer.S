; ( recn .. rec0 n -- ) 
; Interpreter
; replace the recognizer list
VE_SET_RECOGNIZER:
    .word 0xff0e
    .ascii "set-recognizer"
    .word VE_HEAD
    .set VE_HEAD, VE_SET_RECOGNIZER
XT_SET_RECOGNIZER:
    .word DO_COLON
PFA_SET_RECOGNIZER:
    .word XT_DOLITERAL
    .word EE_RECOGNIZERLISTLEN
    .word XT_STORE_EE_ARRAY
    .word XT_EXIT

