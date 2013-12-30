; ( addr len --  ) 
; Interpreter
; recognizer for NOT FOUND
VE_REC_NOTFOUND:
    .word 0xff0c
    .ascii "rec-notfound"
    .word VE_HEAD
    .set VE_HEAD, VE_REC_NOTFOUND
XT_REC_NOTFOUND:
    .word DO_COLON
PFA_REC_NOTFOUND:
    .word XT_TYPE
    .word XT_DOLITERAL
    .word -13
    .word XT_THROW
    .word XT_EXIT
