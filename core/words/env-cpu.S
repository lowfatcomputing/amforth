; ( -- faddr len ) 
; Environment
; flash address of the CPU identification string
VE_ENV_CPU:
    .word 0xff03
    .string "cpu"
    .word VE_ENVHEAD
    .set VE_ENVHEAD, VE_ENV_CPU
XT_ENV_CPU:
    .word DO_COLON
PFA_EN_CPU:
    .word XT_DOLITERAL
    .word mcu_name
    .word XT_ICOUNT
    .word XT_EXIT
