; ( -- )
VE_QUIT:
    .db $04, "quit", 0
    .dw VE_LATEST
    .set VE_LATEST = VE_QUIT
XT_QUIT:
    .dw DO_COLON
PFA_QUIT:
    .dw XT_HEX
    .dw XT_DOLITERAL
    .dw 0
    .dw XT_STATE
    .dw XT_STORE
    .dw XT_VER
PFA_QUIT2:
    .dw XT_DOLITERAL
    .dw PFA_QUIT3
    .dw XT_ITYPE
    .dw XT_DROP
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
    .dw XT_INTERPRET
    .dw XT_DOBRANCH
    .dw PFA_QUIT2
    .dw XT_EXIT ; never reached
PFA_QUIT3:
    .db $07, " ok ",13,10,0
