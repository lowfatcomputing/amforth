; ( addr len -- [ 0 ] | [i*x -1 ) Tools
; R( -- )
; get environment
VE_ENVIRONMENTQ:
    .dw $FF0C
    .db "environment?"
    .dw VE_HEAD
    .set VE_HEAD = VE_ENVIRONMENTQ
XT_ENVIRONMENTQ:
    .dw DO_COLON
PFA_ENVIRONMENTQ:
    .dw XT_ENVIRONMENT
    .dw XT_SEARCH_WORDLIST ; ( -- [ 0 | xt +/-1 ] )
    .dw XT_DUP
    .dw XT_DOCONDBRANCH
    .dw PFA_ENVIRONMENTQ1
    .dw XT_TO_R
    .dw XT_EXECUTE
    .dw XT_R_FROM
PFA_ENVIRONMENTQ1:
    .dw XT_EXIT
