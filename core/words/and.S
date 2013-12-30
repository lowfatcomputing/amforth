; ( n1 n2 -- n3 ) 
; Logic
; bitwise and
VE_AND:
    .word 0xff03
    .string "and"
    .word VE_HEAD
    .set VE_HEAD, VE_AND
XT_AND:
    .word PFA_AND
PFA_AND:
    ld temp0, Y+
    ld temp1, Y+
    and tosl, temp0
    and tosh, temp1
    jmp_ DO_NEXT
