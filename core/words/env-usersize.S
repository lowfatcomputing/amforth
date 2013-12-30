; ( -- usersize ) 
; Environment
; size of the USER area in bytes
VE_ENVUSERSIZE:
    .word 0xff05
    .string "/user"
    .word VE_ENVHEAD
    .set VE_ENVHEAD, VE_ENVUSERSIZE
XT_ENVUSERSIZE:
    .word DO_COLON
PFA_ENVUSERSIZE:
    .word XT_DOLITERAL
    .word SYSUSERSIZE + APPUSERSIZE
    .word XT_EXIT
