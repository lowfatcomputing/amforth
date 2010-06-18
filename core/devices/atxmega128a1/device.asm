; Partname:  AT90CAN128
; Built using part description XML file version 170
; generated automatically
.nolist
	.include "ATXmega128A1def.inc"
.list

.equ ramstart =  8192
.equ max_dict_addr = $F000 
.equ pclen = 3

; register name aliases
    .equ SPL = CPU_SPL
    .equ SPH = CPU_SPH
    .equ SREG = CPU_SREG
.macro jmp_
	jmp @0
.endmacro
.macro call_
	call @0
.endmacro
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
.org $200


mcustring:
	.dw 14
	.db "ATXMega 128 A1"
.set codestart=pc
