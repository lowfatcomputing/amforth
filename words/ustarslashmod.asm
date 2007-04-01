; ( u1 u2 u3 -- u4 u5)
; R( -- )
; unsigned division with remainder u3 * u2 / u1 
VE_USTARSLASHMOD:
    .db $06, "u*/mod",0
    .dw VE_HEAD
    .set VE_HEAD = VE_USTARSLASHMOD
XT_USTARSLASHMOD:
    .dw PFA_USTARSLASHMOD
PFA_USTARSLASHMOD:
    ld temp5, Y+
    ld temp4, Y+
    push temp4
    push temp5
    ld temp1, Y+
    ld temp0, Y+
    ld temp3, Y+
    ld temp2, Y+
    ; result: (temp3*temp1)* 65536 + (temp3*temp0 + temp1*temp2) * 256 + (temp0 * temp2)
    ; low bytes
    mul temp0,temp2
    movw zl, r0
    movw temp4, zerol

    ; hi bytes
    mul temp2,temp1
    add zh, r0
    adc temp4, r1
    adc temp5, zeroh
        
    mul temp3, temp0
    add zh, r0
    adc temp4, r1
    adc temp5, zeroh
    
    mul temp3, temp1
    add temp4, r0
    adc temp5, r1

    movw temp0, zl
    movw temp2, temp4    
    
    pop temp5
    pop temp4
    
;; unsigned 32/16 -> 16r16 divide

PFA_USTARSLASHMODmod:

  ; set loop counter
    ldi temp6,$10

PFA_USTARSLASHMODmod_loop:
    ; shift left, saving high bit
    clr temp7
    lsl temp0
    rol temp1
    rol temp2
    rol temp3
    rol temp7

  ; try subtracting divisor
    cp temp2, temp4
    cpc temp3, temp5
    cpc temp7,zerol

    brcs PFA_USTARSLASHMODmod_loop_control

PFA_USTARSLASHMODmod_subtract:
    ; dividend is large enough
    ; do the subtraction for real
    ; and set lowest bit
    inc temp0
    sub temp2, temp4
    sbc temp3, temp5

PFA_USTARSLASHMODmod_loop_control:
    dec  temp6
    brne PFA_USTARSLASHMODmod_loop

PFA_USTARSLASHMODmod_done:
    ; put remainder on stack
    st -Y,temp2
    st -Y,temp3

    ; put quotient on stack
    st -Y, temp0
    st -Y, temp1
    jmp DO_NEXT
