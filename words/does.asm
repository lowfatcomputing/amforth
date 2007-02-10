; ( -- )
; R( -- )
; compile (does)
; compile (colon)
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
    .dw XT_DOLITERAL
    .dw $940e
    .dw XT_COMMA
    .dw XT_DOLITERAL 
    .dw DO_DODOES
    .dw XT_COMMA ; the address of this cell is used by (does>)
    .dw XT_EXIT

; R> LATEST @ NAME> i! ;

XT_DODOES:
    .dw DO_COLON
PFA_DODOES:
    .dw XT_R_FROM
    ; LATEST
    .dw XT_HEAD
    .dw XT_EFETCH
    ; NAME>
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
