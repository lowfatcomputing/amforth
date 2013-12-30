; ( d -- 0 ) 
; Numeric IO
; pictured numeric output: convert all digits until 0 (zero) is reached
VE_SHARP_S:
    .word 0xff02
    .ascii "#s"
    .word VE_HEAD
    .set VE_HEAD, VE_SHARP_S
XT_SHARP_S:
    .word DO_COLON
PFA_SHARP_S:
    .word XT_SHARP
    .word XT_2DUP
    .word XT_OR
    .word XT_EQUALZERO
    .word XT_DOCONDBRANCH
    .word PFA_SHARP_S
    .word XT_EXIT
