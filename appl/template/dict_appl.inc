; this dictionary contains optional words
; they may be moved to the core dictionary if needed
.include "dict_minimum.inc"
.include "dict_compiler.inc"
.include "dict_usart.inc"

.include "words/d-2star.asm"
.include "words/d-plus.asm"
.include "words/d-minus.asm"
.include "words/d-invert.asm"
.include "words/udot.asm"
.include "words/dot-s.asm"

.include "words/dotstring.asm"
.include "words/squote.asm"

.include "words/words.asm"

.include "words/edefer.asm"
.include "words/rdefer.asm"
.include "words/is.asm"

.include "words/show-wordlist.asm"

; include some controller specific definitions
.include "device.inc"

; include locally defined words
.include "words/applturnkey.asm"
.include "words/qmark.asm"
