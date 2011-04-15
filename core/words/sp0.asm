; ( -- addr) 
; Stack
; start address of the data stack
VE_SP0:
    .dw $ff03
    .db "sp0",0
    .dw VE_HEAD
    .set VE_HEAD = VE_SP0
XT_SP0:
    .dw DO_COLON
PFA_SP0:
    .dw XT_DOSP0
    .dw XT_FETCH
    .dw XT_EXIT

; ( -- addr) 
; Stack
; start address of the data stack
.ifdef FULL_HEADER
VE_DOSP0:
    .dw $ff05
    .db "(sp0)"
    .dw VE_HEAD
    .set VE_HEAD = VE_DOSP0
.endif
XT_DOSP0:
    .dw PFA_DOUSER
PFA_DOSP0:
    .dw USER_SP0

; ( -- addr) 
; Stack
; address of user variable to store top-of-stack for inactive tasks
VE_SP:
    .dw $ff02
    .db "sp"
    .dw VE_HEAD
    .set VE_HEAD = VE_SP
XT_SP:
    .dw PFA_DOUSER
PFA_SP:
    .dw USER_SP
