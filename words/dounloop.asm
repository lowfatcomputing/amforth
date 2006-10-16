; ( -- )
; R:(loop-sys -- )
VE_DOUNLOOP:
    .db 8, "(unloop)", 0
    .dw VE_LATEST
    .set VE_LATEST = VE_DOUNLOOP
XT_DOUNLOOP:
    .dw PFA_DOUNLOOP
PFA_DOUNLOOP:
    pop temp1
    pop temp0
    pop temp1
    pop temp0
    rjmp DO_NEXT
