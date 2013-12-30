; ( d1 -- n1 ) 
; Conversion
; shrink double cell value to single cell. 
VE_D2S:
    .word 0xff03
    .string "d>s"
    .word VE_HEAD
    .set VE_HEAD, VE_D2S
XT_D2S:
    .word DO_COLON
PFA_D2S:
    .word XT_DROP
    .word XT_EXIT
