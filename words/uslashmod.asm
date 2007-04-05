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
    movw temp4, tosl
    
    ld temp0, Y+
    ld temp1, Y+
    ldi temp2, 0
    ldi temp3, 0
    jmp PFA_UMSLASHMODmod
