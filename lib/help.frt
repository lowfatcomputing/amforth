\ small online help system

\ usage
\  help <word>
\ prints the stack effects and a short description 

wordlist constant help-wl

: help
    bl word count
    help-wl search-wordlist
    if execute then
;

