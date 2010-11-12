; ( n addr -- ) Memory
; R( -- )
; writes a cell in flash using forth code
VE_DO_STOREI_FORTH:
    .dw $ff04
    .db "(i!)"
    .dw VE_HEAD
    .set VE_HEAD = VE_DO_STOREI_FORTH
XT_DO_STOREI:
    .dw DO_COLON
PFA_DO_STOREI:
    .dw XT_INTOFF
    .dw XT_TO_R
    .dw XT_OVER
    .dw XT_OVER
    .dw XT_SPMBUF

    .dw XT_DUP
    .dw XT_SPMPAGELOAD

    ; an erase cycle is only necessary
    ; when changing a bit from 0 to 1
    .dw XT_OVER
    .dw XT_OVER
    .dw XT_FETCHI
    .dw XT_INVERT
    .dw XT_AND
    .dw XT_DOCONDBRANCH
    .dw PFA_DO_STOREI_WRITE
        .dw XT_DUP
	.dw XT_SPMERASE
PFA_DO_STOREI_WRITE:
    .dw XT_DUP
    .dw XT_SPMWRITE
    .dw XT_SPMRWW
    .dw XT_DROP
    .dw XT_DROP
    .dw XT_R_FROM
    .dw XT_INTRESTORE
    .dw XT_EXIT

; ( addr -- )
; R( -- )
; load the flash page of cell addr into write buffer, omitting addr itself
;VE_SPMPAGELOAD:
;    .dw $ff0b
;    .db "spmpageload"
;    .dw VE_HEAD
;    .set VE_HEAD = VE_INTSPMPAGELOAD
XT_SPMPAGELOAD:
    .dw DO_COLON
PFA_SPMPAGELOAD:
    .dw XT_DUP
    .dw XT_TO_R
    .dw XT_DOLITERAL
    .dw ~ ( PAGESIZE - 1 )

    .dw XT_AND
    .dw XT_DOLITERAL
    .dw PAGESIZE
    .dw XT_SWAP
PFA_SPMPAGELOAD1:
    .dw XT_OVER
    .dw XT_GREATERZERO
    .dw XT_DOCONDBRANCH
    .dw PFA_SPMPAGELOADDONE
    .dw XT_R_FROM
    .dw XT_DUP
    .dw XT_TO_R
    .dw XT_OVER
    .dw XT_NOTEQUAL
    .dw XT_DOCONDBRANCH
    .dw PFA_SPMPAGELOAD3
	.dw XT_DUP
	.dw XT_FETCHI
	.dw XT_OVER
	.dw XT_SPMBUF
PFA_SPMPAGELOAD3: ;( size addr -- )
    .dw XT_1PLUS
    .dw XT_SWAP
    .dw XT_1MINUS
    .dw XT_SWAP
    .dw XT_DOBRANCH
    .dw PFA_SPMPAGELOAD1
PFA_SPMPAGELOADDONE:
    .dw XT_DROP
    .dw XT_DROP
    .dw XT_R_FROM
    .dw XT_DROP
    .dw XT_EXIT

; ( spmcsr x addr -- )
; R( -- )
; execute spm instruction
;VE_DOSPM:
;    .dw $ff03
;    .db "(spm)"
;    .dw VE_HEAD
;    .set VE_HEAD = VE_DOSPM
XT_DOSPM:
    .dw PFA_DOSPM
PFA_DOSPM:
  ; wait for pending spm instruction
PFA_DOSPM1:
    in_ temp1, SPMCSR
    andi temp1, (1<<SPMEN)
    brne PFA_DOSPM1

PFA_DOSPM2:
    sbic EECR, EEPE
    rjmp PFA_DOSPM2

    ; value
    ld r0, Y+
    ld r1, Y+
    ; command
    ld temp0, Y+
    ld temp1, Y+
    ; address
    movw zl, tosl
    writeflashcell
    ; spm timed sequence
    out_ SPMCSR, temp0
    spm
    loadtos
    rjmp DO_NEXT

; ( x addr -- )
; R( -- )
; execute spm buf instruction
;VE_SPMBUF:
;    .dw $ff06
;    .db "spmbuf"
;    .dw VE_HEAD
;    .set VE_HEAD = VE_SPMBUF
XT_SPMBUF:
    .dw DO_COLON
PFA_SPMBUF:
    .dw XT_TO_R
    .dw XT_TO_R
    .dw XT_DOLITERAL
    .dw (1<<SPMEN)
    .dw XT_R_FROM
    .dw XT_R_FROM
    .dw XT_DOSPM
    .dw XT_EXIT

; ( addr -- )
; R( -- )
; execute spm erase instruction
;VE_SPMERASE:
;    .dw $ff08
;    .db "spmerase"
;    .dw VE_HEAD
;    .set VE_HEAD = VE_SPMERASE
XT_SPMERASE:
    .dw DO_COLON
PFA_SPMERASE:
    .dw XT_DOLITERAL
    .dw ~ ( PAGESIZE - 1 )
    .dw XT_AND
    .dw XT_TO_R
    .dw XT_DOLITERAL
    .dw (1<<PGERS|1<<SPMEN)
    .dw XT_ZERO
    .dw XT_R_FROM
    .dw XT_DOSPM
    .dw XT_EXIT

; ( spmcsr x addr -- )
; R( -- )
; execute spm write instruction
;VE_SPMWRITE:
;    .dw $ff08
;    .db "spmwrite"
;    .dw VE_HEAD
;    .set VE_HEAD = VE_WPMWRITE
XT_SPMWRITE:
    .dw DO_COLON
PFA_SPMWRITE:
    .dw XT_DOLITERAL
    .dw ~ ( PAGESIZE - 1 )
    .dw XT_AND
    .dw XT_TO_R
    .dw XT_DOLITERAL
    .dw (1<<PGWRT|1<<SPMEN)
    .dw XT_ZERO
    .dw XT_R_FROM
    .dw XT_DOSPM
    .dw XT_EXIT

; ( -- )
; R( -- )
; checks the rww enable flag
;VE_SPMRWWQ:
;    .dw $ff07
;    .db "spmrww?"
;    .dw VE_HEAD
;    .set VE_HEAD = VE_SPMRWWQ
XT_SPMRWWQ:
    .dw PFA_SPMRWWQ
PFA_SPMRWWQ:
    savetos
    in_ tosl, SPMCSR
    movw zl, zerol
    sbrs tosl, RWWSB
    sbiw zl, 1
    movw tosl, zl
    rjmp DO_NEXT

; ( -- )
; R( -- )
; re-enables rww section execute spm rww instruction
;VE_SPMRWW:
;    .dw $ff05
;    .db "spmrww"
;    .dw VE_HEAD
;    .set VE_HEAD = VE_SPMRWW
XT_SPMRWW:
    .dw DO_COLON
PFA_SPMRWW:
    .dw XT_DOLITERAL
    .dw (1<<RWWSRE|1<<SPMEN)
    .dw XT_ZERO
    .dw XT_ZERO
    .dw XT_DOSPM
    .dw XT_SPMRWWQ
    .dw XT_DOCONDBRANCH
    .dw PFA_SPMRWW
    .dw XT_EXIT
