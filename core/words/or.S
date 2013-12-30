; ( n1 n2 -- n3 ) 
; Logic
; logical or
VE_OR:
    .word 0xff02
    .ascii "or"
    .word VE_HEAD
    .set VE_HEAD, VE_OR
XT_OR:
    .word PFA_OR
PFA_OR:
    ld temp0, Y+
    ld temp1, Y+
    or tosl, temp0
    or tosh, temp1
    jmp_ DO_NEXT

