; ( -- ) Compiler
; R( -- )
; see case
VE_OF:
    .db $82, "of",0
    .dw VE_HEAD
    .set VE_HEAD = VE_OF
XT_OF:
    .dw DO_COLON
PFA_OF:
    .dw XT_COMPILE
    .dw XT_OVER
    .dw XT_COMPILE
    .dw XT_EQUAL
    .dw XT_IF
    .dw XT_EXIT
