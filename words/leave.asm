; ( -- ) Control Structure
; R( loop-sys -- loop-sys )
; immediatly leave the current DO..LOOP
VE_LEAVE:
   .db 5, "leave"
   .dw VE_HEAD
   .set VE_HEAD = VE_LEAVE
XT_LEAVE:
    .dw PFA_LEAVE
PFA_LEAVE:
    pop temp0  ; drop limit and counter from returnstack
    pop temp1
    pop temp0
    pop temp1
    pop xl
    pop xh
    jmp_ DO_NEXT
