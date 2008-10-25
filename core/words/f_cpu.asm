; ( -- f_cou ) System
; R( -- )
; put the cpu frequency on stack
VE_F_CPU:
    .dw $ff05
    .db "f_cpu",0
    .dw VE_HEAD
    .set VE_HEAD = VE_F_CPU
XT_F_CPU:
    .dw DO_COLON
PFA_F_CPU:
    .dw XT_DOLITERAL
    .dw (cpu_frequency % 65536)
    .dw XT_DOLITERAL
    .dw (cpu_frequency / 65536)
    .dw XT_EXIT