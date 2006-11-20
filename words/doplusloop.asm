; ( n1 -- )
; R:(llimit counter -- (limit counter+n1)|)
VE_DOPLUSLOOP:
    .db 7, "(+loop)"
    .dw VE_HEAD
    .set VE_HEAD = VE_DOPLUSLOOP
XT_DOPLUSLOOP:
    .dw PFA_DOPLUSLOOP
PFA_DOPLUSLOOP:
    pop zh
    pop zl
    ld temp1, Y+
    ld temp0, Y+
    add zl, temp0
    adc zh, temp1
    pop temp1
    pop temp0
    cp zl, temp0
    cpc zh, temp1
    brge PFA_DOLOOP1 ; exit loop
    ; next iteration
    push temp0
    push temp1
    push zl
    push zh
    rjmp PFA_DOBRANCH ; read next cell from dictionary and jump to its destination
PFA_DOPLUSLOOP1:
    adiw xl, 1
    rjmp DO_NEXT
