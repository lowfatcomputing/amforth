; ( n1 -- n2 ) Arithmetics
; R( -- )
; logarithm base 2 or highest set bitnumber
VE_LOG2:
    .db $04, "log2",0
    .dw VE_HEAD
    .set VE_HEAD = VE_LOG2
XT_LOG2:
    .dw PFA_LOG2
PFA_LOG2:
    movw zl, tosl
    clr tosh
    ldi temp0, 16
    mov tosl, temp0
PFA_LOG2_1:
    dec tosl
    brmi PFA_LOG2_2 ; wrong data
    lsl  zl
    rol  zh
    brcc PFA_LOG2_1
    rjmp DO_NEXT

PFA_LOG2_2:
    dec tosh
    rjmp DO_NEXT    