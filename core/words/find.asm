; ( addr -- [ addr 0 ] | [ xt [-1|1]] ) Tools
; R( -- )
; search dictionary
VE_FIND:
    .db $04, "find", 0
    .dw VE_HEAD
    .set VE_HEAD = VE_FIND
XT_FIND:
    .dw DO_COLON
PFA_FIND:
    .dw XT_DUP
    .dw XT_TO_R
    .dw XT_HEAD
    .dw XT_EFETCH  ; ( -- addr ve-start )
PFA_FIND1:
    ; ( addr-ram addr-flash )
    .dw XT_QDUP     
    .dw XT_DOCONDBRANCH
    .dw PFA_FIND2   ; end-of-list signature (ve-start == 0) -> skip to end
    .dw XT_SWAP     ; ( -- addr-flash addr-ram )
    .dw XT_OVER     ; ( -- addr-flash addr-ram addr-flash )
    .dw XT_ICOMPARE ; ( -- addr-flash f)
    .dw XT_DOCONDBRANCH
    .dw PFA_FIND3
    ; word found, read flags and exit
    .dw XT_DUP    ; ( -- addr-flash addr-flash )
    .dw XT_IFETCH
    .dw XT_DOLITERAL
    .dw $0080
    .dw XT_AND    ; i-flag
    .dw XT_DOLITERAL
    .dw -1
    .dw XT_SWAP
    .dw XT_DOCONDBRANCH
    .dw PFA_FIND4
    .dw XT_NEGATE
PFA_FIND4:
    .dw XT_SWAP
    .dw XT_R_FROM
    .dw XT_CFETCH ; ( -- addr-flash len)
    .dw XT_2SLASH
    .dw XT_1PLUS
    .dw XT_PLUS 
    .dw XT_1PLUS
    .dw XT_SWAP
    .dw XT_EXIT

PFA_FIND3:
    ; this entry does not match, go to the next one
    .dw XT_DUP   ; ( -- addr-flash addr-flash )
    .dw XT_IFETCH
    .dw XT_DOLITERAL
    .dw $001f
    .dw XT_AND
    .dw XT_2SLASH
    .dw XT_1PLUS
    .dw XT_PLUS
    .dw XT_IFETCH    ; ( -- ve-start')
    .dw XT_R_FETCH
    .dw XT_SWAP
    .dw XT_DOBRANCH
    .dw PFA_FIND1    ; check next word

PFA_FIND2: ; clean up, word not found.
    .dw XT_DROP
    .dw XT_R_FROM
    .dw XT_ZERO
    .dw XT_EXIT
