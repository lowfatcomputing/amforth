; ( n f-addr -- ) 
; Memory
; writes n to flash memory using assembly code (code to be placed in boot loader section)
VE_DO_STOREI_NRWW:
    .word 0xff09
    .string "(!i-nrww)"
    .word VE_HEAD
    .set VE_HEAD, VE_DO_STOREI_NRWW
XT_DO_STOREI:
    .word PFA_DO_STOREI_NRWW
PFA_DO_STOREI_NRWW:
  ; store status register
  in temp1,_SFR_IO_ADDR(SREG)
  push temp1
  cli

  movw temp2, tosl ; save the (word) address
  loadtos          ; get the new value for the flash cell
  push XL
  push XH
  push YL
  push YH
  rcall DO_STOREI_atmega
  pop YH
  pop YL
  pop XH
  pop XL
  ; finally clear the stack
  loadtos
  pop temp1
  ; restore status register (and interrupt enable flag)
  out _SFR_IO_ADDR(SREG),temp1

  jmp_ DO_NEXT

; 
DO_STOREI_atmega:
  ; write data to temp page buffer
  ; use the values in tosl/tosh at the
  ; appropiate place
  rcall pageload

  ; erase page if needed
  ; it is needed if a bit goes from 0 to 1
  com temp4
  com temp5
  and tosl, temp4
  and tosh, temp5
  or tosh, tosl
  breq DO_STOREI_writepage 

    movw ZL, temp2
    ldi temp0,(1<<PGERS)
    rcall dospm

DO_STOREI_writepage:
  ; write page
  movw ZL, temp2
  ldi temp0,(1<<PGWRT)
  rcall dospm

  ; reenable RWW section
  movw ZL, temp2
  ldi temp0,(1<<RWWSRE)
  rcall dospm
  ret

; load the desired page
.equ pagemask , ~ ( PAGESIZE - 1 )
pageload:
  movw ZL, temp2
  ; get the beginning of page
  andi ZL,lo8(pagemask)
  andi ZH,hi8(pagemask)
  ;movw Y, Z ;; removed
  movw YL, ZL ;; added
  ; loop counter (in words)
  ldi XL,lo8(pagesize)
  ldi XH,hi8(pagesize)
pageload_loop:
  ; we need the current flash value anyways
  ;; movw Z, Y ;; removed
  movw ZL, YL ;; added
  readflashcell temp6, temp7 ; destroys Z
  ; now check: if Z points to the same cell as temp2/3, we want the new data
  ;;movw Z, Y ;; removed
  movw ZL, YL ;; added
  cp ZL, temp2
  cpc ZH, temp3
  breq pageload_newdata
    movw r0, temp6
    rjmp pageload_cont
pageload_newdata:
    movw temp4, temp6
    movw r0, tosl
pageload_cont:
  clr temp0
  rcall dospm
  adiw YL, 1
  sbiw XL, 1
  brne pageload_loop

pageload_done:
  ret


;; dospm
;;
;; execute spm instruction
;;   temp0 holds the value for SPMCR

dospm:
dospm_wait_ee:
  sbic _SFR_IO_ADDR(EECR), EEPE
  rjmp dospm_wait_ee
dospm_wait_spm:
  in_  temp1, SPMCSR
  sbrc temp1, SPMEN
  rjmp dospm_wait_spm

  ; turn the word addres into a byte address
  writeflashcell
  ; execute spm
  ori temp0, (1<<SPMEN)
  out_ SPMCSR,temp0
  spm
  ret
