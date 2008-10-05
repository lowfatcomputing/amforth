; : d.        ( d -- )    0 d.r space ; 


VE_DDOT:
    .db $02, "d.",0
    .dw VE_HEAD
    .set VE_HEAD = VE_DDOT
XT_DDOT:
    .dw DO_COLON
PFA_DDOT:
    .dw XT_ZERO
    .dw XT_DDOTR
    .dw XT_SPACE
    .dw XT_EXIT
