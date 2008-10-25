; ( -- ) Compiler
; R( -- )
; create named entry in the dictionary
VE_CODE:
    .dw $ff04
    .db "code"
    .dw VE_HEAD
    .set VE_HEAD = VE_CODE
XT_CODE:
    .dw DO_COLON
PFA_CODE:
    .dw XT_DOCREATE
    .dw XT_HERE
    .dw XT_1PLUS
    .dw XT_COMMA
    .dw XT_EXIT
