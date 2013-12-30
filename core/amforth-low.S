;;;; avr forth
;;;;
;;;; GPL V2 (only)

.set pc_, pc

.org 0x0000
  jmp_ PFA_COLD
.org pc_

#include "amforth-interpreter.asm"
#include "drivers/generic-isr.asm"

; lower part of the dictionary
#include "dict_appl_core.inc"
#include "dict_appl.inc"

.set DPSTART = pc
.set flashlast = pc

.data
HERESTART:
.section .eeprom
#include "amforth-eeprom.inc"
; 1st free address in EEPROM.
EDPSTART:

.text
