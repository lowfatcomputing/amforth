; ( -- )
; R( w1 -- w2 )
;VE_DODOTSTRING:
;    .db $04, "(.",$22, ")",0
;    .dw VE_HEAD
;    .set VE_HEAD = VE_DODOTSTRING
XT_DODOTSTRING:
    .dw DO_COLON
PFA_DODOTSTRING:
    .dw XT_R_FROM
    .dw XT_ITYPE
    .dw XT_TO_R
    .dw XT_EXIT
