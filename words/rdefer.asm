; ( n <name> -- ) Compiler
; R( -- )
; creates a RAM based defer vector
VE_RDEFER:
    .db $06, "Rdefer",0
    .dw VE_HEAD
    .set VE_HEAD = VE_RDEFER
XT_RDEFER:
    .dw DO_COLON
PFA_RDEFER:
    .dw XT_DOCREATE
    .dw XT_COMPILE
    .dw PFA_DODEFER

    .dw XT_HEAP
    .dw XT_EFETCH
    .dw XT_COMMA
    .dw XT_DOLITERAL
    .dw 2
    .dw XT_ALLOT

    .dw XT_COMPILE
    .dw XT_RDEFERFETCH
    .dw XT_COMPILE
    .dw XT_RDEFERSTORE
    .dw XT_EXIT
