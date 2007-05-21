; ( n <name> -- ) Compiler
; R( -- )
; allocate space for 1 cell in EEPROM. used in conjunction with TO
VE_VALUE:
    .db $05, "value"
    .dw VE_HEAD
    .set VE_HEAD = VE_VALUE
XT_VALUE:
    .dw DO_COLON
PFA_VALUE:
    .dw XT_DOCREATE
    .dw XT_COMPILE
    .dw PFA_DOVALUE
    .dw XT_EDP
    .dw XT_EFETCH
    .dw XT_DUP
    .dw XT_COMMA
    .dw XT_DUP
    .dw XT_1PLUS
    .dw XT_1PLUS
    .dw XT_EDP
    .dw XT_ESTORE
    .dw XT_ESTORE
    .dw XT_EXIT

PFA_DOVALUE:
    call_ DO_DODOES
    .dw XT_IFETCH
    .dw XT_EFETCH
    .dw XT_EXIT

; : value ( n -- )
;	create edp e@ dup , dup 1+ 1+ edp e! e! does> i@ e@ ;

