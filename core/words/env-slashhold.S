; ( -- hldsize ) 
; Environment
; size of the pictured numeric output buffer in bytes
VE_ENVSLASHHOLD:
    .word 0xff05
    .string "/hold"
    .word VE_ENVHEAD
    .set VE_ENVHEAD, VE_ENVSLASHHOLD
XT_ENVSLASHHOLD:
    .word DO_COLON
PFA_ENVSLASHHOLD:
    .word XT_PAD
    .word XT_HERE
    .word XT_MINUS
    .word XT_EXIT
