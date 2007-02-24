; ( nx -- )
; R( ny -- )
VE_ABORTSTRING:
    .db $86, "abort", $22,0
    .dw VE_HEAD
    .set VE_HEAD = VE_ABORTSTRING
XT_ABORTSTRING:
    .dw DO_COLON
PFA_ABORTSTRING:
    ; postpone if
    .dw XT_DOLITERAL
    .dw XT_DOCONDBRANCH
    .dw XT_COMMA
    .dw XT_HERE
    .dw XT_DOLITERAL
    .dw -1
    .dw XT_COMMA
    
    .dw XT_DOTSTRING
    
    .dw XT_DOLITERAL
    .dw XT_DOLITERAL
    .dw XT_COMMA
    
    .dw XT_DOLITERAL
    .dw -2
    .dw XT_COMMA
    .dw XT_DOLITERAL
    .dw XT_THROW
    .dw XT_COMMA
    ; then
    .dw XT_HERE
    .dw XT_SWAP
    .dw XT_ISTORE
    .dw XT_EXIT
