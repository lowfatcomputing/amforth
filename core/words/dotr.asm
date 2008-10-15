; ( n1 n2 -- ) Numeric IO
; R( -- )
; signed right padded cell output 
VE_DOTR:
    .db $02, ".r",0
    .dw VE_HEAD
    .set VE_HEAD = VE_DOTR
XT_DOTR:
    .dw DO_COLON
PFA_DOTR:
    .dw XT_TO_R
    .dw XT_S2D
    .dw XT_R_FROM
    .dw XT_DDOTR
    .dw XT_EXIT
; : .r        ( s n -- )  >r s>d r> d.r ;