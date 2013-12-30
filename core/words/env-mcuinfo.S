; ( -- faddr len ) 
; Environment
; flash address of some CPU specific parameters
VE_ENV_MCUINFO:
    .word 0xff08
    .ascii "mcu-info"
    .word VE_ENVHEAD
    .set VE_ENVHEAD, VE_ENV_MCUINFO
XT_ENV_MCUINFO:
    .word DO_COLON
PFA_EN_MCUINFO:
    .word XT_DOLITERAL
    .word mcu_info
    .word XT_EXIT
