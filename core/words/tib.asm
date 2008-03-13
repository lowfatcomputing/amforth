; ( -- addr ) System Pointer
; R( -- )
; terminal input buffer address
VE_TIB:
    .db $03, "tib"
    .dw VE_HEAD
    .set VE_HEAD = VE_TIB
XT_TIB:
    .dw PFA_DOVARIABLE
PFA_TIB:
    .dw heap
    .set heap = heap + TIBSIZE
