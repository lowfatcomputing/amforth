; ( -- addr ) 
; System Variable
; system LATEST
VE_LATEST:
    .word 0xff06
    .ascii "latest"
    .word VE_HEAD
    .set VE_HEAD, VE_LATEST
XT_LATEST:
    .word PFA_DOVARIABLE
PFA_LATEST:
    .word ram_LATEST

.data
ram_LATEST: .byte 2
.text
