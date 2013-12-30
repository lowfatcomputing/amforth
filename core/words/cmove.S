; (addr-from addr-to n -- ) 
; Memory
; copy data in RAM, from lower to higher addresses
VE_CMOVE:
    .word 0xff05
    .string "cmove"
    .word VE_HEAD
    .set VE_HEAD , VE_CMOVE
XT_CMOVE:
    .word PFA_CMOVE
PFA_CMOVE:
    push XH
    push XL
    ld ZL, Y+
    ld ZH, Y+ ; addr-to
    ld XL, Y+
    ld XH, Y+ ; addr-from
    mov temp0, tosh
    or temp0, tosl
    brbs 1, PFA_CMOVE1
PFA_CMOVE2:
    ld temp1, X+
    st Z+, temp1
    sbiw tosl, 1
    brbc 1, PFA_CMOVE2
PFA_CMOVE1:
    pop XL
    pop XH
    loadtos
    jmp_ DO_NEXT
