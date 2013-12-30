; ( r-addr r-len f-addr f-len --  f) 
; String
; compares two strings in RAM
VE_COMPARE:
    .word 0xff07
    .string "compare"
    .word VE_HEAD
    .set VE_HEAD, VE_COMPARE
XT_COMPARE:
    .word PFA_COMPARE
PFA_COMPARE:
    push XH
    push XL
    movw temp0, tosl
    loadtos
    movw XL, tosl
    loadtos
    movw temp2, tosl
    loadtos
    movw ZL, tosl
PFA_COMPARE_LOOP:
    ld temp4, X+
    ld temp5, Z+
    cp temp4, temp5
    brne PFA_COMPARE_NOTEQUAL
    dec temp0
    breq PFA_COMPARE_ENDREACHED2
    dec temp2
    brne PFA_COMPARE_LOOP
    rjmp PFA_COMPARE_ENDREACHED
PFA_COMPARE_ENDREACHED2:
    dec temp2
PFA_COMPARE_ENDREACHED:
    or temp0, temp2
    brne PFA_COMPARE_CHECKLASTCHAR
    clr tosl
    rjmp PFA_COMPARE_DONE
PFA_COMPARE_CHECKLASTCHAR:
PFA_COMPARE_NOTEQUAL:
    ser tosl
    rjmp PFA_COMPARE_DONE

PFA_COMPARE_DONE:
    mov tosh, tosl
    pop XL
    pop XH
    jmp_ DO_NEXT
