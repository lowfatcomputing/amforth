; ( u1 u2 -- d) 
; Arithmetics
; multiply 2 unsigned cells to a double cell
VE_UMSTAR:
    .word 0xff03
    .string "um*"
    .word VE_HEAD
    .set VE_HEAD, VE_UMSTAR
XT_UMSTAR:
    .word PFA_UMSTAR
PFA_UMSTAR:
    movw temp0, tosl
    loadtos
    ; result: (temp3*temp1)* 65536 + (temp3*temp0 + temp1*temp2) * 256 + (temp0 * temp2)
    ; low bytes
    mul tosl,temp0
    movw ZL, r0
    clr temp2
    clr temp3
    ; middle bytes
    mul tosh, temp0
    add ZH, r0
    adc temp2, r1
    adc temp3, zeroh
        
    mul tosl, temp1
    add ZH, r0
    adc temp2, r1
    adc temp3, zeroh
    
    mul tosh, temp1
    add temp2, r0
    adc temp3, r1
    movw tosl, ZL
    savetos
    movw tosl, temp2
    jmp_ DO_NEXT
