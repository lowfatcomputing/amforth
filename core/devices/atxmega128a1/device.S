.nolist
	#include "ATXmega128A1def.inc"
.list

.equ ramstart =  8192
.equ max_dict_addr = 0xF000 
.equ pclen = 3
.equ CELLSIZE = 2
; register name aliases
.equ SPL = CPU_SPL
.equ SPH = CPU_SPH
.equ SREG = CPU_SREG
.equ MCUSR = RST_STATUS

.macro readflashcell
	clr temp7
	lsl zl
	rol zh
	rol temp7
	out_ CPU_RAMPZ, temp7
	elpm @0, Z+
	elpm @1, Z+
.endmacro
.macro writeflashcell
	clr temp7
	lsl zl
	rol zh
	rol temp7
	out_ CPU_RAMPZ, temp7
.endmacro
.equ intvecsize = 2 ; please verify; flash size: 131072 bytes
.equ INTVECTORS = 10
.org 0x200

; controller data area, environment query mcu-info
mcu_info:
mcu_ramsize:
	.word 512
mcu_eepromsize:
	.word 512
mcu_maxdp:
	.word 4096 
mcu_numints:
	.word 29
mcu_name:
	.word 14
	.ascii "ATXMega 128 A1"
.set codestart=pc
