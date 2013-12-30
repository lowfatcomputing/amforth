; this dictionary contains optional words
; they may be moved to the core dictionary if needed
#include "dict_minimum.inc"
#include "words/d-2star.S"
#include "words/d-plus.S"
#include "words/d-minus.S"
#include "words/d-invert.S"
#include "words/udot.S"
#include "words/dot-s.S"

#include "words/dotstring.S"
#include "words/squote.S"

#include "words/words.S"

#include "words/edefer.S"
#include "words/rdefer.S"
#include "words/is.S"

#include "dict_compiler.inc"
#include "words/show-wordlist.S"
#include "dict_interrupt.inc"

; include some controller specific definitions
#include "device.inc"

#include "words/applturnkey.S"
#include "words/qmark.S"
#include "words/marker.S"
