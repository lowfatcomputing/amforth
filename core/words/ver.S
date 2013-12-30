; ( -- ) 
; Tools
; print the version string
VE_VER:
    .word 0xff03
    .string "ver"
    .word VE_HEAD
    .set VE_HEAD, VE_VER
XT_VER:
    .word DO_COLON
PFA_VER:
    .word XT_ENV_FORTHNAME
    .word XT_ITYPE
    .word XT_SPACE
    .word XT_BASE
    .word XT_FETCH
    .word XT_TO_R
    .word XT_DECIMAL

    .word XT_ENV_FORTHVERSION
    .word XT_S2D
    .word XT_L_SHARP
    .word XT_SHARP
    .word XT_DOLITERAL
    .word '.'
    .word XT_HOLD
    .word XT_SHARP_S
    .word XT_SHARP_G
    .word XT_R_FROM
    .word XT_BASE
    .word XT_STORE

    .word XT_TYPE
    .word XT_SPACE
    .word XT_ENV_CPU
    .word XT_ITYPE
    .word XT_EXIT
