; ( addr-ram addr-flash  --  f)
; R( -- )
; compares counted string in RAM with counted string in flash
VE_ICOMPARE:
    .db $08, "icompare", 0
    .dw VE_HEAD
    .set VE_HEAD = VE_ICOMPARE
XT_ICOMPARE:
    .dw DO_COLON
PFA_ICOMPARE:
    ; a string has at least 1 character, length 0 is not possible
    .dw XT_OVER     ; ( -- a-r a-f a-r)
    .dw XT_FETCH    ; ( -- a-r a-f c-r)
    .dw XT_OVER     ; ( -- a-r a-f c-r a-f)
    .dw XT_IFETCH   ; ( -- a-r a-f c-r c-f)
    .dw XT_DOLITERAL
    .dw $ff7f       ; mask out immediate bit
    .dw XT_AND
    .dw XT_NOTEQUAL ; ( -- a-r a-f f)
    .dw XT_DOCONDBRANCH
    .dw PFA_ICOMPARE1
    .dw XT_DROP
    .dw XT_DROP
    .dw XT_ZERO
    .dw XT_EXIT

PFA_ICOMPARE1:
    ; the two strings have the same length an the same first character
    ; ( addr-ram addr-flash -- )
    .dw XT_OVER   ; ( -- addr-ram addr-flash addr-ram )
    .dw XT_CFETCH ; ( -- addr-ram addr-flash char-len )
    .dw XT_2SLASH ; ( -- addr-ram addr-flash cell-len' )
    .dw XT_ZERO   ; ( -- addr-ram addr-flash cell-len' 0 )
    .dw XT_DOQDO
    .dw PFA_ICOMPARE3
PFA_ICOMPARE2:
    ; ( addr-ram addr-flash -- )
    .dw XT_1PLUS
    .dw XT_SWAP
    .dw XT_CELLPLUS
    .dw XT_OVER   ; ( -- addr-flash addr-ram addr-flash)
    .dw XT_IFETCH
    .dw XT_OVER   
    .dw XT_FETCH  ; ( -- addr-flash addr-ram data-flash data-ram)
    .dw XT_NOTEQUAL
    .dw XT_DOCONDBRANCH
    .dw PFA_ICOMPARE4
    ; the strings are different -> leave the loop
    .dw XT_UNLOOP
    .dw XT_DROP
    .dw XT_DROP
    .dw XT_ZERO
    .dw XT_EXIT
PFA_ICOMPARE4:
    .dw XT_SWAP  ; ( -- addr-ram addr-flash )
    .dw XT_DOLOOP
    .dw PFA_ICOMPARE2
PFA_ICOMPARE3:
    .dw XT_DROP
    .dw XT_DROP
    .dw XT_DOLITERAL
    .dw -1
    .dw XT_EXIT
    