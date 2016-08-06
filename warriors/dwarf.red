;assert CORESIZE % 4 == 0

ADD #4, 3   ; add 4 to our DAT
MOV 2, @2   ; move the DAT to location specified by the DAT
JMP -2      ; jump back to first instruction
            ; our DAT is here (undefined)
