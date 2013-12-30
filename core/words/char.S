; ( "<spaces>name" -- c ) 
; Tools
; copy the first character of the next word onto the stack
VE_CHAR:
    .word 0xff04
    .ascii "char"
    .word VE_HEAD
    .set VE_HEAD, VE_CHAR
XT_CHAR:
    .word DO_COLON
PFA_CHAR:
    .word XT_PARSENAME
    .word XT_DROP
    .word XT_CFETCH
    .word XT_EXIT
