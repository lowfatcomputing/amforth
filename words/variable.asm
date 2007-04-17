; ( -- )
; R( -- )
; create a variable entry and allocate RAM space for it
VE_VARIABLE:
    .db $08, "variable",0
    .dw VE_HEAD
    .set VE_HEAD = VE_VARIABLE
XT_VARIABLE:
    .dw DO_COLON
PFA_VARIABLE:
    .dw XT_DOCREATE
    .dw XT_COMPILE
    .dw PFA_DOVARIABLE
    .dw XT_HEAP
    .dw XT_EFETCH
    .dw XT_DUP
    .dw XT_COMMA
    .dw XT_1PLUS
    .dw XT_1PLUS
    .dw XT_HEAP
    .dw XT_ESTORE
    .dw XT_EXIT
