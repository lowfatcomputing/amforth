; ( -- )
; R(next limit counter -- next )
; runtime of doleave
; VE_DOLEAVEL:
;   .db 8, "(LEAVEL)"
;   .dw VE_HEAD
;   .set VE_HEAD = VE_DOLEAVEL
XT_DOLEAVEL:
    .dw PFA_DOLEAVEL
PFA_DOLEAVEL:
    pop temp0  ; drop limit and counter from returnstack
    pop temp1
    pop temp0
    pop temp1
    movw zl, xl     ; move IP from X to Z.
    lsl zl          ; adjust addres.
    rol zh
    lpm xl, Z+      ; load program memory at adr to IP in X.
    lpm xh, Z
; we have the address of <mark in IP now.
; now we get <mark itself and make it next IP
; i.e: do it again:
    movw zl, xl     ; move IP from X to Z.
    lsl zl          ; adjust addres.
    rol zh
    lpm xl, Z+      ; load program memory at adr to IP in X.
    lpm xh, Z
    rjmp DO_NEXT

; finis