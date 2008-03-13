; This is a template for an amforth project.
; The amforth system generated works on atmegas
; with fuse factory default settings. At least 
; for the ATmega16 
;
; The order of the entries must not be changed since
; it is very important that the settings are in the 
; right order
;
; first is to include the macros from the amforth
; directory 
.include "macros.asm"

; amforth needs two essential parameters
; cpu clock in hertz, 1MHz is factory default
.equ cpu_frequency = 8000000

; size of return stack in bytes
.equ rstacksize = 80

; initial baud rate of terminal
.equ baud_rate = 9600

  .equ HLDSIZE  = $10 ; 16 bit cellsize with binary representation
  .equ TIBSIZE  = $64 ; 80 characters is one line...
  .equ CELLSIZE = 2   ;
  .equ USERSIZE = 24  ; size of user area


; the application specific dictionary can
;   - not be included, set to 0 (zero)
;   - be included in the rww section: set to 1 (one)
;   - be included in the nrww (bootsector) area: set to 2 (two)
; this  dictionary can be quite large so putting
; it into the bootsector area (NRWW) does make sense for the bigger
; atmegas only (ATmega32 and up) only

.set dict_appl=1

; include the amforth device definition file. These
; files include the *def.inc from atmel internally.
.include "devices/atmega16.asm"

; change these settings only if you know what you do.
  .set heap = ramstart
  .set VE_HEAD = $0000

; include the whole source tree.
.include "amforth.asm"
