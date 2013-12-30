; ( -- n )
; Environment
; version number of amforth
VE_ENV_FORTHVERSION:
    .word 0xff07
    .string "version"
    .word VE_ENVHEAD
    .set VE_ENVHEAD, VE_ENV_FORTHVERSION
XT_ENV_FORTHVERSION:
    .word DO_COLON
PFA_EN_FORTHVERSION:
    .word XT_DOLITERAL
    .word 52
    .word XT_EXIT
