; ( r-addr r-len f-addr f-len --  f) 
; Tools
; compares string in RAM with string in flash
VE_ICOMPARE:
    .word 0xff08
    .ascii "icompare"
    .word VE_HEAD
    .set VE_HEAD, VE_ICOMPARE
XT_ICOMPARE:
    .word DO_COLON
PFA_ICOMPARE:
    .word XT_TO_R    ; ( -- r-addr r-len f-addr)
    .word XT_OVER    ; ( -- r-addr r-len f-addr r-len)
    .word XT_R_FROM  ; ( -- r-addr r-len f-addr r-len f-len )
    .word XT_NOTEQUAL ; ( -- r-addr r-len f-addr flag )
    .word XT_DOCONDBRANCH
    .word PFA_ICOMPARE_SAMELEN
      .word XT_2DROP
      .word XT_DROP
      .word XT_ZERO
      .word XT_EXIT
PFA_ICOMPARE_SAMELEN:
    .word XT_SWAP ; ( -- r-addr f-addr len )
    .word XT_ZERO
    .word XT_DOQDO
    .word PFA_ICOMPARE_DONE
PFA_ICOMPARE_LOOP:
    ; ( r-addr f-addr --)
    .word XT_OVER
    .word XT_FETCH
.if WANT_IGNORECASE == 1
    .word XT_ICOMPARE_LC
.endif
    .word XT_OVER
    .word XT_FETCHI ; ( -- r-addr f-addr r-cc f- cc)
.if WANT_IGNORECASE == 1
    .word XT_ICOMPARE_LC
.endif
    ; flash strings are zero-padded at the last cell
    ; that means: if the flash cell is less 0x0100, than mask the
    ; high byte in the ram cell
    .word XT_DUP
    ;.word XT_BYTESWAP
    .word XT_DOLITERAL
    .word 0x100
    .word XT_ULESS
    .word XT_DOCONDBRANCH
    .word PFA_ICOMPARE_LASTCELL
    .word XT_SWAP
    .word XT_DOLITERAL
    .word 0x00FF
    .word XT_AND  ; the final swap can be omitted
PFA_ICOMPARE_LASTCELL:
    .word XT_NOTEQUAL
    .word XT_DOCONDBRANCH
    .word PFA_ICOMPARE_NEXTLOOP
    .word XT_2DROP
    .word XT_ZERO
    .word XT_UNLOOP
    .word XT_EXIT
PFA_ICOMPARE_NEXTLOOP:
    .word XT_1PLUS
    .word XT_SWAP
    .word XT_CELLPLUS
    .word XT_SWAP
    .word XT_DOLITERAL
    .word 2
    .word XT_DOPLUSLOOP
    .word PFA_ICOMPARE_LOOP
PFA_ICOMPARE_DONE:
    .word XT_2DROP
    .word XT_TRUE
    .word XT_EXIT

.if WANT_IGNORECASE == 1
; ( cc1 cc2 -- f) 
; Tools
; compares two packed characters 
;VE_ICOMPARELC:
;    .word 0xff08
;    .ascii "icompare-lower"
;    .word VE_HEAD
;    .set VE_HEAD, VE_ICOMPARELC
XT_ICOMPARE_LC:
    .word DO_COLON
PFA_ICOMPARE_LC:
    .word XT_DUP
    .word XT_DOLITERAL
    .word 0x00ff
    .word XT_AND
    .word XT_TOLOWER
    .word XT_SWAP
    .word XT_BYTESWAP
    .word XT_DOLITERAL
    .word 0x00ff
    .word XT_AND
    .word XT_TOLOWER
    .word XT_BYTESWAP
    .word XT_OR
    .word XT_EXIT
.endif
