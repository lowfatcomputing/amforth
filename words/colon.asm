; ( -- ) Compiler
; R( -- )
; create named entry in the dictionary
VE_COLON:
    .db $1, ":"
    .dw VE_HEAD
    .set VE_HEAD = VE_COLON
XT_COLON:
    .dw DO_COLON
PFA_COLON:
    .dw XT_DOCREATE
    .dw XT_COMPILE
    .dw DO_COLON
    .dw XT_RBRACKET
    .dw XT_EXIT
