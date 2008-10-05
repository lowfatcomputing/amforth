; : u.r       ( s n -- )   0 swap ud.r ;


VE_UDOTR:
    .db $03, "u.r"
    .dw VE_HEAD
    .set VE_HEAD = VE_UDOTR
XT_UDOTR:
    .dw DO_COLON
PFA_UDOTR:
    .dw XT_ZERO
    .dw XT_SWAP
    .dw XT_UDDOTR
    .dw XT_EXIT
