; the core dictionary contains most of
; the primitives, they need to be placed
; withing 2K distance to the inner interpreter
.include "dict_core.inc"

; some words that are needed but may be implemented
; in different ways for various controllers / bootloaders
.include "words/estore.asm"
.include "words/efetch.asm"

.include "words/istore.asm"
.include "words/ifetch.asm"
