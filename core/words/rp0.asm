; ( -- addr) Stackpointer
; R( -- )
; start value of return stack
VE_RP0:
    .db $03, "rp0"
    .dw VE_HEAD
    .set VE_HEAD = VE_RP0
XT_RP0:
    .dw DO_COLON
PFA_RP0:
    .dw XT_DORP0
    .dw XT_FETCH
    .dw XT_EXIT

; ( -- addr) Stackpointer
; R( -- )
; user value: start value of return stack
;VE_DORP0:
;    .db $05, "(rp0)"
;    .dw VE_HEAD
;    .set VE_HEAD = VE_DORP0
XT_DORP0:
    .dw PFA_DOUSER
PFA_DORP0:
    .dw 4
