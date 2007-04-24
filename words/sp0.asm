; ( -- addr) Stackpointer
; R( -- )
; start of data stack
VE_SP0:
    .db $03, "sp0"
    .dw VE_HEAD
    .set VE_HEAD = VE_SP0
XT_SP0:
    .dw DO_COLON
PFA_SP0:
    .dw XT_DOSP0
    .dw XT_FETCH
    .dw XT_EXIT

XT_DOSP0:
    .dw PFA_DOUSER
PFA_DOSP0:
    .dw 6

; ( -- addr) Stackpointer
; R( -- )
; address of variable to store data stack pointer for inactive tasks
VE_SP:
    .db $02, "sp",0
    .dw VE_HEAD
    .set VE_HEAD = VE_SP
XT_DOSP:
    .dw PFA_DOUSER
PFA_DOSP:
    .dw 8
