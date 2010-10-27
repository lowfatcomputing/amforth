; ( addr --  ) System
; R( -- )
; recognizer for NOT FOUND
;VE_REC_NOTFOUND:
;    .dw $ff07
;    .db "rec-notfound"
;    .dw VE_HEAD
;    .set VE_HEAD = VE_REC_NOTFOUND
XT_REC_NOTFOUND:
    .dw DO_COLON
PFA_REC_NOTFOUND:
    .dw XT_DOLITERAL
    .dw -13
    .dw XT_THROW
    .dw XT_EXIT
