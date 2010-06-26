; ( n*x -- ) Exceptions
; R( n*y -- )
; check flag. If true emit some text and throw  exception -2 
VE_ABORTSTRING:
    .dw $0006
    .db "abort", $22
    .dw VE_HEAD
    .set VE_HEAD = VE_ABORTSTRING
XT_ABORTSTRING:
    .dw DO_COLON
PFA_ABORTSTRING:
    ; postpone if
    .dw XT_COMPILE
    .dw XT_DOCONDBRANCH
    .dw XT_DP
    .dw XT_COMPILE
    .dw -1
    
    .dw XT_DOTSTRING
    
    .dw XT_COMPILE
    .dw XT_DOLITERAL
    
    .dw XT_COMPILE
    .dw -2
    .dw XT_COMPILE
    .dw XT_THROW
    ; then
    .dw XT_DP
    .dw XT_SWAP
    .dw XT_ISTORE
    .dw XT_EXIT
