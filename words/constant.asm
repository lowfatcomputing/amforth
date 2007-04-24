; ( n -- ) Compiler
; R( -- )
; create a named constant
VE_CONSTANT:
    .db $08, "constant",0
    .dw VE_HEAD
    .set VE_HEAD = VE_CONSTANT
XT_CONSTANT:
    .dw DO_COLON
PFA_CONSTANT:
    .dw XT_DOCREATE
    .dw XT_COMPILE
    .dw PFA_DOVARIABLE
    .dw XT_COMMA
    .dw XT_EXIT

