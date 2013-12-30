; ( -- a-addr ) 
; System Variable
; Address of the temporary scratch buffer.
VE_PAD:
    .word 0xff03
    .string "pad"
    .word VE_HEAD
    .set VE_HEAD, VE_PAD
XT_PAD:
    .word DO_COLON
PFA_PAD:
    .word XT_HERE
    .word XT_DOLITERAL
    .word 100
    .word XT_PLUS
    .word XT_EXIT
