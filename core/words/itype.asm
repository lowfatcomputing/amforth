; ( addr n --  ) Tools
; R( -- )
; reads string from flash and emit it
VE_ITYPE:
    .dw $ff05
    .db "itype",0
    .dw VE_HEAD
    .set VE_HEAD = VE_ITYPE
XT_ITYPE:
    .dw DO_COLON
PFA_ITYPE:
    .dw XT_ZERO
    .dw XT_DOQDO
    .dw PFA_ITYPE_DONE
PFA_ITYPE_NEXT:
      ; ( -- addr )
      .dw XT_DUP
      .dw XT_IFETCH
      .dw XT_DUP
      .dw XT_EMIT
      .dw XT_HIEMIT
      .dw XT_1PLUS
    .dw XT_DOLITERAL
    .dw 2
    .dw XT_DOPLUSLOOP
    .dw PFA_ITYPE_NEXT
PFA_ITYPE_DONE:
    .dw XT_DROP
    .dw XT_EXIT

; ( w -- )
; R( -- )
; content of cell fetched on stack.
;VE_HIEMIT:
;    .dw $ff06
;    .db "hiemit"
;    .dw VE_HEAD
;    .set VE_HEAD = VE_HIEMIT
XT_HIEMIT:
    .dw DO_COLON
PFA_HIEMIT:
    .dw XT_BYTESWAP
    .dw XT_EMIT
    .dw XT_EXIT
