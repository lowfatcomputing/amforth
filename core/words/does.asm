; ( i*x -- j*y ) (R: nest-sys1 -- ) (C: colon-sys1 -- colon-sys2 )
; Compiler
; replace the runtime semantics
VE_DOES:
    .dw $0005
    .db "does>",0
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
    .dw XT_COMPILE  ; the address of this cell is used by (does>)
    .dw DO_DODOES
    .dw XT_EXIT

; ( -- )
; System
; runtime of does>
;VE_DODOES:
;   .dw $ff07
;   .db "(does>)"
;   .set VE_HEAD = VE_DODOES
XT_DODOES:
    .dw DO_COLON
PFA_DODOES:
    .dw XT_R_FROM
    .dw XT_GET_CURRENT
    .dw XT_FETCHE
    .dw XT_ICOUNT
    .dw XT_DOLITERAL
    .dw $00ff
    .dw XT_AND
    .dw XT_1PLUS
    .dw XT_2SLASH
    .dw XT_PLUS
    .dw XT_1PLUS

    .dw XT_STOREI
    .dw XT_EXIT
