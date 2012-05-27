\ *******************************************
\  defer operates in varios memory areas 
\  ( EEPROM, RAM, USER )
\ *******************************************

\ #include postpone.frt
\ #include body.frt

\ ****************************
\ generic words
\ some are commented out since they 
\ are part of the core system
\ ****************************
\ xt2 is the word associated to word xt1
\ : defer@ ( xt1 -- xt2 ) 
\    dup   ( -- xt xt)
\    >body ( -- xt pfa )
\    1+    ( -- xt 'xt-dodefer@ )
\    i@    ( -- xt xt-dodefer@ )
\    execute 
\ ;

: action-of
    state @
    if
	postpone ['] postpone defer@
    else
	' defer@
    then
; immediate

\ set the word xt1 to execute the word xt2
\ : defer! ( xt1 xt2 -- ) \ part of minimal
\    dup   ( -- xt1 xt2 xt2 )
\    >body ( -- xt1 xt2 pfa )
\    2 +   ( -- xt1 xt2 'xt-dodefer! )
\    @i    ( -- xt1 xt2 xt-dodefer! )
\    execute 
\ ;

\ : is ( x <name> -- ) \ part of minimal
\    state @   
\    if 
\	['] postpone defer!
\    else
\	' defer!
\    then
\ ; immediate 

\ ****************************
\ EEPROM defers
\ ****************************
: Edefer@ ( xt1 -- xt2 )
    >body @i @e
;

: Edefer! ( xt2 xt1 -- )
    >body @i !e
;

: Edefer ( "name" -- )
      create  
      edp  
      dup ,             \ save in dictionary
      ['] Edefer@ ,
      ['] Edefer! ,
      dup 1+ 1+ to edp  \ allot 1 cell in EEPROM
      ['] abort swap !e \ default action is abort
   does> ( i*x -- j*x ) 
      @i @e execute
; 

\ ***************************
\ USER defered 
\ **************************
: Udefer@ ( xt1 -- xt2 )
    >body @i up@ + @
;

: Udefer! ( xt2 xt1 -- )
    >body @i up@ + !
;


: Udefer ( u "name" -- )
      user
      ['] Udefer@ ,
      ['] Udefer! ,
   does> ( i*x -- j*x ) 
      @i up@ + @ execute 
;

\ ***************************
\ RAM defered
\ ***************************

: Rdefer@ ( xt1 -- xt2 )
    >body @i @
;

: Rdefer! ( xt2 xt1 -- )
    >body @i !
;

: Rdefer ( "name" -- )
      variable
      ['] Rdefer@ ,
      ['] Rdefer! ,
   does> ( i*x -- j*x ) 
      @i @ execute 
; 
