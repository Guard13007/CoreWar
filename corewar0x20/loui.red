;redcode-94
;name louie
;author loushou
;strategy bidirectional tiny bomber
;assert CORESIZE==8000

org init

init    spl dwnbot
upbot   mov 3, -1
       sub.ab #3, -1
       jmp upbot
       jmp 59
dwnbot  mov -1, 3
       add.ab #3, -1
       jmp dwnbot
