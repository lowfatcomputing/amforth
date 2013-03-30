; ( -- ) (C: "<spaces>name" -- )
; Compiler
; create a named entry in the dictionary, XT is DO_COLON
VE_COLON:
    .dw $ff01
    .db ":",0
    .dw VE_HEAD
    .set VE_HEAD = VE_COLON
XT_COLON:
    .dw DO_COLON
PFA_COLON:
    .dw XT_DOCREATE
.dseg
COLON_SMUDGE: .byte 4
.cseg
    .dw XT_DOLITERAL
    .dw COLON_SMUDGE+2
    .dw XT_STORE		; save wid
    .dw XT_DOLITERAL
    .dw COLON_SMUDGE+0
    .dw XT_STORE		; save NFA
    .dw XT_DP
    .dw XT_LATEST
    .dw XT_STORE
    .dw XT_COMPILE
    .dw DO_COLON
    .dw XT_RBRACKET
    .dw XT_EXIT
