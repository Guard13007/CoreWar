;name Rabbit
;author Tangent <paul.liverman.iii@gmail.com>
;strategy Imp-stomper followed by duplicating self throughout memory.

org loop           ; start at loop label

     MOV #0 -1     ; Imp stomper
     JMP -1
     DAT 0, 0

loop MOV @ptr {5   ; MOV contents from relative address 5 (TODO change to end of program) to address pointed at by ptr
     DJN loop ptr  ; decrement pointer, jump to loop if ptr contents are non-zero (copy from tail to beginning)

     ADD ptr, #1   ; 
     SPL @ptr

     ; code goes here, we need to split to something and something
     ; duplicate myself first!
     ; goal, check if I'm okay, kill if I'm not

ptr  DAT.A -130          ; we're moving everything tail-first to -130 from home




;      DAT  #0
;start MOV #12 -1
;      MOV @-2 <5
;      DJN -1 -3
;      SPL @3
;      ADD #653 2
;      JMZ -5 -6
;      DAT  #833
