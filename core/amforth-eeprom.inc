.eseg
    .dw -1           ; EEPROM Address 0 should not be used
EE_DP:
    .dw lowflashlast ; DP
EE_HERE:
    .dw here         ; HERE
EE_EDP:
    .dw edp          ; EDP
EE_TURNKEY:
    .dw XT_APPLTURNKEY  ; TURNKEY
EE_STOREI:
    .dw XT_DO_STOREI  ; Store a cell into flash

; calculate baud rate error
.equ UBRR_VAL   = ((F_CPU+BAUD*8)/(BAUD*16)-1)  ; smart round
.equ BAUD_REAL  = (F_CPU/(16*(UBRR_VAL+1)))     ; effective baud rate
.equ BAUD_ERROR = ((BAUD_REAL*1000)/BAUD-1000)  ; error in pro mille

.if ((BAUD_ERROR>10) || (BAUD_ERROR<-10))       ; accept +/-10 error (pro mille)
  .error "Serial line cannot be set up properly (systematic baud error too high)"
.endif
; default user area
EE_INITUSER:
    .dw 0  ; USER_STATE
    .dw 0  ; USER_FOLLOWER
    .dw rstackstart  ; USER_RP
    .dw stackstart   ; USER_SP0
    .dw stackstart   ; USER_SP
    
    .dw 0  ; USER_HANDLER
    .dw 10 ; USER_BASE
    
    .dw XT_TX  ; USER_EMIT
    .dw XT_TXQ ; USER_EMITQ
    .dw XT_RX  ; USER_KEY
    .dw XT_RXQ ; USER_KEYQ
    .dw XT_NOOP ; USER_SKEY

EE_UBRRVAL:
    .dw UBRR_VAL     ; BAUDRATE

EE_ENVIRONMENT:
    .dw VE_ENVHEAD   ; environmental queries
EE_WL_FORTH:
    .dw EE_FORTHWORDLIST; forth-wordlist
EE_CURRENT:
    .dw EE_FORTHWORDLIST
EE_FORTHWORDLIST:
    .dw VE_HEAD      ; pre-defined (compiled in) wordlist
EE_ORDERLISTLEN:
    .dw 1
EE_ORDERLIST: ; list of wordlist id, exactly numwordlist entries
    .dw EE_FORTHWORDLIST      ; get/set-order
    .dw -1
    .dw -1
    .dw -1
    .dw -1
    .dw -1
    .dw -1
    .dw -1


EE_RECOGNIZERS:
EE_RECOGNIZERLISTLEN:
    .dw 3
EE_RECOGNIZERLIST:
    .dw XT_REC_FIND
    .dw XT_REC_INTNUMBER
    .dw XT_REC_NOTFOUND
    .dw -1
    .dw -1
    .dw -1
; 1st free address in EEPROM.
edp:
.cseg