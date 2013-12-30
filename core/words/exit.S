; ( -- ) (R: nest-sys -- )
; Compiler
; end of current colon word
VE_EXIT:
    .word 0xff04
    .ascii "exit"
    .word VE_HEAD
    .set VE_HEAD, VE_EXIT
XT_EXIT:
    .word PFA_EXIT
PFA_EXIT:
    pop XL
    pop XH
    jmp_ DO_NEXT
