; ( -- ) Compiler
; R( -- )
; formal finish of a code definition
VE_ENDCODE:
    .db $8, "end-code",0
    .dw VE_HEAD
    .set VE_HEAD = VE_ENDCODE
XT_ENDCODE:
    .dw DO_COLON
PFA_ENDCODE:
    .dw XT_COMPILE
    .dw $940c
    .dw XT_COMPILE
    .dw DO_NEXT
    .dw XT_EXIT
