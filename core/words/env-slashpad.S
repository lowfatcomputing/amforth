; ( -- padsize ) 
; Environment
; Size of the PAD buffer in bytes
VE_ENVSLASHPAD:
    .word 0xff04
    .ascii "/pad"
    .word VE_ENVHEAD
    .set VE_ENVHEAD, VE_ENVSLASHPAD
XT_ENVSLASHPAD:
    .word DO_COLON
PFA_ENVSLASHPAD:
    .word XT_SP_FETCH
    .word XT_PAD
    .word XT_MINUS
    .word XT_EXIT
