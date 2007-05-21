; ( -- ) Compiler
; R( -- )
; 
VE_DOES:
    .db $85, "does>"
    .dw VE_HEAD
    .set VE_HEAD = VE_DOES
XT_DOES:
    .dw DO_COLON
PFA_DOES:
    .dw XT_DOLITERAL
    .dw XT_DODOES
    .dw XT_COMMA
    .dw XT_COMPILE
    .dw $940e       ; code for call
    .dw XT_COMPILE; the address of this cell is used by (does>)
    .dw DO_DODOES
    .dw XT_EXIT

; ( -- )
;R( -- )
; runtime of does>
;VE_DODOES:
;   .db $07, "(does>)"
;   .set VE_HEAD = VE_DODOES
XT_DODOES:
    .dw DO_COLON
PFA_DODOES:
    .dw XT_R_FROM
    .dw XT_HEAD
    .dw XT_EFETCH
    .dw XT_DUP
    .dw XT_IFETCH
    .dw XT_DOLITERAL
    .dw $001f
    .dw XT_AND
    .dw XT_2SLASH
    .dw XT_1PLUS
    .dw XT_PLUS
    .dw XT_1PLUS
    
    .dw XT_ISTORE
    .dw XT_EXIT
