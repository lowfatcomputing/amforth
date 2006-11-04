; ( -- )
VE_QUIT:
    .db $04, "quit", 0
    .dw VE_HEAD
    .set VE_HEAD = VE_QUIT
XT_QUIT:
    .dw DO_COLON
PFA_QUIT:
    .dw XT_HEX
    .dw XT_DOLITERAL
    .dw 0
    .dw XT_STATE
    .dw XT_STORE
    .dw XT_VER
    .dw XT_CR
PFA_QUIT2:
    .dw XT_STATE
    .dw XT_FETCH
    .dw XT_EQUALZERO
    .dw XT_DOCONDBRANCH
    .dw PFA_QUIT4
    .dw XT_CR
    .dw XT_DODOTSTRING
    .db 2, "> ",0
PFA_QUIT4:    
    .dw XT_TIB
    .dw XT_DOLITERAL
    .dw TIBSIZE
    .dw XT_ACCEPT
    .dw XT_NUMBERTIB
    .dw XT_STORE
    .dw XT_DOLITERAL
    .dw 0
    .dw XT_G_IN
    .dw XT_STORE
    
    .dw XT_DOLITERAL
    .dw XT_INTERPRET
    .dw XT_CATCH
    .dw XT_QDUP
    .dw XT_DOCONDBRANCH
    .dw PFA_QUIT3
    .dw XT_DODOTSTRING
    .db 3, " ??"
    .dw XT_DOT
    .dw XT_DOBRANCH
    .dw PFA_QUIT2
PFA_QUIT3:
    .dw XT_DODOTSTRING
    .db 3, " ok"
    .dw XT_DOBRANCH
    .dw PFA_QUIT2

    .dw XT_EXIT ; never reached
