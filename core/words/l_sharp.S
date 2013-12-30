; ( -- ) 
; Numeric IO
; initialize the pictured numeric output conversion process
VE_L_SHARP:
    .word 0xff02
    .ascii "<#"
    .word VE_HEAD
    .set VE_HEAD, VE_L_SHARP
XT_L_SHARP:
    .word DO_COLON
PFA_L_SHARP:
    .word XT_PAD
    .word XT_HLD
    .word XT_STORE
    .word XT_EXIT
