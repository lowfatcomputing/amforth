; ( n1 n2 n3 -- n2 n3 n1) Stack
; R( -- )
; stack manupulation
VE_ROT:
    .db $03, "rot"
    .dw VE_HEAD
    .set VE_HEAD = VE_ROT
XT_ROT:
    .dw PFA_ROT
PFA_ROT:
    movw temp0, tosl
    ld temp2, Y+
    ld temp3, Y+ 
    loadtos
        
    st -Y, temp3
    st -Y, temp2
    st -Y, temp1
    st -Y, temp0

    rjmp DO_NEXT
