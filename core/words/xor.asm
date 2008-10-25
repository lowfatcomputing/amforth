; ( n1 n2 -- n3) Logic
; R( -- )
; exclusive or
VE_XOR:
    .dw $ff03
    .db "xor",0
    .dw VE_HEAD
    .set VE_HEAD = VE_XOR
XT_XOR:
    .dw PFA_XOR
PFA_XOR:
    ld temp0, Y+
    ld temp1, Y+
    eor tosl, temp0
    eor tosh, temp1
    rjmp DO_NEXT
