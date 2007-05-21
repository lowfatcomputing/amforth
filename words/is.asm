; ( xt1 c<char> -- ) System
; R( --)
; stores xt into defer or compiles code to do so at runtime
VE_IS:
    .db $82, "is", 0
    .dw VE_HEAD
    .set VE_HEAD = VE_IS
XT_IS:
    .dw DO_COLON
PFA_IS:
    .dw XT_STATE
    .dw XT_FETCH
    .dw XT_DOCONDBRANCH
    .dw PFA_IS1
    .dw XT_BRACKETTICK
    .dw XT_COMPILE
    .dw XT_DEFERSTORE
    .dw XT_EXIT
PFA_IS1:
    .dw XT_TICK
    .dw XT_DEFERSTORE
    .dw XT_EXIT

