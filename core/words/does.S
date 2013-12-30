; ( i*x -- j*y ) (R: nest-sys1 -- ) (C: colon-sys1 -- colon-sys2 )
; Compiler
; organize the XT replacement to call other colon code
VE_DOES:
    .word 0x0005
    .string "does>"
    .word VE_HEAD
    .set VE_HEAD, VE_DOES
XT_DOES:
    .word DO_COLON
PFA_DOES:
    .word XT_COMPILE
    .word XT_DODOES
    .word XT_COMPILE  ; create a code snippet to be used in an embedded XT
    .word 0x940e       ; the address of this compiled
    .word XT_COMPILE  ; code will replace the XT of the 
    .word DO_DODOES   ; word that CREATE created
    .word XT_EXIT     ; 

DO_DODOES: ; ( -- PFA )
    savetos
    movw tosl, wl
    adiw tosl, 1
    ; the following takes the address from a real uC-call
.if (pclen==3)
    pop wh ; some 128K Flash devices use 3 cells for call/ret
.endif
    pop wh
    pop wl

    push XH
    push XL
    movw XL, wl
    jmp_ DO_NEXT

; ( -- )
; System
; replace the XT written by CREATE to call the code that follows does>
;VE_DODOES:
;   .word 0xff07
;   .ascii "(does>)"
;   .set VE_HEAD, VE_DODOES
XT_DODOES:
    .word DO_COLON
PFA_DODOES:
    .word XT_R_FROM
    .word XT_DOLITERAL
    .word COLON_SMUDGE+2
    .word XT_FETCH
    .word XT_FETCHE
    .word XT_NFA2LFA
    .word XT_1PLUS   ; lfa>xt

    .word XT_STOREI
    .word XT_EXIT
