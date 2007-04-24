; ( addr -- n1 ) Memory
; R( -- )
; reads a cell from flash, addr is cell address, not byte addres first byte gets into the lower word on tos
VE_IFETCH:
    .db $02, "i@", 0
    .dw VE_HEAD
    .set VE_HEAD = VE_IFETCH
XT_IFETCH:
    .dw PFA_IFETCH
PFA_IFETCH:
    movw zl, tosl
    lsl zl
    rol zh
    lpm tosl, z+
    lpm tosh, z+
    rjmp DO_NEXT
