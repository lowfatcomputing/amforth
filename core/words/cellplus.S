; ( a-addr1 -- a-addr2 ) 
; Arithmetics
; add the size of an address-unit to a-addr1
VE_CELLPLUS:
    .word 0xff05
    .string "cell+"
    .word VE_HEAD
    .set VE_HEAD, VE_CELLPLUS
XT_CELLPLUS:
    .word PFA_CELLPLUS
PFA_CELLPLUS:
    adiw tosl, CELLSIZE
    jmp_ DO_NEXT
