; ( -- ) (R: loop-sys -- )
; Compiler
; immediatly leave the current DO..LOOP
VE_LEAVE:
   .word 0xFF05
   .string "leave"
   .word VE_HEAD
   .set VE_HEAD, VE_LEAVE
XT_LEAVE:
    .word PFA_LEAVE
PFA_LEAVE:
    pop temp0  ; drop limit and counter from returnstack
    pop temp1
    pop temp0
    pop temp1
    pop XL
    pop XH
    jmp_ DO_NEXT
