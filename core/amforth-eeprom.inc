    .word -1           ; EEPROM Address 0 should not be used
EE_DP:
    .word DPSTART      ; Dictionary Pointer
EE_HERE:
    .word HERESTART    ; Memory Allocation
EE_EDP:
    .word EDPSTART     ; EEProm Memory Allocation
EE_TURNKEY:
    .word XT_APPLTURNKEY  ; TURNKEY
EE_STOREI:
    .word XT_DO_STOREI  ; Store a cell into flash

EE_ENVIRONMENT:
    .word VE_ENVHEAD   ; environmental queries
EE_WL_FORTH:
    .word EE_FORTHWORDLIST; forth-wordlist
EE_CURRENT:
    .word EE_FORTHWORDLIST
EE_FORTHWORDLIST:
    .word VE_HEAD      ; pre-defined (compiled in) wordlist
EE_ORDERLISTLEN:
    .word 1
EE_ORDERLIST: ; list of wordlist id, exactly numwordlist entries
    .word EE_FORTHWORDLIST      ; get/set-order
    .byte  (NUMWORDLISTS-1)*CELLSIZE ; two slots are already used
EE_RECOGNIZERS:
EE_RECOGNIZERLISTLEN:
    .word 3
EE_RECOGNIZERLIST:
    .word XT_REC_FIND
    .word XT_REC_INTNUMBER
    .word XT_REC_NOTFOUND
    .word -1
    .word -1
    .word -1

EE_WLSCOPE:
    .word XT_GET_CURRENT  ; default wordlist scope

; MARKER saves everything up to here. Nothing beyond gets saved
EE_MARKER:
    .word EE_MARKER

; default user area
EE_INITUSER:
    .word 0  ; USER_STATE
    .word 0  ; USER_FOLLOWER
    .word rstackstart  ; USER_RP
    .word stackstart   ; USER_SP0
    .word stackstart   ; USER_SP
    
    .word 0  ; USER_HANDLER
    .word 10 ; USER_BASE
    
    .word XT_TX  ; USER_EMIT
    .word XT_TXQ ; USER_EMITQ
    .word XT_RX  ; USER_KEY
    .word XT_RXQ ; USER_KEYQ
    .word XT_SOURCETIB ; USER_SKEY
    .word 0            ; USER_G_IN
    .word XT_REFILLTIB ; USER_REFILL  

; calculate baud rate error
.equ UBRR_VAL  , ((F_CPU+BAUD*8)/(BAUD*16)-1)  ; smart round
.equ BAUD_REAL , (F_CPU/(16*(UBRR_VAL+1)))     ; effective baud rate
.equ BAUD_ERROR, ((BAUD_REAL*1000)/BAUD-1000)  ; error in pro mille

.if ((BAUD_ERROR>BAUD_MAXERROR) || (BAUD_ERROR<-BAUD_MAXERROR))       
  .error "Serial line cannot be set up properly (systematic baud error too high)"
.endif
EE_UBRRVAL:
    .word UBRR_VAL     ; BAUDRATE
EE_FCPU:
    .int F_CPU        ; CPU Clock
