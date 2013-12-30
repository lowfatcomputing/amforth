; ( mode -- ) 
; MCU
; put the controller into the specified sleep mode
VE_SLEEP:
    .word 0xff05
    .db "sleep", 0
    .word VE_HEAD
    .set VE_HEAD, VE_SLEEP
XT_SLEEP:
    .word PFA_SLEEP
PFA_SLEEP:
  andi  tosl, 7        ; leave only legal mode bits
  lsl    tosl        ; move to correct location (bits 3-1)
  ori    tosl, 1        ; set the SE bit
  out_  SMCR, tosl      ; set the sleep config
  sleep            ; nighty-night
  out_  SMCR, zerol      ; 0 protects against accidental sleeps
  loadtos            ; pop argument from stack
  jmp_    DO_NEXT
