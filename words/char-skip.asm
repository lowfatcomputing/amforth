; ( addr1 n1 c -- addr2 n2 ) String
; R( -- )
; skips leading occurancies in string at addr1/n1 leaving addr2/n2 pointing to the 1st non-c character
VE_CSKIP:
    .db $05, "cskip"
    .dw VE_HEAD
    .set VE_HEAD = VE_CSKIP
XT_CSKIP:
    .dw DO_COLON
PFA_CSKIP:
    .dw XT_TO_R           ; ( -- addr1 n1 )
PFA_CSKIP1:
    .dw XT_DUP            ; ( -- addr' n' n' )
    .dw XT_NOTEQUALZERO
    .dw XT_DOCONDBRANCH   ; ( -- addr' n')
    .dw PFA_CSKIP2
    .dw XT_OVER           ; ( -- addr' n' addr' )
    .dw XT_CFETCH         ; ( -- addr' n' c' )
    .dw XT_R_FETCH        ; ( -- addr' n' c' c )
    .dw XT_EQUAL          ; ( -- addr' n' f )
    .dw XT_DOCONDBRANCH   ; ( -- addr' n')
    .dw PFA_CSKIP2
    .dw XT_1MINUS         ; ( -- addr' n'')
    .dw XT_SWAP           ; ( -- n'' addr')
    .dw XT_1PLUS          ; ( -- n'' addr'')
    .dw XT_SWAP           ; ( -- addr'' n'')
    .dw XT_DOBRANCH
    .dw PFA_CSKIP1
PFA_CSKIP2:
    .dw XT_R_FROM
    .dw XT_DROP           ; ( -- addr2 n2)
    .dw XT_EXIT
