; ( u1 u2 -- u3 u4)
; R( -- )
; unsigned division with remainder
VE_USLASHMOD:
    .db $05, "u/mod"
    .dw VE_HEAD
    .set VE_HEAD = VE_USLASHMOD
XT_USLASHMOD:
    .dw PFA_USLASHMOD
PFA_USLASHMOD:
    ld temp5, Y+
    ld temp4, Y+
    
    ld temp1, Y+
    ld temp0, Y+
    ldi temp3, 0
    ldi temp2, 0

;; unsigned 32/16 -> 16r16 divide

PFA_USLASHMODmod:

  ; set loop counter
    ldi temp6,$10

PFA_USLASHMODmod_loop:
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

    brcs PFA_USLASHMODmod_loop_control

PFA_USLASHMODmod_subtract:
    ; dividend is large enough
    ; do the subtraction for real
    ; and set lowest bit
    inc temp0
    sub temp2, temp4
    sbc temp3, temp5

PFA_USLASHMODmod_loop_control:
    dec  temp6
    brne PFA_USLASHMODmod_loop

PFA_USLASHMODmod_done:
    ; put remainder on stack
    st -Y,temp2
    st -Y,temp3

    ; put quotient on stack
    st -Y, temp0
    st -Y, temp1
    jmp DO_NEXT
