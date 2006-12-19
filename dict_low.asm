;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; header
;  +--1+x--++--2--+--2----0+x...--
;  | VOC   |  L  | XT  | PF      
;  +-------#-----+-----+----....--
; VOC (flags may be inverted to be flash friendly)
;       Bit
;         7 6 5 4-0
;         I U U Length
;    I = Immediate 
;    U = Unused
;    Length = length of word name (1..31)
;      Length number of bytes, filled to next cell
;  L
;    Link to previos Dictionary entry or zero for first entry
;  XT
;    Address of Executable Code
;  PF
;    Parameter Field (List of XT, Constant Value etc)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

.include "words/literal.asm"

.include "words/state.asm"
.include "words/base.asm"
.include "words/g_in.asm"
.include "words/sharptib.asm"
.include "words/tib.asm"
.include "words/pad.asm"
.include "words/hld.asm"

.include "words/dp.asm"
.include "words/head.asm"
.include "words/here.asm"
.include "words/allot.asm"
.include "words/comma.asm"

.include "words/decimal.asm"
.include "words/hex.asm"
.include "words/bl.asm"
.include "words/eheap.asm"
.include "words/heap.asm"
.include "words/turnkey.asm"
;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;.include "words/execute.asm"
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
.include "words/r_fetch.asm"
.include "words/negate.asm"
.include "words/slash.asm"
.include "words/mod.asm"
.include "words/abs.asm"
.include "words/min.asm"
.include "words/max.asm"
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
.include "words/cr.asm"
.include "words/space.asm"
.include "words/count.asm"
;;;;;;;;;;;;;;;;;;;;;;
.include "words/hold.asm"
.include "words/l_sharp.asm" ; <#
.include "words/sharp.asm"
.include "words/sharp_s.asm"
.include "words/sharp_g.asm" ; #>
.include "words/sign.asm"
.include "words/dot.asm"

.include "words/accept.asm"
.include "words/digit.asm"
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
.include "words/dodotstring.asm"
.include "words/dotstring.asm"
.include "words/itype.asm"
.include "words/type.asm"
.include "words/words.asm"
.include "words/tick.asm"
.include "words/brackettick.asm"
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
.include "words/handler.asm"
.include "words/catch.asm"
.include "words/throw.asm"
.include "words/if.asm"
.include "words/else.asm"
.include "words/then.asm"
.include "words/begin.asm"
.include "words/while.asm"
.include "words/repeat.asm"
.include "words/until.asm"
.include "words/again.asm"
.include "words/do.asm"
.include "words/loop.asm"
.include "words/plusloop.asm"
.include "words/case.asm"
.include "words/of.asm"
.include "words/endof.asm"
.include "words/endcase.asm"
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
.include "words/char.asm"
.include "words/number.asm"
.include "words/word.asm"
.include "words/find.asm"
.include "words/quit.asm"
.include "words/pause.asm"
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
.include "words/g_mark.asm"
.include "words/g_resolve.asm"
.include "words/l_mark.asm"
.include "words/l_resolve.asm"
.include "words/docreate.asm"
.include "words/create.asm"
.include "words/does.asm"
.include "words/colon.asm"
.include "words/semicolon.asm"
.include "words/forget.asm"
.include "words/rightbracket.asm"
.include "words/leftbracket.asm"
.include "words/variable.asm"
.include "words/constant.asm"
.include "words/user.asm"
.include "words/backslash.asm"
.include "words/lparenthesis.asm"
.include "words/postpone.asm"
.include "words/recurse.asm"
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
.include "words/sp0.asm"
.include "words/rp0.asm"
.include "words/depth.asm"
.include "words/idump.asm"
.include "words/dot-s.asm"
.include "words/interpret.asm"
.include "words/ver.asm"
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
.include "words/noop.asm"
