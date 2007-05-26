; ( limit counter -- )
; R( -- limit counter )
; runtime of do_l
;VE_DODOL:
;    .db 6, "(do_l)", 0
;    .dw VE_HEAD
;    .set VE_HEAD = VE_DODOL
XT_DODOL:
    .dw PFA_DODOL
PFA_DODOL:
    ld temp1, Y+  ; dodo
    ld temp0, Y+
    ld temp3, Y+
    ld temp2, Y+
    push temp2
    push temp3
    push temp0
    push temp1
    adiw xl, 1    ; adjust to NEXT+1 = jump over <mark (for leave) 
    rjmp DO_NEXT
