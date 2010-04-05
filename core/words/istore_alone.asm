; ( n addr -- ) Memory
; R( -- )
; writes a cell in flash
VE_ISTORE:
    .dw $ff02
    .db "i!"
    .dw VE_HEAD
    .set VE_HEAD = VE_ISTORE
XT_ISTORE:
    .dw PFA_ISTORE
PFA_ISTORE:
  movw temp2, tosl ; save the (word) address
  loadtos          ; get the new value for the flash cell

  ; write data to temp page buffer
  ; use the values in tosl/tosh at the
  ; appropiate place
  rcall pageload

  ; erase page if needed
  ; it is needed if a bit goes from 0 to 1
  com temp6
  com temp7
  and tosl, temp6
  and tosh, temp7
  or tosh, tosl
  breq istore_writepage 

    movw zl, temp2
    ldi temp0,(1<<PGERS|1<<SPMEN)
    rcall dospm

istore_writepage:
  ; write page
  movw zl, temp2
  ldi temp0,(1<<PGWRT|1<<SPMEN)
  rcall dospm

  ; reenable RWW section
  movw zl, temp2
  ldi temp0,(1<<RWWSRE|1<<SPMEN)
  rcall dospm
  ; finally clear the stack
  loadtos
  jmp_ DO_NEXT


; load the desired page
.equ pagemask = ~ ( PAGESIZE - 1 )
pageload:
  push xl
  push xh
  push yl
  push yh

  movw zl, temp2
  ; get the beginning of page
  andi zl,low(pagemask)
  andi zh,high(pagemask)
  movw y, z
  ; loop counter (in words)
  ldi xl,low(pagesize)
  ldi xh,high(pagesize)
pageload_loop:
  ; we need the current flash value anyways
  movw z, y
  readflashcell temp6, temp7 ; destroys Z
  movw z, y
  ; now check: if Z points to the same cell as temp2/3, we want the new data
  cp zl, temp2
  cpc zh, temp3
  breq pageload_newdata
    movw r0, temp6
    rjmp pageload_cont
pageload_newdata:
    movw r0, tosl
pageload_cont:
  ldi temp0,(1<<SPMEN)
  rcall dospm
  adiw y, 1
  sbiw x, 1
  brne pageload_loop

pageload_done:
  pop yh
  pop yl
  pop xh
  pop xl
  ret


;; dospm
;;
;; execute spm instruction
;;   temp0 holds the value for SPMCR

dospm:
  ; store status register
  in temp1,SREG
  push temp1
  cli
Wait_ee:
  sbic EECR, EEWE
  rjmp Wait_ee
wait_spm:
  in   temp1, SPMCR
  sbrc temp1, SPMEN
  rjmp Wait_spm

  ; turn the word addres into a byte address
  writeflashcell
  ; execute spm
  out SPMCR,temp0
  spm
  pop temp1
  ; restore status register
  out SREG,temp1
  ret

