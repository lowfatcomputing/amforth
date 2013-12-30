; ( addr1 u1 n -- addr2 u2 ) 
; String
; adjust string from addr1 to addr1+n, reduce length from u1 to u2 by n
VE_SLASHSTRING:
    .word 0xff07
    .string "/string"
    .word VE_HEAD
    .set VE_HEAD, VE_SLASHSTRING
XT_SLASHSTRING:
    .word DO_COLON
PFA_SLASHSTRING:
    .word XT_OVER    ; ( -- addr1 u1 n u1)
    .word XT_MIN     ; ( -- addr1 u1 n|u1)
    .word XT_ROT     ; ( -- u1 n addr1 )
    .word XT_OVER    ; ( -- u1 n addr1 n)
    .word XT_PLUS    ; ( -- u1 n addr2 )
    .word XT_ROT     ; ( -- n addr2 u1)
    .word XT_ROT     ; ( -- addr2 u1 n)
    .word XT_MINUS   ; ( -- addr2 u2)
    .word XT_EXIT

