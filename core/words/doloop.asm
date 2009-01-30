; ( -- )
; R( leave-addr limit counter -- leave-addr limit counter+1|)
; runtime of loop
;VE_DOLOOP:
;    .dw $ff06
;    .db "(loop)"
;    .dw VE_HEAD
;    .set VE_HEAD = VE_DOLOOP
XT_DOLOOP:
    .dw PFA_DOLOOP
PFA_DOLOOP:
    pop zl
    pop zh
    adiw zl,1
    pop temp2
    pop temp3
    cp zl, temp2
    cpc zh, temp3
    breq PFA_DOPLUSLOOP1
    rjmp PFA_DOPLUSLOOP3
