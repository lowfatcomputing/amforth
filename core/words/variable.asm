; ( -- ) Compiler
; R( -- )
; create a variable entry and allocate RAM space for it
VE_VARIABLE:
    .dw $ff08
    .db "variable"
    .dw VE_HEAD
    .set VE_HEAD = VE_VARIABLE
XT_VARIABLE:
    .dw DO_COLON
PFA_VARIABLE:
    .dw XT_DOCREATE
    .dw XT_COMPILE
    .dw PFA_DOVARIABLE
    .dw XT_HERE
    .dw XT_COMMA
    .dw XT_DOLITERAL
    .dw 2
    .dw XT_ALLOT
    .dw XT_EXIT
