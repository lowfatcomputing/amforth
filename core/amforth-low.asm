;;;; avr forth
;;;;
;;;; GPL V2 (only)

.set pc_ = pc

.org $0000
  jmp_ amforthstart
.org pc_
; main entry point
amforthstart:
    in_ r10, MCUSR
    clr r11
    clr zerol
    clr zeroh
    out_ MCUSR, zerol
    ; init first user data area
    ldi zl, low(here)
    ldi zh, high(here)
    movw upl, zl
    ; init return stack pointer
    ldi temp0,low(rstackstart)
    out_ SPL,temp0
    std Z+4, temp0
    ldi temp1,high(rstackstart)
    out_ SPH,temp1
    std Z+5, temp1

    ; init parameter stack pointer
    ldi yl,low(stackstart)
    std Z+6, yl
    ldi yh,high(stackstart)
    std Z+7, yh

    ; allocate space for User Area
    .set here = here + SYSUSERSIZE + APPUSERSIZE
    ; load Forth IP with starting word
    ldi XL, low(PFA_COLD)
    ldi XH, high(PFA_COLD)
    ; its a far jump...
    jmp_ DO_NEXT


; the inner interpreter.
DO_DODOES:
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
    rjmp DO_NEXT

DO_COLON:
    push XH
    push XL          ; PUSH IP
    movw XL, wl
    adiw xl, 1
DO_NEXT:
    brts DO_INTERRUPT
    movw zl, XL        ; READ IP
    readflashcell wl, wh
    adiw XL, 1        ; INC IP

DO_EXECUTE:
    movw zl, wl
    readflashcell temp0,temp1
    movw zl, temp0
    ijmp

DO_INTERRUPT:
    ; here we deal with interrupts the forth way
    lds temp0, intcur
    ldi zl, LOW(intvec)
    ldi zh, HIGH(intvec)
    add zl, temp0
    adc zh, zeroh
    ldd wl, Z+0
    ldd wh, Z+1

    clt ; clear the t flag to indicate that the interrupt is handled
    rjmp DO_EXECUTE

.include "drivers/generic-isr.asm"
; lower part of the dictionary
.set VE_HEAD = $0000
.set VE_ENVHEAD = $0000
.include "dict_appl_core.inc"
.include "dict_appl.inc"

.set lowflashlast = pc

.set flashlast = pc

.eseg
EE_DP:
    .dw lowflashlast ; DP
EE_HERE:
    .dw here         ; HERE
EE_EDP:
    .dw edp          ; EDP
EE_ENVIRONMENT:
    .dw VE_ENVHEAD   ; environmental queries
EE_WL_FORTH:
    .dw EE_FORTHWORDLIST; forth-wordlist
EE_CURRENT:
    .dw EE_FORTHWORDLIST
EE_FORTHWORDLIST:
    .dw VE_HEAD      ; pre-defined (compiled in) wordlist
EE_ORDERLIST: ; list of wordlist id
    .dw EE_FORTHWORDLIST      ; get/set-order
    .dw -1
    .dw -1
    .dw -1
    .dw -1
    .dw -1
    .dw -1
    .dw -1
    .dw -1 ; NUMWORDLISTS + 1 entry, this entry has to be -1
; default user area
EE_INITUSER:
    .dw 0  ; USER_STATE
    .dw 0  ; USER_FOLLOWER
    .dw rstackstart  ; USER_RP
    .dw stackstart   ; USER_SP0
    .dw stackstart   ; USER_SP
    
    .dw 0  ; USER_HANDLER
    .dw 10 ; USER_BASE
    
    .dw XT_TX  ; USER_EMIT
    .dw XT_TXQ ; USER_EMITQ
    .dw XT_RX  ; USER_KEY
    .dw XT_RXQ ; USER_KEYQ
    .dw XT_NOOP ; USER_SKEY

; 1st free address in EEPROM.
edp:
.cseg
