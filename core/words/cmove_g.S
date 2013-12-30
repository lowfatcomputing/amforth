; (addr-from addr-to n -- ) 
; Memory
; copy data in RAM from higher to lower addresses.
VE_CMOVE_G:
    .word 0xff06
    .ascii "cmove>"
    .word VE_HEAD
    .set VE_HEAD , VE_CMOVE_G
XT_CMOVE_G:
    .word PFA_CMOVE_G
PFA_CMOVE_G:
    push XH
    push XL
    ld ZL, Y+
    ld ZH, Y+ ; addr-to
    ld XL, Y+
    ld XH, Y+ ; addr-from
    mov temp0, tosh
    or temp0, tosl
    brbs 1, PFA_CMOVE_G1
    add ZL, tosl
    adc ZH, tosh
    add XL, tosl
    adc XH, tosh
PFA_CMOVE_G2:
    ld temp1, -X
    st -Z, temp1
    sbiw tosl, 1
    brbc 1, PFA_CMOVE_G2
PFA_CMOVE_G1:
    pop XL
    pop XH
    loadtos
    jmp_ DO_NEXT
