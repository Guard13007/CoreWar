;redcode-94
;name monkeyparty1
;author @mrdooz
;assert CORESIZE==8000
;assert PSPACESIZE>0
;assert MAXCYCLES==80000
;assert MAXPROCESSES==8000
;assert MINDISTANCE==100

org         start

bomb_ofs    equ     15
num_bombs   equ     3
copy_ofs    equ     301

src         dat     #1
dest        dat     #1
count       dat     #1
bomb_count  dat     num_bombs

start

; copy self to cur+copy_ofs
           spl     bomber
           mov.ab  #bomb-src, src
           mov.ab  #(bomb+copy_ofs)-dest, dest
           mov.ab  #bomb-src, count
copy_loop
           mov.i   <src, <dest
           djn     copy_loop, count
           jmp     start + copy_ofs
bomber
           mov.i   bomb, @bomb     ; mov bomb to [bomb.b]
           sub.ab  #bomb_ofs, bomb
           jmp     bomber

; note, bomb must be last, because it's used in the copy loop
bomb        dat     #0, #0
