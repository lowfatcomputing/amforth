; ( -- ) Control Structure
; R(loop-sys -- )
; remove loop-sys, exit a loop and continue execution after it
VE_UNLOOP:
    .dw $ff06
    .db "unloop"
    .dw VE_HEAD
    .set VE_HEAD = VE_UNLOOP
XT_UNLOOP:
    .dw PFA_UNLOOP
PFA_UNLOOP:
    pop temp1
    pop temp0
    pop temp1
    pop temp0
    pop temp1
    pop temp0
    rjmp DO_NEXT
