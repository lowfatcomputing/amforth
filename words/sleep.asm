; ( n1 -- n2 ) Interrupt
; R( -- )
; optimized decrement (CORE)
VE_SLEEP:
    .db $05, "sleep"
    .dw VE_HEAD
    .set VE_HEAD = VE_SLEEP
XT_SLEEP:
    .dw PFA_SLEEP
PFA_SLEEP:
    sleep
    rjmp DO_NEXT
