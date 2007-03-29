; ( -- )
; R( w1 -- w2 )
; runtime of ."
;VE_DODOTSTRING:
;    .db $04, "(.",$22, ")",0
;    .dw VE_HEAD
;    .set VE_HEAD = VE_DODOTSTRING
XT_DODOTSTRING:
    .dw DO_COLON
PFA_DODOTSTRING:
    .dw XT_R_FROM   ; ( -- adr )
    .dw XT_DUP      ; ( -- adr adr )
    .dw XT_ICOUNT   ; ( -- adr adr n )
    .dw XT_ITYPE    ; ( -- adr )
    .dw XT_ICOUNT   ; ( -- adr n )
    .dw XT_2SLASH   ; ( -- adr k )
    .dw XT_1PLUS    ; ( -- adr k+1 )
    .dw XT_PLUS     ; ( -- adrk+1 )
    .dw XT_TO_R     ; ( -- )
    .dw XT_EXIT
