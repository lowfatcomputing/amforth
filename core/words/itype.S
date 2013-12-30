; ( addr n --  ) 
; Tools
; reads string from flash and prints it
VE_ITYPE:
    .word 0xff05
    .string "itype"
    .word VE_HEAD
    .set VE_HEAD, VE_ITYPE
XT_ITYPE:
    .word DO_COLON
PFA_ITYPE:
    .word XT_DUP    ; ( --addr len len)
    .word XT_2SLASH ; ( -- addr len len/2
    .word XT_SWAP   ; ( -- addr len/2 len
    .word XT_OVER   ; ( -- addr len/2 len len/2
    .word XT_2STAR  ; ( -- addr len/2 len len'
    .word XT_MINUS  ; ( -- addr len/2 rem
    .word XT_TO_R
    .word XT_ZERO
    .word XT_DOQDO
    .word PFA_ITYPE2
PFA_ITYPE1:
    .word XT_DUP         ; ( -- addr addr )
    .word XT_FETCHI      ; ( -- addr c1c2 )
    .word XT_DUP
    .word XT_LOWEMIT
    .word XT_HIEMIT
    .word XT_1PLUS    ; ( -- addr+cell )
    .word XT_DOLOOP
    .word PFA_ITYPE1
PFA_ITYPE2:
    .word XT_R_FROM
    .word XT_GREATERZERO
    .word XT_DOCONDBRANCH
    .word PFA_ITYPE3
      .word XT_DUP     ; make sure the drop below has always something to do
      .word XT_FETCHI
      .word XT_LOWEMIT
PFA_ITYPE3:
    .word XT_DROP
    .word XT_EXIT

; ( w -- )
; R( -- )
; content of cell fetched on stack.
;VE_HIEMIT:
;    .word 0xff06
;    .ascii "hiemit"
;    .word VE_HEAD
;    .set VE_HEAD, VE_HIEMIT
XT_HIEMIT:
    .word DO_COLON
PFA_HIEMIT:
    .word XT_BYTESWAP
    .word XT_LOWEMIT
    .word XT_EXIT

; ( w -- )
; R( -- )
; content of cell fetched on stack.
;VE_LOWEMIT:
;    .word 0xff07
;    .ascii "lowemit"
;    .word VE_HEAD
;    .set VE_HEAD, VE_LOWEMIT
XT_LOWEMIT:
    .word DO_COLON
PFA_LOWEMIT:
    .word XT_DOLITERAL
    .word 0x00ff
    .word XT_AND
    .word XT_EMIT
    .word XT_EXIT
