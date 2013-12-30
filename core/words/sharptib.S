; ( -- addr ) 
; System Variable
; variable holding the number of characters in TIB
VE_NUMBERTIB:
    .word 0xff04
    .ascii "#tib"
    .word VE_HEAD
    .set VE_HEAD,   VE_NUMBERTIB
XT_NUMBERTIB:
    .word PFA_DOVARIABLE
PFA_NUMBERTIB:
    .word ram_sharptib

.data
ram_sharptib: .byte 2
.text
 
