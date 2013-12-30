; ( wid -- ) 
; Search Order
; set current word list to the given word list wid
VE_SET_CURRENT:
    .word 0xff0b
    .string "set-current"
    .word VE_HEAD
    .set VE_HEAD, VE_SET_CURRENT
XT_SET_CURRENT:
    .word DO_COLON
PFA_SET_CURRENT:
    .word XT_DOLITERAL
    .word EE_CURRENT
    .word XT_STOREE
    .word XT_EXIT
