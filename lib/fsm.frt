\ FSM routines, from a paper presented by J . Noble----------------
\ you can find the paper at http://www.forth.org/literature/noble.html
\ The fsm: word has been modified to correctly increment addresses by 
\ word, instead of byte. and to also use the i@ dictionary fetch word.
\ Written by Bernard Mentink

marker _fsm_

hex

variable mystate   

0 mystate !

\ dummy nop word for readability
: wide ;

\ perform word that executes vector
: perform 
	   i@ execute  ;  

\ Initialize the state variable.
: +fsm
	0 mystate ! ;


\ This word creates FSM transition tables
: fsm:   ( width -- )   
	create  
		,  ]   
	does>   (  col# adr -- ) 
    		swap over i@			\  -- adr col# width
        	mystate @ * +  2* 1+  +  	\ -- offset 
        	dup 1+ perform mystate ! perform  ;

\ ......... some test code .............. 
\ un-comment the code lines to test state changes dependant on input supplied
\ e.g 2 test_fsm, 0 test_fsm etc

\ : one ." one " ;
\ : two ." two " ;
\ : three ." three " ;
\ : four ." four " ;
\ : nop ;

\ 0 constant >0
\ 1 constant >1
\ 2 constant >2

\ a test state-machine table  
\ 4 wide fsm: test_fsm 
\ input:  |  0      |  1      |   2    |     3     |
\ state:  ---------------------------------------------
\    ( 0 )     nop >0    one >1   one >1     two >2
\    ( 1 )     four >1    one >1   nop >1     two >2
\    ( 2 )     nop >2    two >2   nop >2     nop >2 ;



