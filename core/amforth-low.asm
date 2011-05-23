;;;; avr forth
;;;;
;;;; GPL V2 (only)

.set pc_ = pc

.org $0000
  jmp_ PFA_COLD
.org pc_

.include "amforth-interpreter.asm"
.include "drivers/generic-isr.asm"

.set VE_HEAD = $0000
.set VE_ENVHEAD = $0000
; lower part of the dictionary
.include "dict_appl_core.inc"
.include "dict_appl.inc"

.set DPSTART = pc
.set flashlast = pc

.dseg
HERESTART:
.cseg
.include "amforth-eeprom.inc"
