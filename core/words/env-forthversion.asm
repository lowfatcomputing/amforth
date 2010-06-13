; ( -- addr len ) Environment
; R( -- )
; address of the amforth name
VE_ENV_FORTHVERSION:
    .dw $ff07
    .db "version",0
    .dw VE_ENVHEAD
    .set VE_ENVHEAD = VE_ENV_FORTHVERSION
XT_ENV_FORTHVERSION:
    .dw DO_COLON
PFA_EN_FORTHVERSION:
    .dw XT_SLITERAL
    .dw 3
    .db "4.0",0
    .dw XT_EXIT
