; ( addr1 u1 n-- addr2 u2 ) System
; R( -- )
; adjust string from addr1 to addr1+n, reduce length from u1 to u2
VE_SOURCE:
    .db 6, "source",0
    .dw VE_HEAD
    .set VE_HEAD = VE_SOURCE
XT_SOURCE:
    .dw DO_COLON
PFA_SOURCE:
    .dw XT_TIB
    .dw XT_NUMBERTIB
    .dw XT_FETCH
    .dw XT_EXIT
