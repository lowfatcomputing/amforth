; (R: -- nest-sys ) (C: "<spaces>name" -- colon-sys )
; Compiler
; create named entry in the dictionary, XT is COLON
VE_COLON:
    .dw $ff01
    .db ":",0
    .dw VE_HEAD
    .set VE_HEAD = VE_COLON
XT_COLON:
    .dw DO_COLON
PFA_COLON:
    .dw XT_DOCREATE
    .dw XT_DOLITERAL
    .dw COLON_SMUDGE
.dseg
COLON_SMUDGE: .byte 2
.cseg
    .dw XT_STORE
    
    .dw XT_DP
    .dw XT_DOLITERAL
    .dw COLON_XT
.dseg
COLON_XT: .byte 2
.cseg
    .dw XT_STORE
    
    .dw XT_COMPILE
    .dw DO_COLON

    .dw XT_RBRACKET
    .dw XT_EXIT
