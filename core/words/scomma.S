; ( addr len -- ) 
; Compiler
; compiles a string from RAM to Flash
VE_SCOMMA:
  .word 0xff02
  .ascii "s"
  .byte 0x2c
  .word VE_HEAD
  .set VE_HEAD, VE_SCOMMA
XT_SCOMMA:
    .word DO_COLON
PFA_SCOMMA:
    .word XT_DUP
    .word XT_DOSCOMMA
    .word XT_EXIT

; ( addr len len' -- ) 
; Compiler
; compiles a string from RAM to Flash
;VE_DOSCOMMA:
;  .word 0xff04
;  .ascii "(s",0x2c,")"
;  .word VE_HEAD
;  .set VE_HEAD, VE_DOSCOMMA
XT_DOSCOMMA:
    .word DO_COLON
PFA_DOSCOMMA:
    .word XT_COMMA
    .word XT_DUP   ; ( --addr len len)
    .word XT_2SLASH ; ( -- addr len len/2
    .word XT_SWAP   ; ( -- addr len/2 len
    .word XT_OVER   ; ( -- addr len/2 len len/2
    .word XT_2STAR  ; ( -- addr len/2 len len'
    .word XT_MINUS  ; ( -- addr len/2 rem
    .word XT_TO_R
    .word XT_ZERO
    .word XT_DOQDO
    .word PFA_SCOMMA2
PFA_SCOMMA1:
    .word XT_DUP         ; ( -- addr addr )
    .word XT_FETCH       ; ( -- addr c1c2 )
    .word XT_COMMA       ; ( -- addr )
    .word XT_CELLPLUS    ; ( -- addr+cell )
    .word XT_DOLOOP
    .word PFA_SCOMMA1
PFA_SCOMMA2:
    .word XT_R_FROM
    .word XT_GREATERZERO
    .word XT_DOCONDBRANCH
    .word PFA_SCOMMA3
      .word XT_DUP     ; well, tricky
      .word XT_CFETCH
      .word XT_COMMA
PFA_SCOMMA3:
    .word XT_DROP        ; ( -- )
    .word XT_EXIT
