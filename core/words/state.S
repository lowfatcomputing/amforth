; ( -- addr ) 
; System Variable
; system state
VE_STATE:
    .word 0xff05
    .string "state"
    .word VE_HEAD
    .set VE_HEAD, VE_STATE
XT_STATE:
    .word PFA_DOVARIABLE
PFA_STATE:
    .word ram_state

.data
ram_state: .byte 2
.text
