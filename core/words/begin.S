; ( -- ) (C: -- dest ) 
; Compiler
; put the next location for a transfer of control onto the control flow stack
VE_BEGIN:
    .word 0x0005
    .string "begin"
    .word VE_HEAD
    .set VE_HEAD, VE_BEGIN
XT_BEGIN:
    .word DO_COLON
PFA_BEGIN:
    .word XT_LMARK
    .word XT_EXIT
