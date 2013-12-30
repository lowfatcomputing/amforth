; ( n1 n2 -- n2 ) 
; Stack
; Remove Second of Stack
VE_NIP:
    .word 0xff03
    .string "nip"
    .word VE_HEAD
    .set VE_HEAD, VE_NIP
XT_NIP:
    .word PFA_NIP
PFA_NIP:
    adiw yl, 2
    jmp_ DO_NEXT
