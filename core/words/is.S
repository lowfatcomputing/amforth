; ( xt1 c<char> -- ) 
; System
; stores xt into defer or compiles code to do so at runtime
VE_IS:
    .word 0x0002
    .ascii "is"
    .word VE_HEAD
    .set VE_HEAD, VE_IS
XT_IS:
    .word DO_COLON
PFA_IS:
    .word XT_STATE
    .word XT_FETCH
    .word XT_DOCONDBRANCH
    .word PFA_IS1
    .word XT_BRACKETTICK
    .word XT_COMPILE
    .word XT_DEFERSTORE
    .word XT_EXIT
PFA_IS1:
    .word XT_TICK
    .word XT_DEFERSTORE
    .word XT_EXIT

