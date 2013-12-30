;;;; avr forth
;;;;
;;;; GPL V2 (only)

#include <avr/io.h>

.set pc_ , .
.org 0x0000

  jmp_ PFA_COLD
; .org pc_ ;; removed
.org pc_ ;; added
#include "drivers/generic-isr.S"
; lower part of the dictionary
#include "dict_appl.inc"

.set DPSTART, .

.org AMFORTH_RO_SEG
#include "amforth-interpreter.S"
#include "dict_appl_core.inc"

.set flashlast, .
;; FIXME: bring this back!
;.if (.>FLASHEND)
;  .error "*** Flash size exceeded, please edit your dict_appl_core file to use less space! Aborting."
;.endif

.section .data
; define a label for the 1st free ram address
HERESTART:
.section .eeprom
#include "amforth-eeprom.inc"
; 1st free address in EEPROM.
EDPSTART:
.section .text
