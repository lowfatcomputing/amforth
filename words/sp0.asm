; ( -- addr) Stackpointer
; R( -- )
; start address of the data stack
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

; ( -- addr) Stackpointer
; R( -- )
; start address of the data stack
;VE_DOSP0:
;    .db $05, "(sp0)"
;    .dw VE_HEAD
;    .set VE_HEAD = VE_DOSP0
XT_DOSP0:
    .dw PFA_DOUSER
PFA_DOSP0:
    .dw 6

; ( -- addr) Stackpointer
; R( -- )
; address of user variable to store top-of-stack for inactive tasks
VE_SP:
    .db $02, "sp",0
    .dw VE_HEAD
    .set VE_HEAD = VE_SP
XT_SP:
    .dw PFA_DOUSER
PFA_SP:
    .dw 8
