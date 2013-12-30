; ( -- n ) (R: loop-sys1 loop-sys2 -- loop-sys1 loop-sys2)
; Compiler
; loop counter of outer loop
VE_J:
    .word 0xFF01
    .string "j"
    .word VE_HEAD
    .set VE_HEAD, VE_J
XT_J:
    .word DO_COLON
PFA_J:
    .word XT_RP_FETCH
    .word XT_DOLITERAL
    .word 9
    .word XT_PLUS
    .word XT_FETCH
    .word XT_EXIT
