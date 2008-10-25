; ( -- ) Compiler
; R( xt -- )
; end of current colon word
VE_EXIT:
    .dw $ff04
    .db "exit"
    .dw VE_HEAD
    .set VE_HEAD = VE_EXIT
XT_EXIT:
    .dw PFA_EXIT
PFA_EXIT:
    pop XL
    pop XH
    rjmp DO_NEXT
