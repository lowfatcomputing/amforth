; ( -- ) 
; R: ( xt -- )
; end of current colon word
VE_EXIT:
    .db $04, "exit",0
    .dw VE_HEAD
    .set VE_HEAD = VE_EXIT
XT_EXIT:
    .dw PFA_EXIT
PFA_EXIT:
    pop xh
    pop xl
    rjmp DO_NEXT
;;;;;;;;;;;;;;;;;;;;;;;;;;
