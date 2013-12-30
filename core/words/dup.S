; ( n -- n n ) 
; Stack
; duplicate TOS
VE_DUP:
    .word 0xff03
    .string "dup"
    .word VE_HEAD
    .set VE_HEAD, VE_DUP
XT_DUP:
    .word PFA_DUP
PFA_DUP:
    savetos
    jmp_ DO_NEXT
