; ( ud u2 -- rem quot) Arithmetics
; R( -- )
; unsigned division ud / u2 with remainder
VE_UMSLASHMOD:
    .db $06, "um/mod",0
    .dw VE_HEAD
    .set VE_HEAD = VE_UMSLASHMOD
XT_UMSLASHMOD:
    .dw PFA_UMSLASHMOD
PFA_UMSLASHMOD:
    movw temp4, tosl
    
    ld temp0, Y+
    ld temp1, Y+
    ld temp2, Y+
    ld temp3, Y+

;; unsigned 32/16 -> 16r16 divide

PFA_UMSLASHMODmod:

  ; set loop counter
    ldi temp6,$10

PFA_UMSLASHMODmod_loop:
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

    brcs PFA_UMSLASHMODmod_loop_control

PFA_UMSLASHMODmod_subtract:
    ; dividend is large enough
    ; do the subtraction for real
    ; and set lowest bit
    inc temp0
    sub temp2, temp4
    sbc temp3, temp5

PFA_UMSLASHMODmod_loop_control:
    dec  temp6
    brne PFA_UMSLASHMODmod_loop

PFA_UMSLASHMODmod_done:
    ; put remainder on stack
    st -Y,temp3
    st -Y,temp2

    ; put quotient on stack
    movw tosl, temp0
    jmp DO_NEXT
