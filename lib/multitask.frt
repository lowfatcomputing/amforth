\ -------------------------------------------------------------------
\ Cooperative Multitasker based on 
\ Message-ID: <1187362648.046634.262200@o80g2000hse.googlegroups.com>
\ From:  Brad Eckert <nospaambrad1@tinyboot.com>
\ Newsgroups: comp.lang.forth
\ Subject: Re: Tiny OS based on byte-code interpreter
\ Date: Fri, 17 Aug 2007 07:57:28 -0700

\ TCB (task control block) structure, identical to user area
\ Offs_| _Name___ | __Description__________________________ |
\   0  | status   | xt of word that resumes this task       | <-- UP
\   2  | follower | address of the next task's status       |
\   4  | RP0      | initial return stack pointer            |
\   6  | SP0      | initial data stack pointer              |
\   8  | sp       | -> top of stack                         |
\  10  | handler  | catch/throw handler                     |
\ ... more user variables (mostly IO related)

\ please note that with amforth rp@ @ accesses another location 
\ than r@ due to hardware characteristics.

\ marker _multitask_

decimal

0 user status
2 user follower

:noname ( 'status1 -- 'status2 ) 
    cell+ @ dup @ 1+ >r 
;  constant pass

:noname  ( 'status1 -- )  
	up! sp @ sp! rp! 
; constant wake

\ switch to the next task in the list
: multitaskpause   ( -- )     
    rp@ sp@ sp ! follower @ dup @ 1+ >r 
; 

: stop         ( -- )     pass status ! pause ; \ sleep current task
: task-sleep   ( tid -- ) pass swap ! ;         \ sleep another task
: task-awake   ( tid -- ) wake swap ! ;         \ wake another task

: cell- negate cell+ negate ;

\ continue the code as a task in a predefined tcb
: activate ( tid -- )
   dup    6 + @ cell-
   over   4 + @ cell- ( -- tid sp rp )     \ point to RP0 SP0
   r> over 1+ !       ( save entry at rp ) \ skip all after ACTIVATE
      over  !         (  save rp at sp )   \ save stack context for WAKE
   over 8 + !         ( save sp in tos )
   task-awake 
;

\ task:     allocates stack space and creates the task control block
\ alsotask  appends the tcb to the (circular, existing) list of TCB
\ --------------------------------------
: task: ( C: rstacksize dstacksize usersize "name" -- ) ( R: -- f )
    create
    \ allocate user area
    here ,
    \ does not work currently
    \ s" /user" environment? 0= if $24 then +  allot
    $24 + allot 
    \ allocate stacks
    allot here ,    ( sp0 )
    allot here ,    ( rp0 )
    \ keep HERE away
    1 allot
;

: >tid  ( f -- tid )      @i ;
: >sp0  ( f -- sp0 )  1+  @i ;
: >rp0  ( f -- rp0 )  2 + @i ;
: >size ( f -- size ) dup >tid swap >rp0 1+ swap - ;


: task-init ( f -- )
  dup >tid over >size erase    \ -- f     clear RAM space from tid ... rp0+1
  dup >sp0 over >tid &6 + !    \ -- f     store sp0    in tid[6]
  dup >sp0 cell- over >tid &8 + !   \     store sp0--  in tid[8], tos
  dup >rp0 over >tid &4 + !    \ -- f     store rp0    in tid[4]
  $10      over >tid &12 + !   \ -- f     store base   in tid[12]
      >tid task-sleep          \ -- f     store 'pass' in tid[0]
;

\ stop multitasking
: single ( -- ) \ initialize the multitasker with the serial terminal
    ['] noop is pause
;

\ start multitasking
: multi ( -- )
    ['] multitaskpause is pause
;


\ initialize the multitasker with the current task only
: onlytask ( -- ) 
    wake status !   \ own status is running
    up@  follower ! \ point to myself
;


\ insert new task structure into task list
: alsotask      ( tid -- )
   ['] pause defer@ >r \ stop multitasking
   single
   follower @   ( -- tid f) 
   over         ( -- tid f tid )
   follower !   ( -- tid f )
   swap cell+   ( -- f tid-f )
   !
   r> is pause  \ restore multitasking
;


\ print all tasks with there id and status
: tlist ( -- )
    status ( -- tid ) \ starting value
    dup
    begin      ( -- tid1 ctid )
      dup u. ( -- tid1 ctid )
      dup @  ( -- tid1 ctid status )
      dup wake = if ."   running" drop else
          pass = if ."  sleeping" else
                    abort"   unknown" then
      then
\     dup 4 + @ ."   rp0=" dup u. cell- @ ."  TOR=" u.
\     dup 6 + @ ."   sp0=" dup u. cell- @ ."  TOS=" u.
\     dup 8 + @ ."    sp=" u.
      cr
      cell+ @ ( -- tid1 next-tid )
      over over =     ( -- f flag)
    until
    drop drop
    ." Multitasker is " 
    ['] pause defer@ ['] noop = if ." not " then
    ." running"
;
