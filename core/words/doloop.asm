; ( -- )
; R(limit counter -- limit counter+1|)
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
    breq PFA_DOLOOP1
    ; next iteration
    push temp3
    push temp2
    push zh
    push zl
    rjmp PFA_DOBRANCH ; read next cell from dictionary and jump to its destination
PFA_DOLOOP1:
    pop  temp0
    pop  temp1  ; remove leave destination
    adiw xl, 1 ; skip branch-back address
    rjmp DO_NEXT
