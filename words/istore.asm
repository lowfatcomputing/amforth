; ( n addr -- ) Memory
; R( -- )
; writes a cell in flash
VE_ISTORE:
    .db $02, "i!",0
    .dw VE_HEAD
    .set VE_HEAD = VE_ISTORE
XT_ISTORE:
    .dw DO_COLON
PFA_ISTORE:
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
    .dw XT_IFETCH
    .dw XT_INVERT
    .dw XT_AND
    .dw XT_DOCONDBRANCH
    .dw PFA_ISTORE_WRITE
        .dw XT_DUP
	.dw XT_SPMERASE
PFA_ISTORE_WRITE:
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
;    .db 11, "spmpageload"
;    .dw VE_HEAD
;    .set VE_HEAD = VE_INTSPMPAGELOAD
XT_SPMPAGELOAD:
    .dw DO_COLON
PFA_SPMPAGELOAD:
    .dw XT_DUP
    .dw XT_TO_R
    .dw XT_DOLITERAL
    .dw PAGEMASK
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
	.dw XT_IFETCH
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
;    .db $03, "(spm)"
;    .dw VE_HEAD
;    .set VE_HEAD = VE_DOSPM
XT_DOSPM:
    .dw PFA_DOSPM
PFA_DOSPM:
  ; wait for pending spm instruction
PFA_DOSPM1:
    in temp1, SPMCR
    andi temp1, (1<<SPMEN)
    brne PFA_DOSPM1

PFA_DOSPM2:
    sbic EECR, EEWE
    rjmp PFA_DOSPM2

    ; address
    movw zl, tosl
    lsl zl
    rol zh
    ; value
    ld r0, Y+
    ld r1, Y+
    ; command
    ld temp0, Y+
    ld temp1, Y+
    ; spm timed sequence
    out SPMCR, temp0
    spm
    loadtos
    rjmp DO_NEXT

; ( x addr -- )
; R( -- )
; execute spm buf instruction
;VE_SPMBUF:
;    .db $06, "spmbuf",0
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
;    .db $08, "spmerase",0
;    .dw VE_HEAD
;    .set VE_HEAD = VE_SPMERASE
XT_SPMERASE:
    .dw DO_COLON
PFA_SPMERASE:
    .dw XT_DOLITERAL
    .dw PAGEMASK
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
;    .db $08, "spmwrite",0
;    .dw VE_HEAD
;    .set VE_HEAD = VE_WPMWRITE
XT_SPMWRITE:
    .dw DO_COLON
PFA_SPMWRITE:
    .dw XT_DOLITERAL
    .dw PAGEMASK
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
; re-enables rww section execute spm rww instruction
;VE_SPMRWW:
;    .db $05, "spmrww"
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
    .dw XT_EXIT

