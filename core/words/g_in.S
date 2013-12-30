; ( -- a-addr ) 
; System Variable
; pointer to current read position in input buffer
VE_G_IN:
    .word 0xff03
    .string ">in"
    .word VE_HEAD
    .set VE_HEAD, VE_G_IN
XT_G_IN:
    .word PFA_DOUSER
PFA_G_IN:
    .word USER_G_IN
