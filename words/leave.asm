; ( -- )
; R(next limit counter -- next )
; runtime of leave
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
    rjmp DO_NEXT
