; ( -- <here >here ) Control Structure; addr=L-mark
; R( -- )
; start do .. [+]loop; may use LEAVE as well.
VE_DOL:
    .db $84, "do_l",0
    .dw VE_HEAD
    .set VE_HEAD = VE_DOL
XT_DOL:
    .dw DO_COLON
PFA_DOL:
    .dw XT_COMPILE
    .dw XT_DODOL
    .dw XT_GMARK  ; ( -- <here )
    .dw XT_LMARK  ; ( -- <here >here )
    .dw XT_EXIT
