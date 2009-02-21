; ( -- faddr) System Value
; R( -- )
; start address of the environmental search
;_VE_ENVHEAD:
;    .dw $ff08
;    .db "env-head"
;    .dw VE_HEAD
;    .set VE_HEAD = _VE_ENVHEAD
XT_ENVHEAD:
    .dw PFA_DOVALUE
PFA_ENVHEAD:
    .dw 18

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
    .dw XT_ENVHEAD
    .dw XT_SEARCH_WORDLIST ; ( -- [ 0 | xt +/-1 ] )
    .dw XT_DUP
    .dw XT_DOCONDBRANCH
    .dw PFA_ENVIRONMENTQ1
    .dw XT_TO_R
    .dw XT_EXECUTE
    .dw XT_R_FROM
PFA_ENVIRONMENTQ1:
    .dw XT_EXIT

