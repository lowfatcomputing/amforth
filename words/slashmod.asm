; ( n1 n2 -- n3 n4)
VE_SLASHMOD:
    .db $04, "/mod",0
    .dw VE_HEAD
    .set VE_HEAD = VE_SLASHMOD
XT_SLASHMOD:
    .dw PFA_SLASHMOD
PFA_SLASHMOD:
    ld temp5, Y+
    ld temp4, Y+
    
    ld temp1, Y+
    ld temp0, Y+
    ldi temp3, 0
    ldi temp2, 0

;; unsigned 32/16 -> 16r16 divide

PFA_SLASHMODmod:

  ; set loop counter
    ldi temp6,$10

PFA_SLASHMODmod_loop:
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

    brcs PFA_SLASHMODmod_loop_control

PFA_SLASHMODmod_subtract:
    ; dividend is large enough
    ; do the subtraction for real
    ; and set lowest bit
    inc temp0
    sub temp2, temp4
    sbc temp3, temp5

PFA_SLASHMODmod_loop_control:
    dec  temp6
    brne PFA_SLASHMODmod_loop

PFA_SLASHMODmod_done:
    ; put remainder on stack
    st -Y,temp2
    st -Y,temp3

    ; put quotient on stack
    st -Y, temp0
    st -Y, temp1
    rjmp DO_NEXT


