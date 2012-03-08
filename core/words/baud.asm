; ( -- v) 
; MCU
; returns usart baudrate settings
VE_BAUD:
  .dw $ff04
  .db "baud"
  .dw VE_HEAD
  .set VE_HEAD = VE_BAUD
XT_BAUD:
  .dw PFA_DOVALUE
PFA_BAUD:          ; ( -- )
  .dw EE_UBRRVAL
  .dw XT_FETCHE
  .dw XT_STOREE
