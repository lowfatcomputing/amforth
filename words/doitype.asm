; ( -- )
VE_DOITYPE:
    .db 1, "i"
    .dw VE_HEAD
    .set VE_HEAD = VE_DOITYPE
XT_DOITYPE:
    .dw DO_COLON
PFA_DOITYPE:
    
    .dw XT_EXIT