; ( n1 -- n2 ) 
; Arithmetics
; logarithm to base 2 or highest set bitnumber
VE_LOG2:
    .word 0xff04
    .ascii "log2"
    .word VE_HEAD
    .set VE_HEAD, VE_LOG2
XT_LOG2:
    .word PFA_LOG2
PFA_LOG2:
    movw ZL, tosl
    clr tosh
    ldi tosl, 16
PFA_LOG2_1:
    dec tosl
    brmi PFA_LOG2_2 ; wrong data
    lsl  ZL
    rol  ZH
    brcc PFA_LOG2_1
    jmp_ DO_NEXT

PFA_LOG2_2:
    dec tosh
    jmp_ DO_NEXT
    
