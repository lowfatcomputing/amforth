; ( addr -- ) Compiler
; R( -- )
; finish if
VE_THEN:
    .db $84, "then",0
    .dw VE_HEAD
    .set VE_HEAD = VE_THEN
XT_THEN:
    .dw DO_COLON
PFA_THEN:
    .dw XT_GRESOLVE
    .dw XT_EXIT
