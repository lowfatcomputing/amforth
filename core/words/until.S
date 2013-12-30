; ( f -- ) (C: dest -- ) 
; Compiler
; finish begin with conditional branch, leaves the loop if true flag at runtime
VE_UNTIL:
    .word 0x0005
    .string "until"
    .word VE_HEAD
    .set VE_HEAD, VE_UNTIL
XT_UNTIL:
    .word DO_COLON
PFA_UNTIL:
    .word XT_COMPILE
    .word XT_DOCONDBRANCH
    .word XT_LRESOLVE
    .word XT_EXIT
