; ( -- faddr len ) 
; Environment
; flash address of the amforth name string
VE_ENV_FORTHNAME:
    .word 0xff0a
    .ascii "forth-name"
    .word VE_ENVHEAD
    .set VE_ENVHEAD, VE_ENV_FORTHNAME
XT_ENV_FORTHNAME:
    .word DO_COLON
PFA_EN_FORTHNAME:
    .word XT_DOSLITERAL
    .word 7
    .string "amforth"
    .word XT_EXIT
