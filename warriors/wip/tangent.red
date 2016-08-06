;name Tangent
;author Tangent
;strategy Lots of traps and a small executing codebase that tries to stay alive.

;assert CORESIZE==8000
;assert PSPACESIZE>0
;assert MAXCYCLES==80000
;assert MAXPROCESSES==8000
;assert MINDISTANCE==100

org loop

; todo put imp gate here

DAT #0, #0

;start ;?

loop MUL ptr, #3
SPL 2
JMP 0 ; stay here
JMP loop

ptr DAT.A -130

;      ORG 1
;      DAT.F  #0        , #0
;      MOV.AB #12       , $-1
;      MOV.I  @-2       , <5
;      DJN.B  $-1       , $-3
;      SPL.B  @3        , $0
;      ADD.AB #653      , $2
;      JMZ.B  $-5       , $-6
;      DAT.F  #0        , #833
