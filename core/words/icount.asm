; ( adr -- adr n )  Tools
; R( -- )
; get count byte out of packed counted string in flash
VE_ICOUNT:
    .db $06, "icount",0
    .dw VE_HEAD
    .set VE_HEAD = VE_ICOUNT
XT_ICOUNT:
    .dw DO_COLON
PFA_ICOUNT:
    .dw XT_DUP
    .dw XT_IFETCH
    .dw XT_DOLITERAL
    .dw $00ff  ; only the count byte
    .dw XT_AND
    .dw XT_EXIT
