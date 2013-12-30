; ( i*x xt -- j*x 0 | i*x n )
; Exceptions
; execute XT and check for exceptions.
VE_CATCH:
    .word 0xff05
    .string "catch"
    .word VE_HEAD
    .set VE_HEAD, VE_CATCH
XT_CATCH:
    .word DO_COLON
PFA_CATCH:
    ; sp@ >r
    .word XT_SP_FETCH
    .word XT_TO_R
    ; handler @ >r
    .word XT_HANDLER
    .word XT_FETCH
    .word XT_TO_R
    ; rp@ handler !
    .word XT_RP_FETCH
    .word XT_HANDLER
    .word XT_STORE
    .word XT_EXECUTE
    ; r> handler !
    .word XT_R_FROM
    .word XT_HANDLER
    .word XT_STORE
    .word XT_R_FROM
    .word XT_DROP
    .word XT_ZERO
    .word XT_EXIT
