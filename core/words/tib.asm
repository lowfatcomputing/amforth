; ( -- addr ) 
; System Variable
; terminal input buffer address
VE_TIB:
    .dw $ff03
    .db "tib",0
    .dw VE_HEAD
    .set VE_HEAD = VE_TIB
XT_TIB:
    .dw PFA_DOVARIABLE
PFA_TIB:
    .dw ram_tib
    
.dseg
ram_tib: .byte TIBSIZE
.cseg
