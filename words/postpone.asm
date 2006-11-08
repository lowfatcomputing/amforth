; (  -- )
; R: (ix - jx )
VE_POSTPONE:
    .db $88, "postpone",0
    .dw VE_HEAD
    .set VE_HEAD = VE_POSTPONE
XT_POSTPONE:
    .dw DO_COLON
PFA_POSTPONE:
PFA_POSTPONE1:
    .dw XT_BL
    .dw XT_WORD

    .dw XT_DUP
    .dw XT_CFETCH
    .dw XT_GREATERZERO
    .dw XT_DOCONDBRANCH
    .dw PFA_POSTPONE4

    .dw XT_FIND
    .dw XT_QDUP
    .dw XT_EQUALZERO
    .dw XT_DOCONDBRANCH 
    .dw PFA_POSTPONE4
PFA_POSTPONE2:
    .dw XT_COMMA

PFA_POSTPONE4:
    .dw XT_DROP
    .dw XT_EXIT
