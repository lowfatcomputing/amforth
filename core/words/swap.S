; ( n1 n2 -- n2 n1) 
; Stack
; swaps the two top level stack cells
VE_SWAP:
    .word 0xff04
    .ascii "swap"
    .word VE_HEAD
    .set VE_HEAD, VE_SWAP
XT_SWAP:
    .word PFA_SWAP
PFA_SWAP:
    movw temp0, tosl
    loadtos
    st -Y, temp1
    st -Y, temp0
    jmp_ DO_NEXT
