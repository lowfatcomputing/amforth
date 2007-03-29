; ( n addr -- )
; R( -- )
; write 16bit to RAM memory (or IO or CPU registers)
VE_STORE:
    .db $01, "!"
    .dw VE_HEAD
    .set VE_HEAD = VE_STORE
XT_STORE:
    .dw PFA_STORE
PFA_STORE:
    ld zh, Y+
    ld zl, Y+
    ld temp1, Y+
    ld temp0, Y+
    st Z+, temp0
    st Z, temp1
    rjmp DO_NEXT
