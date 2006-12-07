; 
; the inner interpreter. 
DO_DODOES:
    adiw wl, 1
    st -Y, wl
    st -Y, wh
    
    pop wh
    pop wl
    
    push xl
    push xh
    movw xl, wl
    rjmp DO_NEXT

DO_COLON: ; 30 CPU cycles to ijmp
    push xl
    push xh          ; PUSH IP
    adiw wl, 1       ; set W to PFA
    movw xl, wl

DO_NEXT: ; 23 CPU cycles to ijmp
    movw zl,xl        ; READ IP
    lsl zl
    rol zh
    lpm wl, Z+
    lpm wh, Z      ; done read IP
    adiw xl, 1        ; INC IP

DO_EXECUTE: ; 12 cpu cycles to ijmp
    movw zl, wl
    lsl zl
    rol zh
    lpm temp0, Z+
    lpm temp1, Z
    movw zl, temp0
    ijmp
