; ( n addr -- )
; writes a cell into flash, unfinished
VE_ISTORE:
    .db $02, "i!",0
    .dw VE_LATEST
    .set VE_LATEST = VE_ISTORE
XT_ISTORE:
    .dw DO_COLON
PFA_ISTORE:
    .dw XT_DROP
    .dw XT_DROP
    .dw XT_EXIT  

