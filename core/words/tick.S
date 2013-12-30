; ( "<spaces>name" -- XT ) 
; Dictionary
; search dictionary for name, return XT or throw an exception -13
VE_TICK:
    .word 0xff01
    .string "'"
    .word VE_HEAD
    .set VE_HEAD, VE_TICK
XT_TICK:
    .word DO_COLON
PFA_TICK:
    .word XT_PARSENAME
    .word XT_FINDNAME
    .word XT_EQUALZERO
    .word XT_DOCONDBRANCH
    .word PFA_TICK1
    .word XT_DOLITERAL
    .word -13
    .word XT_THROW
PFA_TICK1:
    .word XT_EXIT
