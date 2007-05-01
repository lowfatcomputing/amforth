; ( -- )
; R(limit counter -- limit counter+1|)
; runtime of loop
;VE_DOLOOP:
;    .db 6, "(loop)", 0
;    .dw VE_HEAD
;    .set VE_HEAD = VE_DOLOOP
XT_DOLOOP:
    .dw PFA_DOLOOP
PFA_DOLOOP:
    pop zl
    pop zh
    adiw zl,1
    rjmp PFA_DOPLUSLOOP4
