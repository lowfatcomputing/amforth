; ( c addr -- ) Memory
; R( -- )
; store a byte to RAM address
VE_CSTORE:
    .db $02, "c!",0
    .dw VE_HEAD
    .set VE_HEAD = VE_CSTORE
XT_CSTORE:
    .dw PFA_CSTORE
PFA_CSTORE:
    movw zl, tosl
    loadtos
    st Z, tosl
    loadtos
    rjmp DO_NEXT
