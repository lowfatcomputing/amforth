; ( -- ) (R: loop-sys1 -- loop-sys2| )
; System
; runtime of loop
;VE_DOLOOP:
;    .word 0xff06
;    .ascii "(loop)"
;    .word VE_HEAD
;    .set VE_HEAD, VE_DOLOOP
XT_DOLOOP:
    .word PFA_DOLOOP
PFA_DOLOOP:
    pop ZL
    pop ZH
    adiw ZL,1
    pop temp2
    pop temp3
    cp ZL, temp2
    cpc ZH, temp3
    breq PFA_DOPLUSLOOP1
    jmp_ PFA_DOPLUSLOOP3
