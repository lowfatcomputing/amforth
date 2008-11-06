; ( r-addr r-len f-addr f-len --  f) Tools
; R( -- )
; compares string in RAM with string in flash
VE_ICOMPARE:
    .dw $ff08
    .db "icompare"
    .dw VE_HEAD
    .set VE_HEAD = VE_ICOMPARE
XT_ICOMPARE:
    .dw DO_COLON
PFA_ICOMPARE:
    .dw XT_OVER
    .dw XT_OVER
    .dw XT_EQUAL
    .dw XT_DOCONDBRANCH
    .dw PFA_ICOMPARE_SAMELEN
      .dw XT_DROP
      .dw XT_DROP
      .dw XT_ZERO
      .dw XT_EXIT
PFA_ICOMPARE_SAMELEN:
    .dw XT_DROP
    .dw XT_SWAP ; ( r-addr f-addr len )
    .dw XT_ZERO
    .dw XT_DOQDO
    .dw PFA_ICOMPARE_DONE
PFA_ICOMPARE_LOOP:
    ; ( r-addr f-addr --)
    .dw XT_OVER
    .dw XT_FETCH
    .dw XT_OVER
    .dw XT_IFETCH ; ( -- r-addr f-addr r-cc f- cc)
    ; flash strings are zero-padded at the last cell
    ; that means: if the flash cell is less $0100, than mask the
    ; high byte in the ram cell
    .dw XT_DUP
    .dw XT_BYTESWAP
    .dw XT_DOLITERAL
    .dw $100
    .dw XT_LESS
    .dw XT_DOCONDBRANCH
    .dw PFA_ICOMPARE_LASTCELL
    .dw XT_SWAP
    .dw XT_DOLITERAL
    .dw $00FF
    .dw XT_AND  ; the final swap can be omitted
PFA_ICOMPARE_LASTCELL:
    .dw XT_NOTEQUAL
    .dw XT_DOCONDBRANCH
    .dw PFA_ICOMPARE_NEXTLOOP
    .dw XT_DROP
    .dw XT_DROP
    .dw XT_ZERO
    .dw XT_UNLOOP
    .dw XT_EXIT
PFA_ICOMPARE_NEXTLOOP:
    .dw XT_1PLUS
    .dw XT_SWAP
    .dw XT_CELLPLUS
    .dw XT_SWAP
    .dw XT_DOLITERAL
    .dw 2
    .dw XT_DOPLUSLOOP
    .dw PFA_ICOMPARE_LOOP
PFA_ICOMPARE_DONE:
    .dw XT_DROP
    .dw XT_DROP
    .dw XT_DOLITERAL
    .dw -1
    .dw XT_EXIT

