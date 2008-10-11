; ( d -- ud ) Arithmetics
; R( -- )
; double cell absolute value
VE_DABS:
    .db $04, "dabs",0
    .dw VE_HEAD
    .set VE_HEAD = VE_DABS
XT_DABS:
    .dw DO_COLON
PFA_DABS:
    .dw XT_DUP
    .dw XT_LESSZERO
    .dw XT_DOCONDBRANCH
    .dw PFA_DABS1
    .dw XT_DNEGATE
PFA_DABS1:
    .dw XT_EXIT
; : dabs      ( ud1 -- +d2 ) dup 0< if dnegate then ;
