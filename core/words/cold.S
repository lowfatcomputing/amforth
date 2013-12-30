; ( -- ) 
; System
; start up amforth.
VE_COLD:
    .word 0xff04
    .ascii "cold"
    .word VE_HEAD
    .set VE_HEAD, VE_COLD
XT_COLD:
    .word PFA_COLD
PFA_COLD:
    in_ r10, MCUSR
    clr r11
    clr zerol
    clr zeroh
    out_ MCUSR, zerol
    ; init first user data area
    ; allocate space for User Area
.data
ram_user1: .byte SYSUSERSIZE + APPUSERSIZE
.text
    ldi ZL, lo8(ram_user1)
    ldi ZH, hi8(ram_user1)
    movw upl, ZL
    ; init return stack pointer
    ldi temp0,lo8(rstackstart)
    out_ SPL,temp0
    std Z+4, temp0
    ldi temp1,hi8(rstackstart)
    out_ SPH,temp1
    std Z+5, temp1

    ; init parameter stack pointer
    ldi YL,lo8(stackstart)
    std Z+6, YL
    ldi YH,hi8(stackstart)
    std Z+7, YH

    ; load Forth IP with starting word
    ldi XL, lo8(PFA_WARM)
    ldi XH, hi8(PFA_WARM)
    ; its a far jump...
    jmp_ DO_NEXT
