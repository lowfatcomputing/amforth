\ ansi terminal codes

\ needds ans94/ans.frt (u.r)

decimal

: ESC[ 27 emit [char] ] emit ;

\ some helper words: print a number *without*
\ leading space in decimal
: .n    base @ swap decimal 0 u.r base ! ;
: .;n   [char] ; emit .n ;
: ESC[  27 emit [char] [ emit ;

\ facility word set: make them ram based deferred
Rdefer at-xy
Rdefer page

\  position curser on terminal
:noname ( u1 u2 -- ) 
  1+ swap 1+ swap ESC[ .n .;n [char] H emit
; is at-xy

\ clear page
:noname ( -- ) 
  ESC[ ." 2J" 0 0 at-xy 
; is page
