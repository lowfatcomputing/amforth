; ( -- )
; R( -- )
; main entry word. executes turnkey operation and executes quit
VE_COLD:
    .db $04, "cold", 0
    .dw VE_HEAD
    .set VE_HEAD = VE_COLD
XT_COLD:
    .dw DO_COLON
PFA_COLD:
    .dw XT_SP0
    .dw XT_SP_STORE
    .dw XT_RP0
    .dw XT_RP_STORE
    ; set IO
    .dw XT_DOLITERAL
    .dw XT_TX0
    .dw XT_TICKEMIT
    .dw XT_STORE

    .dw XT_DOLITERAL
    .dw XT_TX0Q
    .dw XT_TICKEMITQ
    .dw XT_STORE

    .dw XT_DOLITERAL
    .dw XT_RX0
    .dw XT_TICKKEY
    .dw XT_STORE

    .dw XT_DOLITERAL
    .dw XT_RX0Q
    .dw XT_TICKKEYQ
    .dw XT_STORE

    .dw XT_DOLITERAL
    .dw XT_NOOP
    .dw XT_TICKSLASHKEY
    .dw XT_STORE

    .dw XT_ZERO
    .dw XT_STATE
    .dw XT_STORE

    .dw XT_ZERO
    .dw XT_TICKPAUSE
    .dw XT_STORE

    .dw XT_BAUD0
    .dw XT_USART0
    .dw XT_INTON

    .dw XT_TICKTURNKEY
    .dw XT_EFETCH
    .dw XT_QEXECUTE

    
    .dw XT_QUIT
    .dw XT_EXIT
