; ( -- n ) Control Structure
; R( loop-sys1 loop-sys2 -- loop-sys1 loop-sys2)
; loop counter of outer loop
VE_J:
    .db 1, "j"
    .dw VE_HEAD
    .set VE_HEAD = VE_J
XT_J:
    .dw PFA_J
PFA_J:
    savetos
    pop temp1
    pop temp0
    pop temp3
    pop temp2
    pop tosl
    pop tosh
    
    push tosh
    push tosl
    push temp2
    push temp3
    push temp0
    push temp1
    rjmp DO_NEXT
