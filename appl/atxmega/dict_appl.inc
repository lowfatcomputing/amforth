; this dictionary contains optional words
; they may be moved to the core dictionary if needed
#include "dict_minimum.inc"
#include "dict_compiler.inc"
#include "dict_wl.inc"
;#include "dict_mcu.inc"
;#include "dict_vm.inc"
#include "dict_interrupt.inc"

#include "words/d-2star.S"
#include "words/d-plus.S"
#include "words/d-minus.S"
#include "words/d-invert.S"
#include "words/d-equal.S"
#include "words/udot.S"
#include "words/udotr.S"
#include "words/dot-s.S"

#include "words/dotstring.S"
#include "words/squote.S"

#include "words/edefer.S"
#include "words/rdefer.S"
#include "words/is.S"

#include "words/applturnkey.S"

#include "words/fill.S"

#include "words/show-wordlist.S"
#include "words/words.S"

#include "words/1ms.S"
#include "words/2literal.S"
#include "device.inc"
